import 'package:churn/assets_tool/ui_assets.dart';
import 'package:churn/components/base_container.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../router_config.dart';
import '../widgets/home_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return BaseContainer(
        leadingTitle: Row(
          children: [
            AppLocalImage(
                path: UIAssets.source!.logo1, width: 72.w, height: 30.w),
          ],
        ),
        rightActions: [
          GestureDetector(
            onTap: () {
              pushPage(context, path: PagePath.checkInPage);
            },
            child: AppLocalImage(
              path: UIAssets.source!.qda,
              width: 88.w,
              height: 36.h,
            ),
          ),
          Container(
            width: 12.w,
          ),
        ],
        backgroundPath: UIAssets.source!.bg2,
        child: const HomeView());
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
