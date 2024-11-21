import 'package:churn/pages/main_page/mine/widgets/promotion_record/promotion_records_widget.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/black_styles_container.dart';

class PromotionRecordPage extends StatelessWidget {
  const PromotionRecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "推广记录",
        backgroundPath: UIAssets.source!.bg1,
        child: const PromotionRecordsWidget());
  }
}
