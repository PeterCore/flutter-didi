import 'package:churn/l10n/l10n.dart';
import 'package:churn/pages/password/widgets/pay_password_widget.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../assets_tool/ui_assets.dart';
import '../../../components/black_styles_container.dart';

///支付密码
class PayPasswordPage extends StatelessWidget {
  const PayPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: context.l10n?.payPswTitle ?? "",
        backgroundPath: UIAssets.source!.bg2,
        onNavBack: () {
          popPage(context, path: "/");
        },
        child: const PayPasswordWidget());
  }
}
