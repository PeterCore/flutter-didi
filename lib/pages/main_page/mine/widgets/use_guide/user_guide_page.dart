import 'package:churn/components/base_container.dart';
import 'package:churn/pages/main_page/mine/widgets/use_guide/user_guide_widget.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:flutter/material.dart';

class UserGuidePage extends StatelessWidget {
  const UserGuidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
        title: "知识学堂",
        backgroundColor: AppTheme().themeBackGroundColor,
        child: const UserGuideWidget());
  }
}
