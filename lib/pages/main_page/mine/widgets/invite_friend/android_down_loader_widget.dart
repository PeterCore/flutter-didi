// import 'dart:html' as html; // For web
import 'package:dk_net_work/models/invite_friend_config_model.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../assets_tool/ui_assets.dart';

class AndroidDownLoaderWidget extends StatefulWidget {
  const AndroidDownLoaderWidget({super.key, this.configDesc});
  final String? configDesc;
  @override
  State<AndroidDownLoaderWidget> createState() =>
      _AndroidDownLoaderWidgetState();
}

class _AndroidDownLoaderWidgetState extends State<AndroidDownLoaderWidget> {
  // final GlobalKey<ScreenShotState> screenShotGlobalKey = GlobalKey();
  ScreenshotController screenshotController = ScreenshotController();

  InviteFriendConfigModel? config;
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {
          config = inviteFriendConfigModelFromJson(widget.configDesc ?? "");
          int i = 0;
        });
      }
    });

    super.initState();
  }

  // Save image for iOS and Android
  Future<void> _saveImageToStorage(Uint8List image) async {
    try {
      final result = await ImageGallerySaverPlus.saveImage(image);
    } catch (e) {
      print('Error saving image: $e');
    }
  }

  // Save image for Web
  // void _saveImageForWeb(Uint8List image) {
  //   final file = XFile.fromData(image);
  //   html.AnchorElement anchorElement = html.AnchorElement(href: file.path)
  //     ..setAttribute("download", "saved_image.png")
  //     ..click();
  // }

  @override
  Widget build(BuildContext context) {
    final qrCode = QrCode(
      8,
      QrErrorCorrectLevel.H,
    )..addData(config?.logo ?? "");
    QrImage qrImage = QrImage(qrCode);
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 200.h, horizontal: 24.w),
        child: Column(
          children: [
            Screenshot(
              controller: screenshotController,
              child: MeasurableWidget(
                onChange: (Size size) {},
                child: RoundContainer(
                  backgroundColor: AppTheme().themeBackGroundColor,
                  vertical: 0,
                  child: Column(
                    children: [
                      AppLocalImage(
                        path: UIAssets.source!.icandroidTop,
                        height: 44.h,
                        width: 241.w,
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 83.w),
                        child: RoundContainer(
                          vertical: 8.h,
                          horizontal: 16.w,
                          backgroundColor: Colors.white,
                          child: Center(
                            child: Text(config?.invicode ?? "",
                                style: TextStyle(
                                    color: AppTheme().wordPrimaryColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                    height: 1.2)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 68.w),
                        child: RoundContainer(
                          vertical: 6.w,
                          horizontal: 6.w,
                          child: PrettyQrView(
                            qrImage: qrImage,
                            decoration: const PrettyQrDecoration(
                                background: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text("二维码更新编号 ${config?.tuihaomaid ?? ""} ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              height: 1.2)),
                      SizedBox(
                        height: 32.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 36.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                    vertical: 12.h,
                    horizontal: 12.w,
                    textColor: AppTheme().themeBackGroundColor,
                    borderColor: AppTheme().themeBackGroundColor,
                    radius: 35,
                    text: "复制邀请码",
                    imagePath: UIAssets.source!.icicc,
                    onPressed: () {
                      Clipboard.setData(
                          ClipboardData(text: config?.invicode ?? ""));
                      EasyLoading.showSuccess("已复制");
                    }),
                const Spacer(),
                CustomButton(
                    vertical: 12.h,
                    horizontal: 12.w,
                    textColor: Colors.white,
                    backgroundColor: AppTheme().themeBackGroundColor,
                    radius: 35,
                    text: "保存二维码",
                    imagePath: UIAssets.source!.icqrd,
                    onPressed: () {
                      screenshotController
                          .capture(delay: const Duration(milliseconds: 10))
                          .then((capturedImage) async {
                        if (capturedImage != null) {
                          _saveImageToStorage(capturedImage!);

                          // if (kIsWeb) {
                          //   // _saveImageForWeb(capturedImage!);
                          // } else {
                          //   _saveImageToStorage(capturedImage!);
                          // }
                          // final fileSave = FileDownLoadImpl();
                          // fileSave.saveFile(
                          //   capturedImage.toList(),
                          //   "${const Uuid().v4()}.png",
                          //   mimeType: "application/png",
                          // );
                          // EasyLoading.showSuccess("已保存");
                        }
                      }).catchError((onError) {
                        print(onError);
                      });
                    }),
              ],
            ),
            SizedBox(height: 16.h),
            Text(config?.yaoqinconte ?? "",
                style: TextStyle(
                    color: AppTheme().wordPrimaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    height: 1.2)),
          ],
        ),
      ),
    );
  }
}
