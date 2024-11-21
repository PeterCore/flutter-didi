import 'package:churn/l10n/l10n.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:dk_utils/utils/toast_utils.dart';
import 'package:flutter/material.dart';

import '../../../assets_tool/ui_assets.dart';
import '../../../components/input_field_types_widget.dart';
import '../../../components/zk_modify_signIn_psw_dialog.dart';
import '../../../router_config.dart';
import '../logic/login_manager.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  TextEditingController mobileController = TextEditingController();
  TextEditingController passWordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    passWordController.dispose();
    mobileController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppLocalImage(
              path: UIAssets.source!.waterBg,
              width: 162.w,
              height: 81.w,
            ),
            RoundContainer(
              horizontal: 24.w,
              vertical: 24.h,
              backgroundColor: Colors.white,
              child: Column(
                children: [
                  Text(context.l10n?.signIn ?? "",
                      style: AppStyle().titleSemibold_45(
                          color: AppTheme().colorTxtInvPrimary)),
                  SizedBox(
                    height: 15.h,
                  ),
                  MobileInputField(
                    controller: mobileController,
                  ),
                  // DKInputField(
                  //   inputFormatters: RegexUtils.allowMobile(),
                  //   prefixLabel: context.l10n?.mobile ?? "",
                  //   hintText: context.l10n?.inputMobile ?? "",
                  //   controller: mobileController,
                  // ),
                  SizedBox(
                    height: 10.h,
                  ),
                  PwdInputField(
                    controller: passWordController,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          pushPage(context, path: PagePath.signUpPage);
                        },
                        child: SizedBox(
                          height: 18.h,
                          child: Text(context.l10n?.goSignUp ?? "",
                              style: AppStyle().headlineRegular_26(
                                  color: AppTheme().colorAlter)),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          pushPage(context, path: PagePath.resetPswPage);
                        },
                        child: SizedBox(
                          height: 18.h,
                          child: Text(context.l10n?.forgetPsw ?? "",
                              style: AppStyle().headlineRegular_26(
                                  color: AppTheme().colorAlter)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 27.h,
                  ),
                  GradientButton(
                    text: context.l10n?.signIn ?? "",
                    onPressed: (index) {
                      FocusScope.of(context).requestFocus(FocusNode());
                      // login(
                      //         pd5: "ba8add8d463bea4aa1fd880f2d0b5668",
                      //         authCode: "string",
                      //         loginName: "18600000333")
                      //     .then((value) {
                      //   value.ifSuccess((data) {
                      //     getIMServerConfig().then((value) {
                      //       value.ifSuccess((data) {
                      //         DKSocketManager().initWithAddress(
                      //             address: data.ip ?? "",
                      //             port: "${data.port ?? ""}");
                      //         DKSocketManager().connect();
                      //       });
                      //       value.ifFailure((e) {
                      //         EasyLoading.showError(e.message);
                      //       });
                      //     });
                      //   });
                      // });

                      if (mobileController.text.isEmpty) {
                        ToastUtils.show(context.l10n?.inputMobile ?? "");
                        return;
                      }
                      if (passWordController.text.isEmpty) {
                        ToastUtils.show(context.l10n?.inputPassWord ?? "");
                        return;
                      }
                      if (passWordController.text.isNotEmpty) {
                        if (!RegexUtils.isVerifyPw(passWordController.text)) {
                          ToastUtils.show(
                              context.l10n?.inputPwFormatErr2 ?? "");
                          return;
                        }
                      }
                      LoginManager.signInUser(context,
                          mobile: mobileController.text,
                          password: passWordController.text,
                          onSuccess: (nextStep) {
                        EasyLoading.dismiss();
                        if (nextStep == 1) {
                          //进入主界面
                          replacePage(context, path: "/");
                        } else {}
                      }, onFailure: (code, msg) {
                        EasyLoading.dismiss();
                        if (code == "2") {
                          ZkModifySignInPswDialog.show(context,
                              onClick: (index) {
                            if (index == 0) {
                              pushPage(context, path: PagePath.resetPswPage);
                            }
                          });
                        } else {
                          EasyLoading.showError(msg);
                        }
                      });
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
