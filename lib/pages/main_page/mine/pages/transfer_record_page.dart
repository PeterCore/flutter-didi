import 'package:churn/components/black_styles_container.dart';
import 'package:churn/pages/main_page/mine/widgets/transfer/transfer_record_widget.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';

class TransferRecordPage extends StatelessWidget {
  const TransferRecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "转帐记录",
        backgroundPath: UIAssets.source!.bg1,
        child: const TransferRecordWidget());
  }
}
