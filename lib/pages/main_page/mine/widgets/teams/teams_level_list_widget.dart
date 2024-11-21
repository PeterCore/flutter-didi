import 'package:churn/pages/main_page/mine/widgets/teams/teams_level_list_card_widget.dart';
import 'package:dk_net_work/http_provider/rest_client_utils.dart';
import 'package:dk_net_work/models/team_level_config.dart';
import 'package:dk_net_work/models/team_level_result.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class TeamsLevelListWidget extends StatefulWidget {
  const TeamsLevelListWidget({super.key});

  @override
  State<TeamsLevelListWidget> createState() => _TeamsLevelListWidgetState();
}

class _TeamsLevelListWidgetState extends State<TeamsLevelListWidget> {
  List<Nextlevel> teamInfos = [];
  TeamLevelConfig? config;
  @override
  void initState() {
    // TODO: implement initState
    getMemberLevels().then((value) {
      EasyLoading.dismiss();
      value.ifSuccess((data) {
        setState(() {
          teamInfos = data.list ?? [];
          config = data.config;
        });
      });
      value.ifFailure((e) {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (teamInfos.isEmpty) {
      return Center(
          child: CircularProgressIndicator(
        color: AppTheme().themeBackGroundColor,
      ));
    }
    return Padding(
      padding: EdgeInsets.only(top: 30.h),
      child: ListView.builder(
        itemCount: teamInfos.length,
        itemBuilder: (context, index) {
          final item = teamInfos[index];
          return TeamsLevelListCardWidget(
            info: item,
            config: config,
          );
        },
      ),
    );
  }
}
