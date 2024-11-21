import 'package:churn/pages/main_page/home/widgets/new_detail_widget.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/black_styles_container.dart';

class NewDetailPage extends StatelessWidget {
  const NewDetailPage({super.key, this.content});
  final String? content;
  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        isSafeArea: true,
        title: "公告中心",
        backgroundPath: UIAssets.source!.bg2,
        child: NewDetailWidget(content: content ?? ""));
  }
}
