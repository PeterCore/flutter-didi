import 'package:churn/l10n/l10n.dart';
import 'package:churn/pages/password/logic/password_manager.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class PayPasswordWidget extends StatefulWidget {
  const PayPasswordWidget({super.key});

  @override
  State<PayPasswordWidget> createState() => _PayPasswordWidgetState();
}

class _PayPasswordWidgetState extends State<PayPasswordWidget> {
  final controller = TextEditingController();
  final focusNode = FocusNode();
  String pin1 = "";
  String pin2 = "";

  @override
  void initState() {
    // TODO: implement initState
    focusNode.requestFocus();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const length = 6;
    final borderColor = AppTheme().wordPrimaryColor;
    const errorColor = Color.fromRGBO(255, 234, 238, 1);
    final defaultPinTheme = PinTheme(
      width: 48.w,
      height: 48.w,
      textStyle: TextStyle(
        fontSize: 26.sp,
        height: 1.1,
        color: AppTheme().wordPrimaryColor,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: borderColor, width: 0.5),
      ),
    );

    return Column(
      children: [
        SizedBox(
          height: 22.h,
        ),
        Text(
          pin1.isEmpty
              ? context.l10n?.inputPayPswTitle1 ?? ""
              : context.l10n?.inputPayPswTitle2 ?? "",
          style: TextStyle(
              color: AppTheme().wordPrimaryColor,
              fontWeight: FontWeight.w400,
              fontSize: 18.sp,
              height: 1.3),
        ),
        SizedBox(
          height: 27.h,
        ),
        Pinput(
          length: length,
          controller: controller,
          focusNode: focusNode,
          obscureText: true,
          defaultPinTheme: defaultPinTheme,
          onCompleted: (pin) {
            if (pin1.isEmpty) {
              pin1 = pin;
              controller.clear();
              setState(() {});
            } else if (pin1.isNotEmpty) {
              if (pin1 != pin) {
                showCustomDialog(
                  context: context,
                  title: '安全提示',
                  content: '两次密码输入不正确，请重新输入！',
                  onConfirm: () {
                    // 确定按钮的处理逻辑
                    pin1 = "";
                    setState(() {});
                    controller.clear();
                    Navigator.of(context).pop();
                  },
                );
              } else {
                PasswordManager.settingPayPsw(context,
                    password: pin1,
                    rePassword: pin1, onComplete: (success, msg) {
                  if (success) {
                    showCustomDialog(
                      context: context,
                      title: '提示',
                      content: msg,
                      onConfirm: () {
                        // 确定按钮的处理逻辑
                        pin1 = "";
                        setState(() {});
                        controller.clear();
                        Navigator.of(context).pop();
                        context.pop();
                      },
                    );
                  } else {
                    pin1 = "";
                    setState(() {});
                    controller.clear();
                    EasyLoading.showError(msg);
                  }
                });
              }
            }
          },
          focusedPinTheme: defaultPinTheme.copyWith(
            width: 48.w,
            height: 48.w,
            decoration: defaultPinTheme.decoration!.copyWith(
              border: Border.all(color: borderColor),
            ),
          ),
          errorPinTheme: defaultPinTheme.copyWith(
            decoration: BoxDecoration(
              color: errorColor,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    );
  }
}
