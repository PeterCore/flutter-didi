import 'package:churn/pages/main_page/mine/widgets/yuebao/yu_e_bao_tx_in_widget.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/black_styles_container.dart';

class YuEBaoTxInPage extends StatelessWidget {
  const YuEBaoTxInPage({super.key, required this.inCash});
  final double inCash;
  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "转入",
        backgroundPath: UIAssets.source!.bg1,
        child: YuEBaoTxInWidget(inCash: inCash));
  }
}
