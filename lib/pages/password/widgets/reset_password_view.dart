import 'package:churn/components/input_field_types_widget.dart';
import 'package:churn/l10n/l10n.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:dk_utils/utils/toast_utils.dart';
import 'package:flutter/material.dart';

import '../../../assets_tool/ui_assets.dart';
import '../../../router_config.dart';
import '../logic/password_manager.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  TextEditingController mobileController = TextEditingController();
  TextEditingController resetMobileController = TextEditingController();
  TextEditingController privateKeysController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    mobileController.dispose();
    resetMobileController.dispose();
    privateKeysController.dispose();
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
                  Text(context.l10n?.resetSignPsw ?? "",
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
                    controller: resetMobileController,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  PkInputField(
                    controller: privateKeysController,
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
                  GradientButton(
                    text: context.l10n?.resetSignPsw ?? "",
                    onPressed: (index) {
                      if (mobileController.text.isEmpty ||
                          resetMobileController.text.isEmpty) {
                        ToastUtils.show(context.l10n?.inputMobile ?? "");
                        return;
                      } else if (mobileController.text !=
                          resetMobileController.text) {
                        ToastUtils.show(context.l10n?.mobileNoSame ?? "");
                        return;
                      } else if (privateKeysController.text.isEmpty) {
                        ToastUtils.show(context.l10n?.mobileNoSame ?? "");
                        return;
                      }
                      EasyLoading.show();
                      PasswordManager.getNewPassword(context,
                          mobile: mobileController.text,
                          pk: privateKeysController.text, onSuccess: (value) {
                        EasyLoading.dismiss();
                        pushPage(context,
                            path: PagePath.getNewPasswordPage,
                            ext: {"pk": value});
                      }, onFailure: (code, msg) {
                        EasyLoading.showError(msg);
                      });
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
}
