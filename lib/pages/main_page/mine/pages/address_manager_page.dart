import 'package:churn/components/black_styles_container.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../widgets/address/address_manager_widget.dart';

class AddressManagerPage extends StatelessWidget {
  final String? isPick;
  const AddressManagerPage({super.key, this.isPick});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "地址管理",
        backgroundPath: UIAssets.source!.bg2,
        child: AddressManagerWidget(isPick: isPick));
  }
}
