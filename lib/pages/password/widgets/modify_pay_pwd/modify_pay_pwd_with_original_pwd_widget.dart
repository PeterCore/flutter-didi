import 'package:dk_net_work/http_provider/rest_client_utils.dart';
import 'package:dk_utils/dk_lib.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ModifyPayPwdWithOriginalPwdWidget extends StatefulWidget {
  const ModifyPayPwdWithOriginalPwdWidget({super.key});

  @override
  State<ModifyPayPwdWithOriginalPwdWidget> createState() =>
      _ModifyPayPwdWithOriginalPwdWidgetState();
}

class _ModifyPayPwdWithOriginalPwdWidgetState
    extends State<ModifyPayPwdWithOriginalPwdWidget> {
  String originalPin = "";
  String newPin = "";
  final focusNode = FocusNode();
  final controller = TextEditingController();

  void modifyPwd({String newPassword = "", String verifyCode = ""}) {
    modifyPayPsw(
            pass: verifyCode,
            type: 0,
            newpass: newPassword,
            renewpass: newPassword)
        .then((value) {
      value.ifSuccess((data) {
        showCustomDialog(
          context: context,
          title: '提示',
          content: data.msg ?? "",
          onConfirm: () {
            // 确定按钮的处理逻辑
            newPin = "";
            originalPin = "";
            setState(() {
              controller.clear();
              Navigator.of(context).pop();
              context.pop();
            });
          },
        );
      });
      value.ifFailure((e) {
        newPin = "";
        originalPin = "";
        setState(() {
          controller.clear();
          EasyLoading.showError(e.message);
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    const length = 6;
    const borderColor = Color(0xFF3ABDFE);
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
    String title = "";
    if (originalPin.isEmpty) {
      title = "请输入原支付密码";
    } else if (originalPin.isNotEmpty && newPin.isEmpty) {
      title = "请输入新支付密码";
    } else if (originalPin.isNotEmpty && newPin.isNotEmpty) {
      title = "请再次输入支付密码";
    }

    return Column(
      children: [
        SizedBox(
          height: 53.h,
        ),
        Text(
          title,
          style: TextStyle(
              color: AppTheme().wordPrimaryColor,
              fontWeight: FontWeight.w400,
              fontSize: 18.sp,
              height: 1.3),
        ),
        SizedBox(
          height: 40.h,
        ),
        Pinput(
          length: length,
          controller: controller,
          focusNode: focusNode,
          obscureText: true,
          defaultPinTheme: defaultPinTheme,
          onCompleted: (pin) {
            if (originalPin.isEmpty) {
              originalPin = pin;
              controller.clear();
              setState(() {});
            } else if (newPin.isEmpty) {
              newPin = pin;
              controller.clear();
              setState(() {});
            } else {
              if (newPin != pin) {
                showCustomDialog(
                  context: context,
                  title: '安全提示',
                  content: '两次密码输入不正确，请重新输入！',
                  onConfirm: () {
                    // 确定按钮的处理逻辑
                    newPin = "";
                    setState(() {});
                    controller.clear();
                    Navigator.of(context).pop();
                  },
                );
              } else {
                modifyPwd(newPassword: newPin, verifyCode: originalPin);
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

  @override
  void dispose() {
    // TODO: implement dispose
    focusNode.dispose();
    controller.dispose();
    super.dispose();
  }
}
