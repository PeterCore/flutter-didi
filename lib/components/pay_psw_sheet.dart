import 'package:dk_utils/components/dialog/custom_bottom_sheet.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class PayPswSheet extends StatefulWidget {
  const PayPswSheet({super.key, required this.onPinCallBack});
  final Function(String pin) onPinCallBack;
  @override
  State<PayPswSheet> createState() => _PayPswSheetState();
}

class _PayPswSheetState extends State<PayPswSheet> {
  final controller = TextEditingController();
  final focusNode = FocusNode();
  String pin1 = "";

  @override
  void initState() {
    // TODO: implement initState
    focusNode.requestFocus();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

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
      border: Border.all(color: AppTheme().wordPrimaryColor, width: 0.5),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: Column(
        children: [
          Pinput(
            length: 6,
            controller: controller,
            focusNode: focusNode,
            obscureText: true,
            defaultPinTheme: defaultPinTheme,
            onCompleted: (pin) {
              widget.onPinCallBack?.call(pin);
            },
            focusedPinTheme: defaultPinTheme.copyWith(
              width: 48.w,
              height: 48.w,
              decoration: defaultPinTheme.decoration!.copyWith(
                border: Border.all(color: AppTheme().wordPrimaryColor),
              ),
            ),
            errorPinTheme: defaultPinTheme.copyWith(
              decoration: BoxDecoration(
                color: AppTheme().wordPrimaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void showCustomBottomPayPassWordSheet(
    BuildContext context, String title, Function(String pin) onCallBack,
    {Function()? onCancel, Function(String pwdPay)? onConfirm}) {
  String pwdPay = '';
  showCustomBottomSheet(context, title, PayPswSheet(
    onPinCallBack: (pin) {
      pwdPay = pin;
      onCallBack(pin);
    },
  ), onCancel: () {
    onCancel?.call();
  }, onConfirm: () {
    onConfirm?.call(pwdPay);
  });
}
