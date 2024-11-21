import 'package:churn/pages/main_page/home/widgets/new_list_widget.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/black_styles_container.dart';

class NewListPage extends StatelessWidget {
  const NewListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        isSafeArea: true,
        title: "公告中心",
        backgroundPath: UIAssets.source!.bg2,
        child: const NewListWidget());
  }
}
