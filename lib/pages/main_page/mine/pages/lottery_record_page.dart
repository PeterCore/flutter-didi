import 'package:churn/pages/main_page/mine/widgets/lottery/lottery_record_tabBar_widget.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/base_container.dart';

class LotteryRecordPage extends StatelessWidget {
  const LotteryRecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
        title: "抽奖记录",
        backgroundPath: UIAssets.source!.bg3,
        child: const LotteryRecordTabBarWidget());
  }
}
