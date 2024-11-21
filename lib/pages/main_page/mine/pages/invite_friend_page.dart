import 'package:churn/pages/main_page/mine/widgets/invite_friend/down_load_board_widget.dart';
import 'package:churn/pages/main_page/mine/widgets/invite_friend/invite_friend_widget.dart';
import 'package:flutter/material.dart';

import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/black_styles_container.dart';

class InviteFriendPage extends StatelessWidget {
  const InviteFriendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: "邀请好友",
        backgroundPath: UIAssets.source!.bg1,
        child: const InviteFriendWidget(child: DownLoadBoardWidget()));
  }
}
