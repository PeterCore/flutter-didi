import 'package:churn/components/black_styles_container.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../widgets/exchange_point_product_widget.dart';

class ExchangePointProductPage extends StatelessWidget {
  const ExchangePointProductPage(
      {super.key,
      required this.imageUrl,
      this.quantity,
      this.productValue,
      this.desc,
      this.productId,
      this.title});

  final String imageUrl;
  final int? quantity;
  final int? productValue;
  final String? desc;
  final int? productId;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "兑换商品",
        backgroundPath: UIAssets.source!.bg2,
        child: ExchangePointProductWidget(
          imageUrl: imageUrl,
          quantity: quantity,
          productValue: productValue,
          productId: productId,
          desc: desc,
          title: title,
        ));
  }
}
