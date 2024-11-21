import 'package:churn/pages/main_page/home/widgets/company_profile_widget.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/black_styles_container.dart';

class CompanyProfilePage extends StatelessWidget {
  const CompanyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "公司简介",
        backgroundPath: UIAssets.source!.bg1,
        child: const CompanyProfileWidget());
  }
}
