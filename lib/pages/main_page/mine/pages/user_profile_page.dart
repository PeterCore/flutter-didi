import 'package:churn/assets_tool/ui_assets.dart';
import 'package:churn/components/black_styles_container.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../router_config.dart';
import '../widgets/user_profile_view.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        rightActions: [
          GestureDetector(
            onTap: () {
              pushPage(context, path: PagePath.checkInPage);
            },
            child: AppLocalImage(
              path: UIAssets.source!.icckbg,
              width: 52.w,
              height: 22.h,
            ),
          ),
          Container(
            width: 12.w,
          ),
        ],
        title: "",
        leading: Container(),
        backgroundPath: UIAssets.source!.bg1,
        child: const UserProfileView());
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
