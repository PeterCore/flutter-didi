import 'package:churn/components/black_styles_container.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../home/widgets/exchange_cash_widget.dart';

class ExchangeCashPage extends StatelessWidget {
  const ExchangeCashPage({super.key, required this.point});
  final int point;
  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        isSafeArea: true,
        title: "积分兑换现金",
        backgroundPath: UIAssets.source!.bg2,
        child: ExchangeCashWidget(point: point));
  }
}
