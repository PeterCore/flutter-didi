import 'package:churn/pages/password/widgets/modify_pay_pwd/modify_pay_pwd_with_pk_widget.dart';
import 'package:flutter/material.dart';

import '../../../assets_tool/ui_assets.dart';
import '../../../components/black_styles_container.dart';

class ModifyPayPwdWithPkPage extends StatelessWidget {
  const ModifyPayPwdWithPkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "修改支付密码",
        backgroundPath: UIAssets.source!.bg2,
        child: const ModifyPayPwdWithPkWidget());
  }
}
