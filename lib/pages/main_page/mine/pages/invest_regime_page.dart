import 'package:churn/pages/main_page/mine/widgets/invest_regime/invest_regime_widget.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/black_styles_container.dart';

class InvestRegimePage extends StatelessWidget {
  const InvestRegimePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "投资制度",
        backgroundPath: UIAssets.source!.bg2,
        child: const InvestRegimeWidget());
  }
}
