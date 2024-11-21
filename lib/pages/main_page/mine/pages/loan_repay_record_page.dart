import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/black_styles_container.dart';
import '../widgets/loan/loan_record_list_widget.dart';

class LoanRepayRecordPage extends StatelessWidget {
  const LoanRepayRecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "还款记录",
        backgroundPath: UIAssets.source!.bg2,
        child: const LoanRecordListWidget(
          status: "0",
        ));
  }
}
