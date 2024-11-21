import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class ModifySignInPwdWithOriginalPwdWidget extends StatefulWidget {
  const ModifySignInPwdWithOriginalPwdWidget({super.key});

  @override
  State<ModifySignInPwdWithOriginalPwdWidget> createState() =>
      _ModifySignInPwdWithOriginalPwdWidgetState();
}

class _ModifySignInPwdWithOriginalPwdWidgetState
    extends State<ModifySignInPwdWithOriginalPwdWidget> {
  TextEditingController originalPwdController = TextEditingController();
  TextEditingController newPwdController = TextEditingController();
  TextEditingController renewPwdController = TextEditingController();

  void confirmModifyPwd() {
    FocusScope.of(context).requestFocus(FocusNode());
    if (originalPwdController.text.isEmpty) {
      EasyLoading.showError("请填写原来的登录密码");
      return;
    } else if (newPwdController.text.isEmpty) {
      EasyLoading.showError("请填写新的登录密码");
      return;
    }
    if (renewPwdController.text.isEmpty) {
      EasyLoading.showError("请填写确认登录密码");
      return;
    }
    if (renewPwdController.text != newPwdController.text) {
      EasyLoading.showError("填写的新密码不一致");
      return;
    }
    EasyLoading.show();
    modifySignInPwd(
            pwdOrPk: originalPwdController.text,
            newPwd: newPwdController.text,
            renewPwd: renewPwdController.text)
        .then((value) {
      value.ifSuccess((data) {
        EasyLoading.showSuccess(data.msg ?? "");
        context.pop();
      });
      value.ifFailure((e) {
        EasyLoading.showError(e.message);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.w),
        child: Column(children: [
          RoundContainer(
            horizontal: 12.w,
            vertical: 16.h,
            child: Column(
              children: [
                DKInputField(
                  cursorColor: Colors.black,
                  edgeInsets: const EdgeInsets.only(left: 0),
                  isObscure: true,
                  backgroundColor: Colors.transparent,
                  prefixWidth: 70.w,
                  borderRadius: 0,
                  iconColor: AppTheme().wordSecondColor,
                  prefixLabel: "登录密码",
                  hintText: "请输入登录密码",
                  controller: originalPwdController,
                ),
                DKInputField(
                  cursorColor: Colors.black,
                  edgeInsets: const EdgeInsets.only(left: 0),
                  isObscure: true,
                  backgroundColor: Colors.transparent,
                  borderRadius: 0,
                  prefixWidth: 70.w,
                  iconColor: AppTheme().wordSecondColor,
                  prefixLabel: "新的密码",
                  hintText: "请输入新登录密码",
                  controller: newPwdController,
                ),
                DKInputField(
                  cursorColor: Colors.black,
                  edgeInsets: const EdgeInsets.only(left: 0),
                  isObscure: true,
                  backgroundColor: Colors.transparent,
                  borderRadius: 0,
                  prefixWidth: 70.w,
                  iconColor: AppTheme().wordSecondColor,
                  prefixLabel: "确认密码",
                  hintText: "请输入新登录密码",
                  controller: renewPwdController,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100.h,
          ),
          GradientButton(
              text: "完成修改",
              onPressed: (index) {
                confirmModifyPwd();
              }),
        ]),
      ),
    );
  }
}
