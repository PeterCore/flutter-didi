import 'package:churn/components/black_styles_container.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../widgets/coupon/coupon_tabbar_widget.dart';

class CouponPage extends StatelessWidget {
  const CouponPage({super.key, required this.type});
  final int type;
  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: type == 1 ? "代金券" : "加息券",
        backgroundPath: UIAssets.source!.bg1,
        child: CouponTabBarWidget(type: type));
  }
}
