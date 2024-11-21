import 'package:churn/components/black_styles_container.dart';
import 'package:churn/pages/main_page/mine/widgets/withdraws/withdraws_manager_widget.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';

class WithdrawsManagerPage extends StatelessWidget {
  const WithdrawsManagerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "提现管理",
        backgroundPath: UIAssets.source!.bg2,
        child: const WithdrawsManagerWidget());
  }
}
