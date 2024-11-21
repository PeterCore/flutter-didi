import 'package:churn/components/black_styles_container.dart';
import 'package:churn/pages/main_page/mine/widgets/edit_bank/edit_bank_widget.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';

class EditBankPage extends StatelessWidget {
  const EditBankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "添加银行卡",
        backgroundPath: UIAssets.source!.bg2,
        child: const EditBankWidget());
  }
}
