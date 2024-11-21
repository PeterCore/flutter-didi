import 'package:churn/assets_tool/ui_assets.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/invite_friend_config_model.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../../router_config.dart';

class DownLoadBoardWidget extends StatefulWidget {
  const DownLoadBoardWidget({super.key});

  @override
  State<DownLoadBoardWidget> createState() => _DownLoadBoardWidgetState();
}

class _DownLoadBoardWidgetState extends State<DownLoadBoardWidget> {
  InviteFriendConfigModel? configs;
  @override
  void initState() {
    // TODO: implement initState
    getInviteFriendConfig().then((value) {
      value.ifSuccess((data) {
        configs = data;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 190.h, horizontal: 40.w),
        child: RoundContainer(
          backgroundColor: AppTheme().themeBackGroundColor,
          horizontal: 16.w,
          vertical: 40.h,
          child: Column(
            children: [
              CustomButton(
                  text: "安卓手机下载",
                  imagePath: UIAssets.source!.icalg,
                  onPressed: () {
                    if (configs != null) {
                      String config = inviteFriendConfigModelToJson(configs!);
                      pushPage(context,
                          path: PagePath.androidDownLoaderPage,
                          ext: {"config": config});
                    }
                  }),
              SizedBox(
                height: 12.h,
              ),
              CustomButton(
                  text: "苹果手机下载",
                  imagePath: UIAssets.source!.icilg,
                  onPressed: () {}),
              SizedBox(
                height: 12.h,
              ),
              CustomButton(
                  text: "华为手机下载",
                  imagePath: UIAssets.source!.ichwlg,
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

enum AppDownLoadLink {
  android,
  ios,
  huawei,
  none,
}
