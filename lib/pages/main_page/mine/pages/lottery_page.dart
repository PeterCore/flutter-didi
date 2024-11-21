import 'package:churn/pages/main_page/mine/widgets/lottery/lottery_widget.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../components/base_container.dart';

class LotteryPage extends StatelessWidget {
  const LotteryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
        title: "幸运抽奖",
        backgroundColor: AppTheme().themeBackGroundColor,
        child: const LotteryWidget());
  }
}
