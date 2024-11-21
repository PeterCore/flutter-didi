import 'dart:math';

import 'package:dk_utils/components/app_common_widget.dart';
import 'package:dk_utils/components/button/app_color_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:dk_utils/vendor/slider/src/client_verify/slider_captcha.dart';
import 'package:flutter/material.dart';

class SliderCaptchaDialog extends StatefulWidget {
  const SliderCaptchaDialog(
      {super.key,
      required this.onConfirm,
      this.onClose,
      this.imageVerifyTitle = "图形验证",
      this.imageVerifySlideTip1 = "拖动下方滑块完成拼图",
      this.imageVerifySlideTip2 = "拖动左边滑块完成上方拼图",
      this.refreshTitle = "刷新",
      this.closeTitle = "关闭",
      this.answerX = 0,
      this.answerY = 0,
      this.onRefresh,
      required this.isRefreshing});
  final String imageVerifyTitle;
  final String imageVerifySlideTip1;
  final String imageVerifySlideTip2;
  final String closeTitle;
  final String refreshTitle;
  final Function()? onClose;
  final Function(bool value, double offset) onConfirm;
  final Function()? onRefresh;
  final double answerX;
  final double answerY;
  final bool isRefreshing;

  @override
  State<SliderCaptchaDialog> createState() => _SliderCaptchaDialogState();
}

class _SliderCaptchaDialogState extends State<SliderCaptchaDialog> {
  final SliderController _controller = SliderController();
  ValueNotifier<double> height = ValueNotifier<double>(0);

  final AssetImage image1 = const AssetImage(
      "assets/images/slider1/slider_01.png",
      package: "dk_utils");
  final AssetImage image2 =
      const AssetImage("packages/dk_utils/assets/images/slider1/slider_02.png");
  final AssetImage image3 =
      const AssetImage("packages/dk_utils/assets/images/slider1/slider_03.png");
  final AssetImage image4 =
      const AssetImage("packages/dk_utils/assets/images/slider1/slider_04.png");
  final AssetImage image5 =
      const AssetImage("packages/dk_utils/assets/images/slider1/slider_05.png");

  @override
  Widget build(BuildContext context) {
    precacheImage(image1, context);
    precacheImage(image2, context);
    precacheImage(image3, context);
    precacheImage(image4, context);
    precacheImage(image5, context);
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width - 40,
          child: Card(
            clipBehavior: Clip.antiAlias,
            color: AppTheme().roundContainerColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15, right: 15, top: 15, bottom: 15),
              child: Column(
                children: [
                  Text(
                    widget.imageVerifyTitle,
                    style: TextStyle(
                        fontSize: 20,
                        height: 1.4,
                        fontWeight: FontWeight.w600,
                        color: AppTheme().colorTxtInvPrimary),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Text(
                    widget.imageVerifySlideTip1,
                    style: TextStyle(
                        fontSize: 16,
                        height: 1.4,
                        fontWeight: FontWeight.w400,
                        color: AppTheme().wordSecondColor),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  widget.isRefreshing == true
                      ? ValueListenableBuilder<double>(
                          builder: (context, value, _) {
                            return Container(
                              height: value,
                              color: AppTheme().inputBackgroundColor,
                              child: Center(
                                child: CircularProgressIndicator(
                                  color: AppTheme().themeBackGroundColor,
                                ),
                              ),
                            );
                          },
                          valueListenable: height,
                        )
                      : MeasurableWidget(
                          onChange: (Size size) {
                            height.value = size.height;
                          },
                          child: SliderCaptcha(
                              answerX: widget.answerX,
                              answerY: widget.answerY,
                              controller: _controller,
                              title: widget.imageVerifySlideTip2,
                              image: Image(
                                image: _imgData(),
                                fit: BoxFit.fitWidth,
                                gaplessPlayback: true,
                              ),
                              imageToBarPadding: 14,
                              captchaSize: 50,
                              borderImager: AppTheme().radiusM,
                              titleStyle: TextStyle(
                                  fontSize: 13,
                                  height: 1,
                                  fontWeight: FontWeight.w300,
                                  color: AppTheme().wordPrimaryColor),
                              colorBar: AppTheme().inputBackgroundColor,
                              colorCaptChar: AppTheme().wordPrimaryColor,
                              icon: const AppLocalImage(
                                path:
                                    "packages/dk_utils/assets/images/slider1/slider_btn.png",
                                width: 50,
                                height: 50,
                              ),
                              onConfirm: (success, offset) => Future.delayed(
                                          const Duration(milliseconds: 200))
                                      .then(
                                    (value) {
                                      if (success) {
                                        //Get.back();
                                        widget.onConfirm(success, offset);
                                      } else {
                                        _controller.create();
                                        widget.onConfirm(success, offset);
                                      }
                                    },
                                  )),
                        ),
                  const SizedBox(
                    height: 12,
                  ),
                  _doubleButton()
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  _imgData() {
    AssetImage image = image1;
    double gl = Random().nextDouble(); // 生成0.0到1.0之间的随机浮点数
    if (gl <= 0.2) {
      image = image1;
    }
    if (gl > 0.2 && gl <= 0.4) {
      image = image2;
    }
    if (gl > 0.4 && gl <= 0.6) {
      image = image3;
    }
    if (gl > 0.6 && gl <= 0.8) {
      image = image4;
    }
    if (gl > 0.8 && gl <= 1) {
      image = image5;
    }
    return image;
  }

  _doubleButton() {
    return AppRow(
      height: 33,
      children: [
        Expanded(
          child: AppColorButton(
            title: widget.closeTitle,
            margin: EdgeInsets.zero,
            width: double.infinity,
            height: double.infinity,
            textStyle: TextStyle(
                fontSize: 14,
                height: 1,
                fontWeight: FontWeight.w300,
                color: AppTheme().wordPrimaryColor),
            bgColor: Colors.transparent,
            onClick: () {
              // Get.back();
              widget.onClose?.call();
            },
          ),
        ),
        Container(
          width: 0.5.h,
          margin: EdgeInsets.symmetric(vertical: 9),
          color: AppTheme().colorBorderRegular,
          height: 33,
        ),
        Expanded(
            child: AppColorButton(
          title: widget.refreshTitle,
          margin: EdgeInsets.zero,
          width: double.infinity,
          height: double.infinity,
          textStyle: TextStyle(
              fontSize: 14,
              height: 1,
              fontWeight: FontWeight.w300,
              color: AppTheme().colorAlter),
          bgColor: Colors.transparent,
          onClick: () {
            widget.onRefresh?.call();
            // _controller.create();
            // setState(() {
            //   _imgData();
            // });
          },
        ))
      ],
    );
  }
}
