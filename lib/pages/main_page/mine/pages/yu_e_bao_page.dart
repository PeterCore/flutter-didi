import 'package:churn/pages/main_page/mine/widgets/yuebao/yu_e_bao_widget.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/black_styles_container.dart';

class YuEBaoPage extends StatelessWidget {
  const YuEBaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "余额宝",
        backgroundPath: UIAssets.source!.bg1,
        child: const YuEBaoWidget());
  }
}
