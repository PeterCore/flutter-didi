import 'package:churn/pages/main_page/mine/widgets/loan/loan_record_list_widget.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/black_styles_container.dart';

class LoanContractRecordPage extends StatelessWidget {
  const LoanContractRecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "贷款记录",
        backgroundPath: UIAssets.source!.bg2,
        child: const LoanRecordListWidget());
  }
}
