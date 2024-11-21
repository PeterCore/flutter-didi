import 'package:churn/pages/password/widgets/modify_pay_pwd/reset_pay_pwd_with_pk_widget.dart';
import 'package:churn/pages/password/widgets/modify_pay_pwd/verify_pk_widget.dart';
import 'package:flutter/material.dart';

class ModifyPayPwdWithPkWidget extends StatefulWidget {
  const ModifyPayPwdWithPkWidget({super.key});

  @override
  State<ModifyPayPwdWithPkWidget> createState() =>
      _ModifyPayPwdWithPkWidgetState();
}

class _ModifyPayPwdWithPkWidgetState extends State<ModifyPayPwdWithPkWidget> {
  String verifyPk = "";

  @override
  Widget build(BuildContext context) {
    return (verifyPk.isEmpty)
        ? VerifyPkWidget(
            onComplete: (value) {
              if (value.isNotEmpty) {
                if (mounted) {
                  setState(() {
                    verifyPk = value;
                  });
                }
              }
            },
          )
        : ResetPayPwdWithPkWidget(pk: verifyPk);
  }
}
