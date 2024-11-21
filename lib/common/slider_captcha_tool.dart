import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/logic/common_config.dart';
import 'package:dk_net_work/models/captcha_config_model.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:dk_utils/vendor/slider/slider_captach_dialog.dart';
import 'package:flutter/material.dart';

class SliderCaptchaTool extends StatefulWidget {
  const SliderCaptchaTool({super.key, required this.userName, this.onComplete});
  final String userName;
  final Function(
          (bool isLaunch, bool success, String captchaId, String errorMsg) p)?
      onComplete;
  @override
  State<SliderCaptchaTool> createState() => _SliderCaptchaToolState();

  static launchSliderCaptcha(
      BuildContext context,
      String userName,
      Function(
              (
                bool isLaunch,
                bool success,
                String captchaId,
                String errorMsg
              ) p)?
          onComplete) {
    bool isLaunchSlider = CommonConfigManager.instance.captchaSwitch == 1;
    if (isLaunchSlider) {
      DKDialog.show(
          context,
          type: PopupAnimationType.fade,
          Center(
              child: SliderCaptchaTool(
            userName: userName,
            onComplete: onComplete,
          )));
    } else {
      onComplete?.call((false, true, "", ""));
    }
  }
}

class _SliderCaptchaToolState extends State<SliderCaptchaTool> {
  bool isRefreshing = true;

  CaptchaConfigModel? config;

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      fetchSliderConfig();
    });
    super.initState();
  }

  void fetchSliderConfig() {
    getCaptchaConfig().then((value) {
      value.ifSuccess((data) {
        config = data;
        if (mounted) {
          setState(() {
            isRefreshing = false;
          });
        }
      });
      value.ifFailure((e) {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliderCaptchaDialog(
      answerX: (config?.data?.x ?? 0),
      answerY: (config?.data?.y ?? 0),
      onClose: () {
        DKDialog.hide(context);
      },
      onRefresh: () {
        setState(() {
          isRefreshing = true;
          config = null;
        });
        fetchSliderConfig();
      },
      onConfirm: (bool value, double offset) {
        if (value) {
          String captchaId = config?.data?.captchaId ?? "";
          verifyCaptchaConfig(
                  userName: widget.userName,
                  captchaId: config?.data?.captchaId ?? "",
                  x: offset,
                  y: (config?.data?.y ?? 0))
              .then((value) {
            value.ifSuccess((data) {
              bool success = data.status == 0;
              widget.onComplete?.call((true, success, captchaId, ""));
              DKDialog.hide(context);
            });
            value.ifFailure((e) {
              widget.onComplete?.call((true, false, "", e.message));
              DKDialog.hide(context);
              EasyLoading.showError(e.message);
            });
          });
        }
      },
      isRefreshing: isRefreshing,
    );
  }
}
