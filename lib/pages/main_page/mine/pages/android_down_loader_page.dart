import 'package:churn/pages/main_page/mine/widgets/invite_friend/android_down_loader_widget.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/black_styles_container.dart';
import '../widgets/invite_friend/invite_friend_widget.dart';

class AndroidDownLoaderPage extends StatelessWidget {
  const AndroidDownLoaderPage({super.key, required this.downloadConfig});
  final String downloadConfig;
  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "邀请好友",
        backgroundPath: UIAssets.source!.bg1,
        child: InviteFriendWidget(
            child: AndroidDownLoaderWidget(configDesc: downloadConfig)));
  }
}
