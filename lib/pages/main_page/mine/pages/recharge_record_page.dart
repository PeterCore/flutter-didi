import 'package:churn/components/black_styles_container.dart';
import 'package:churn/pages/main_page/mine/widgets/online_rechange/recharge_record_widget.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';

class RechargeRecordPage extends StatelessWidget {
  const RechargeRecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "充值记录",
        backgroundPath: UIAssets.source!.bg1,
        child: const RechargeRecordWidget());
  }
}
