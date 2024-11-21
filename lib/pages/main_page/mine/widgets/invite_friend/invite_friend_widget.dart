import 'package:churn/assets_tool/ui_assets.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import 'down_load_board_widget.dart';

class InviteFriendWidget extends StatefulWidget {
  const InviteFriendWidget({super.key, required this.child});
  final Widget child;
  @override
  State<InviteFriendWidget> createState() => _InviteFriendWidgetState();
}

class _InviteFriendWidgetState extends State<InviteFriendWidget> {
  AppDownLoadLink linkType = AppDownLoadLink.none;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 33.h,
          left: 0,
          right: 0,
          child: AppLocalImage(
            path: UIAssets.source!.icivft,
            width: 309.w,
            height: 38.h,
          ),
        ),
        Positioned(
          top: 100.h,
          left: 0,
          right: 0,
          child: AppLocalImage(
            path: UIAssets.source!.icivfl,
            width: 160.w,
            height: 106.h,
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: widget.child,
        )
      ],
    );
  }
}
