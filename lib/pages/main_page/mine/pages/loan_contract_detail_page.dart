import 'package:churn/pages/main_page/mine/widgets/loan/loan_contract_detail_widget.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/black_styles_container.dart';

class LoanContractDetailPage extends StatelessWidget {
  const LoanContractDetailPage({super.key, required this.contractNo});
  final String contractNo;
  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "合同详情",
        backgroundPath: UIAssets.source!.bg2,
        child: LoanContractDetailWidget(
          contractNo: contractNo,
        ));
  }
}
