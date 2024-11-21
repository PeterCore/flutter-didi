import 'package:churn/components/black_styles_container.dart';
import 'package:churn/pages/main_page/mine/widgets/teams/teams_level_widget.dart';
import 'package:flutter/material.dart';

///会员等级
class TeamsLevelPage extends StatelessWidget {
  const TeamsLevelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "团队等级",
        backgroundColor: const Color(0xFFD6D2E5),
        child: const TeamsLevelWidget());
  }
}
