import 'package:churn/components/black_styles_container.dart';
import 'package:churn/pages/main_page/mine/widgets/edit_wallet/edit_wallet_widget.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';

class EditWalletPage extends StatelessWidget {
  const EditWalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "添加钱包地址",
        backgroundPath: UIAssets.source!.bg2,
        child: const EditWalletWidget());
  }
}
