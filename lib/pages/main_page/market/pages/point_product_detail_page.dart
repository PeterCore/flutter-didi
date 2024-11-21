import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/base_container.dart';
import '../widgets/point_product_detail_widget.dart';

class PointProductDetailPage extends StatelessWidget {
  const PointProductDetailPage(
      {super.key, required this.myPoint, required this.productId});
  final int myPoint;
  final int productId;
  @override
  Widget build(BuildContext context) {
    return BaseContainer(
        title: " ",
        isSafeArea: false,
        backgroundPath: UIAssets.source!.bg2,
        child: PointProductDetailWidget(
          myPoint: myPoint,
          productId: productId,
        ));
  }
}
