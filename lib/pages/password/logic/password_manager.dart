import 'package:dk_net_work/http_provider/rest_client_utils.dart';
import 'package:dk_net_work/view_models/services_locatar.dart';
import 'package:dk_net_work/view_models/user_info_view_model.dart';
import 'package:flutter/cupertino.dart';

import '../../../common/slider_captcha_tool.dart';

class PasswordManager {
  static void settingPayPsw(BuildContext context,
      {String password = "",
      String rePassword = "",
      Function(
        bool success,
        String msg,
      )? onComplete}) {
    final UserInfoViewModel userInfoViewModel =
        serviceLocator<UserInfoViewModel>();
    userInfoViewModel.setPayPsw(
        newpass: password,
        renewpass: rePassword,
        onComplete: (success, msg) {
          if (success) {
            userInfoViewModel.updatePayStatus(status: 1);
            userInfoViewModel.updateNewPayStatus(status: 1);
          }
          onComplete?.call(success, msg);
        });
  }

  static void getNewPassword(BuildContext context,
      {String mobile = "",
      String pk = '',
      Function(String tempPassword)? onSuccess,
      Function(String errorCode, String msg)? onFailure}) {
    SliderCaptchaTool.launchSliderCaptcha(context, mobile, (p) {
      if (p.$2 == true) {
        final params = {
          "username": mobile, //手机号码
          "mobile": mobile, //确认号码
          "code": "", //短信验证码
          "captcha_id": p.$3, //图形验证码
          "ckey": "ths.n_ckey", //图形验证码令牌
          "miyao": pk,
        };
        forgetPsw(params).then((value) {
          value.ifSuccess((data) {
            onSuccess?.call(data.mima ?? "");
          });
          value.ifFailure((e) {
            onFailure?.call(e.code ?? "", e.message);
          });
        });
      }
    });
  }
}
