import 'package:common_utils/common_utils.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/logic/login_info.dart';
import 'package:dk_net_work/view_models/services_locatar.dart';
import 'package:dk_net_work/view_models/user_info_view_model.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/cupertino.dart';

import '../../../common/slider_captcha_tool.dart';

enum LoginCheckError {
  mobileEmpty,
  keyEmpty,
  pswEmpty,
  inviteCodeEmpty,
  inviteCodeErr,
  pswNoSame,
  mobileNoSame,
  mobileNoError,
  passWordError,
  pass,
}

class LoginManager {
  static void signInUser(BuildContext context,
      {String mobile = "",
      String password = "",
      Function(int nextStep)? onSuccess,
      Function(String errorCode, String msg)? onFailure}) {
    SliderCaptchaTool.launchSliderCaptcha(context, mobile, (p) {
      if (p.$2 == true) {
        EasyLoading.show();
        signIn({"username": mobile, "password": password, "captcha_id": p.$3})
            .then((value) {
          value.ifSuccess((data) {
            int nextStep = data.saveMiYao ?? 0;
            if (!TextUtil.isEmpty(data.token)) {
              LoginInfo.instance!.saveAppToken(data.token ?? "").then((_) {
                final UserInfoViewModel userInfoModel =
                    serviceLocator<UserInfoViewModel>();
                userInfoModel.getAllUserInfo();
                onSuccess?.call(nextStep);
              });
            } else {
              onSuccess?.call(nextStep);
            }
          });
          value.ifFailure((e) {
            onFailure?.call(e.code ?? "", e.message);
          });
        });
      }
    });
  }
}
