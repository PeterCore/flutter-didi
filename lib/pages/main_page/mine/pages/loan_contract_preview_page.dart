import 'package:churn/pages/main_page/mine/widgets/loan/loan_preview_contract_widget.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/black_styles_container.dart';

class LoanContractPreViewPage extends StatelessWidget {
  const LoanContractPreViewPage(
      {super.key, required this.money, required this.isSignature});
  final String money;
  final bool isSignature;
  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "合同详情",
        backgroundPath: UIAssets.source!.bg2,
        child:
            LoanContractPreViewWidget(money: money, isSignature: isSignature));
  }
}
