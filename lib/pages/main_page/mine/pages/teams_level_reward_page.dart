import 'package:flutter/material.dart';

import '../../../../components/black_styles_container.dart';
import '../widgets/teams/teams_level_list_widget.dart';

class TeamsLevelRewardPage extends StatelessWidget {
  const TeamsLevelRewardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "团队等级奖励",
        backgroundColor: const Color(0xFFD6D2E5),
        child: const TeamsLevelListWidget());
  }
}

// TeamsLevelListWidget
