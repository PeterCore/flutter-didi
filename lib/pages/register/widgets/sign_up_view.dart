import 'package:churn/assets_tool/ui_assets.dart';
import 'package:churn/components/input_field_types_widget.dart';
import 'package:churn/l10n/l10n.dart';
import 'package:dk_utils/components/app_common_widget.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:dk_utils/utils/toast_utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../logic/register_manager.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController mobileController = TextEditingController();
  TextEditingController confirmMobileController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  TextEditingController confirmPassWordController = TextEditingController();
  TextEditingController codeController = TextEditingController();

  bool _isAgree = false;

  @override
  void dispose() {
    // TODO: implement dispose
    mobileController.dispose();
    confirmMobileController.dispose();
    passWordController.dispose();
    confirmPassWordController.dispose();
    codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          left: 15.w,
          right: 15.w,
        ),
        child: Column(
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
                  Text(context.l10n?.signUp ?? "",
                      style: AppStyle().titleSemibold_45(
                          color: AppTheme().colorTxtInvPrimary)),
                  SizedBox(
                    height: 15.h,
                  ),
                  MobileInputField(
                    controller: mobileController,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  MobileInputField(
                    controller: confirmMobileController,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  PwdInputField(
                    controller: passWordController,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  PwdInputField(
                    controller: confirmPassWordController,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  InviteInputField(
                    controller: codeController,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.pop();
                        },
                        child: SizedBox(
                          height: 18,
                          child: Text(context.l10n?.goBackSignIn ?? "",
                              style: AppStyle().headlineRegular_26(
                                  color: AppTheme().colorAlter)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  _bottomWidget(),
                  SizedBox(
                    height: 10.h,
                  ),
                  GradientButton(
                    text: context.l10n?.signUp ?? "",
                    onPressed: (index) {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (RegisterManager.verifyRegister(context,
                          mobileNo: mobileController.text,
                          confirmMobileNo: confirmMobileController.text,
                          password: passWordController.text,
                          confirmPassword: confirmPassWordController.text,
                          inviteCode: codeController.text)) {
                        if (!_isAgree) {
                          ToastUtils.show(context.l10n?.inputProtocol ?? "");
                          return;
                        }
                        RegisterManager.register(context,
                            phone: mobileController.text,
                            password: passWordController.text,
                            inviteCode: codeController.text);
                      }
                    },
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _bottomWidget() {
    return AppRow(
      margin: EdgeInsets.symmetric(vertical: 7.h),
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppLocalImage(
          onTap: () {
            setState(() {
              _isAgree = !_isAgree;
            });
          },
          path: _isAgree ? UIAssets.source!.chYes : UIAssets.source!.chNo,
          width: 15.w,
        ),
        SizedBox(
          width: 6.w,
        ),
        RichText(
            text: TextSpan(
          text: "",
          style: AppStyle()
              .headlineRegular_26(color: AppTheme().colorTxtDefPrimary),
          children: <TextSpan>[
            TextSpan(
              style: AppStyle()
                  .headlineRegular_26(color: AppTheme().colorTxtInvPrimary),
              text: context.l10n?.protocolPrefix ?? "",
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  _isAgree = !_isAgree;
                },
            ),
            TextSpan(
              style:
                  AppStyle().headlineRegular_26(color: AppTheme().colorAlter),
              text: context.l10n?.userProtocol ?? "",
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
            TextSpan(
              style: AppStyle()
                  .headlineRegular_28(color: AppTheme().colorTxtInvPrimary),
              text: context.l10n?.and ?? "",
            ),
            TextSpan(
              style:
                  AppStyle().headlineRegular_28(color: AppTheme().colorAlter),
              text: context.l10n?.privacyProtocol ?? "",
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
          ],
        ))
      ],
    );
  }
}
