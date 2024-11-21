import 'package:churn/l10n/l10n.dart';
import 'package:dk_net_work/http_provider/rest_client_utils.dart';
import 'package:dk_net_work/logic/login_info.dart';
import 'package:dk_net_work/view_models/services_locatar.dart';
import 'package:dk_net_work/view_models/user_info_view_model.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:dk_utils/utils/toast_utils.dart';
import 'package:flutter/cupertino.dart';

import '../../../common/slider_captcha_tool.dart';
import '../../../router_config.dart';
import '../../login/logic/login_manager.dart';

class RegisterManager {
  static LoginCheckError checkRegisterError({
    String mobileNo = '',
    String confirmMobileNo = '',
    String password = '',
    String confirmPassword = '',
    String inviteCode = '',
  }) {
    if (mobileNo.isEmpty) {
      return LoginCheckError.mobileEmpty;
    } else {
      if (!RegexUtils.isVerifyTel(mobileNo)) {
        return LoginCheckError.mobileNoError;
      }
    }
    if (confirmMobileNo.isEmpty) {
      return LoginCheckError.mobileEmpty;
    } else {
      if (!RegexUtils.isVerifyTel(confirmMobileNo)) {
        return LoginCheckError.mobileNoError;
      }
    }
    if (mobileNo != confirmMobileNo) {
      return LoginCheckError.mobileNoSame;
    }
    if (password.isEmpty) {
      return LoginCheckError.pswEmpty;
    } else {
      if (!RegexUtils.isVerifyPw(password)) {
        return LoginCheckError.passWordError;
      }
    }
    if (confirmPassword.isEmpty) {
      return LoginCheckError.pswEmpty;
    } else {
      if (!RegexUtils.isVerifyPw(confirmPassword)) {
        return LoginCheckError.passWordError;
      }
    }
    if (password != confirmPassword) {
      return LoginCheckError.pswNoSame;
    }
    if (inviteCode.isEmpty) {
      return LoginCheckError.inviteCodeEmpty;
    } else {
      if (inviteCode.length < 8) {
        return LoginCheckError.inviteCodeErr;
      }
    }

    return LoginCheckError.pass;
  }

  static bool verifyRegister(
    BuildContext context, {
    String mobileNo = "",
    String confirmMobileNo = "",
    String password = "",
    String confirmPassword = "",
    String inviteCode = "",
  }) {
    // 先暂时//
    LoginCheckError error = checkRegisterError(
        mobileNo: mobileNo,
        confirmMobileNo: confirmMobileNo,
        password: password,
        confirmPassword: confirmPassword,
        inviteCode: inviteCode);
    bool pass = false;
    String errorToast = '';
    switch (error) {
      case LoginCheckError.mobileEmpty:
        errorToast = context.l10n?.inputMobile ?? "";
        break;
      case LoginCheckError.keyEmpty:
        break;
      case LoginCheckError.pswEmpty:
        errorToast = context.l10n?.inputPassWord ?? "";
        break;
      case LoginCheckError.inviteCodeEmpty:
        errorToast = context.l10n?.inviteCode ?? "";
        break;
      case LoginCheckError.pswNoSame:
        errorToast = context.l10n?.pswNoSame ?? "";
        break;
      case LoginCheckError.mobileNoSame:
        errorToast = context.l10n?.mobileNoSame ?? "";
        break;
      case LoginCheckError.pass:
        pass = true;
        break;
      case LoginCheckError.mobileNoError:
        errorToast = context.l10n?.inputRightMobile ?? "";
        break;
      case LoginCheckError.passWordError:
        errorToast = context.l10n?.inputPwFormatErr2 ?? "";
        break;
      case LoginCheckError.inviteCodeErr:
        errorToast = "请输入8位邀请码";
        break;
      default:
        pass = true;
        break;
    }
    if (pass == false) {
      ToastUtils.show(errorToast);
    }
    return pass;
  }

  static void register(BuildContext context,
      {String phone = "", String password = '', String inviteCode = ''}) {
    SliderCaptchaTool.launchSliderCaptcha(context, phone, (p) {
      if (p.$2 == true) {
        EasyLoading.show();
        Map<String, dynamic> params = {
          "phone": phone, //手机号
          "password": password, //密码
          "captcha_id": p.$3, //图形验证码
          "ckey": "n_ckey", //图形验证码令牌
          "yaoqingren": inviteCode, //邀请码
          "code": "", //短信验证码
        };
        registerUser(params).then((value) {
          EasyLoading.dismiss();
          value.ifSuccess((data) {
            LoginInfo.instance?.saveTempAppToken(data.token ?? "");
            final UserInfoViewModel userInfoViewModel =
                serviceLocator<UserInfoViewModel>();
            userInfoViewModel.getAllUserInfo();
            pushPage(context,
                path: PagePath.pkInfoPage, ext: {"safeKeys": data.miyao});
          });
          value.ifFailure((e) {
            EasyLoading.showError(e.message);
          });
        });
      }
    });

    // Map<String, dynamic> params = {
    //   "phone": mobileController.text, //手机号
    //   "password": passWordController.text, //密码
    //   "captcha": "", //图形验证码
    //   "ckey": "n_ckey", //图形验证码令牌
    //   "yaoqingren": codeController.text, //邀请码
    //   "code": "", //短信验证码
    // };
  }
}
