import 'package:dk_net_work/http_provider/rest_client_utils.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class ModifyPasswordWithPkWidget extends StatefulWidget {
  const ModifyPasswordWithPkWidget({super.key});

  @override
  State<ModifyPasswordWithPkWidget> createState() =>
      _ModifyPasswordWithPkWidgetState();
}

class _ModifyPasswordWithPkWidgetState
    extends State<ModifyPasswordWithPkWidget> {
  TextEditingController pkController = TextEditingController();
  TextEditingController newPwdController = TextEditingController();
  TextEditingController renewPwdController = TextEditingController();

  void confirmModifyPwd() {
    FocusScope.of(context).requestFocus(FocusNode());
    if (pkController.text.isEmpty) {
      EasyLoading.showError("请填写密钥");
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
            pwdOrPk: pkController.text,
            newPwd: newPwdController.text,
            renewPwd: renewPwdController.text,
            type: 1)
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
                  inputFormatters: RegexUtils.allowSecret(),
                  edgeInsets: const EdgeInsets.only(left: 0),
                  isObscure: false,
                  backgroundColor: Colors.transparent,
                  prefixWidth: 70.w,
                  borderRadius: 0,
                  prefixLabel: "密钥",
                  hintText: "请输入12位密钥",
                  controller: pkController,
                ),
                DKInputField(
                  cursorColor: Colors.black,
                  edgeInsets: const EdgeInsets.only(left: 0),
                  isObscure: true,
                  backgroundColor: Colors.transparent,
                  borderRadius: 0,
                  prefixWidth: 70.w,
                  prefixLabel: "新的密码",
                  hintText: "请输入新登录密码",
                  iconColor: AppTheme().wordSecondColor,
                  controller: newPwdController,
                ),
                DKInputField(
                  cursorColor: Colors.black,
                  edgeInsets: const EdgeInsets.only(left: 0),
                  isObscure: true,
                  backgroundColor: Colors.transparent,
                  borderRadius: 0,
                  prefixWidth: 70.w,
                  prefixLabel: "确认密码",
                  hintText: "请输入新登录密码",
                  iconColor: AppTheme().wordSecondColor,
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
