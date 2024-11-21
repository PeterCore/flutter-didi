import 'package:churn/components/black_styles_container.dart';
import 'package:churn/pages/main_page/mine/widgets/edit_zhi_fu_bao/edit_zhi_fu_bao_widget.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';

class EditZhiFuBaoPage extends StatelessWidget {
  const EditZhiFuBaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "添加支付宝地址",
        backgroundPath: UIAssets.source!.bg2,
        child: const EditZhiFuBaoWidget());
  }
}
