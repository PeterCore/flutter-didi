import 'package:churn/pages/main_page/mine/widgets/yuebao/yu_e_bao_tx_out_widget.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/black_styles_container.dart';

class YuEBaoTxOutPage extends StatelessWidget {
  const YuEBaoTxOutPage({super.key, required this.outCash});
  final double outCash;
  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "转出",
        backgroundPath: UIAssets.source!.bg1,
        child: YuEBaoTxOutWidget(
          outCash: outCash,
        ));
  }
}
