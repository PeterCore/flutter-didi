import 'package:churn/l10n/l10n.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_utils/dk_lib.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter/materiarouter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResetPayPwdWithPkWidget extends StatefulWidget {
  const ResetPayPwdWithPkWidget({super.key, this.pk = ""});
  final String pk;
  @override
  State<ResetPayPwdWithPkWidget> createState() =>
      _ResetPayPwdWithPkWidgetState();
}

class _ResetPayPwdWithPkWidgetState extends State<ResetPayPwdWithPkWidget> {
  final controller = TextEditingController();
  final focusNode = FocusNode();
  String pin1 = "";
  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  void modifyPwd({String newPassword = "", String verifyCode = ""}) {
    modifyPayPsw(
            pass: verifyCode,
            type: 1,
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
            pin1 = "";
            setState(() {});
            controller.clear();
            Navigator.of(context).pop();
            context.pop();
          },
        );
      });
      value.ifFailure((e) {
        pin1 = "";
        setState(() {});
        controller.clear();
        EasyLoading.showError(e.message);
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
        borderRadius: BorderRadius.circular(26.r),
        border: Border.all(color: borderColor, width: 0.5),
      ),
    );

    return Column(
      children: [
        SizedBox(
          height: 54.h,
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
          height: 54.h,
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
                modifyPwd(newPassword: pin1, verifyCode: widget?.pk ?? "");
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
