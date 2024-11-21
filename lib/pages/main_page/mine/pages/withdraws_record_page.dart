import 'package:churn/pages/main_page/mine/widgets/withdraws/withdraws_record_widget.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/black_styles_container.dart';

class WithdrawsRecordPage extends StatelessWidget {
  const WithdrawsRecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "提现记录",
        backgroundPath: UIAssets.source!.bg1,
        child: const WithdrawsRecordWidget());
  }
}
