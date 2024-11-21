import 'package:dk_net_work/models/member_ship_level.dart';
import 'package:dk_utils/components/round_container.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/member_ship_level_extension.dart';

class MemberShipLevelCard extends StatelessWidget {
  const MemberShipLevelCard(
      {super.key,
      required this.item,
      required this.config,
      required this.memberShipLevel});
  final ListElement item;
  final Config? config;
  final MemberShipLevel memberShipLevel;

  List<MemberTaskRewards> getTasks() {
    return item.getTasks(getConfigs());
  }

  Map<String, dynamic> getConfigs() {
    Map<String, dynamic> map = config!.toJson();
    map["alwaysShows"] = 1;
    return map;
  }

  List<RichText> _buildTasks(BuildContext context) {
    List<MemberTaskRewards> list = getTasks();
    List<RichText> listRichText = [];
    for (var task in list) {
      final content = task.rewardsContent(map: getConfigs(), item: item);
      final RichText itemWidget = RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: task.label,
              style: TextStyle(
                  fontSize: 13.sp,
                  color: AppTheme().wordPrimaryColor,
                  height: 1.2,
                  fontWeight: FontWeight.w400),
            ),
            TextSpan(
              text: " $content",
              style: TextStyle(
                  fontSize: 13.sp,
                  color: const Color(0xFFFF9F10),
                  height: 1.2,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      );
      listRichText.add(itemWidget);
    }
    return listRichText;
  }

  List<Widget> _buildTaskConditions(BuildContext context) {
    List<Widget> list = [];
    if (memberShipLevel.mylevel == memberShipLevel.lastlevel) {
      list.add(Text(
        "恭喜您达到最高等级",
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13.sp,
            color: AppTheme().themeBackGroundColor,
            height: 1.8,
            fontWeight: FontWeight.w400),
      ));
    } else {
      list.add(Text(
        "满足以下条件即可升级",
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13.sp,
            color: AppTheme().themeBackGroundColor,
            height: 1.8,
            fontWeight: FontWeight.w400),
      ));
      list.add(Text(
        "条件一 个人累计投资${item.selfmoney ?? 0} USDT",
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13.sp,
            color: AppTheme().wordPrimaryColor,
            height: 1.8,
            fontWeight: FontWeight.w400),
      ));
      if (config?.memberNext == 1) {
        list.add(Text(
          "条件二 直推一级有效人数${item.inte ?? 0} 人",
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 13.sp,
              color: AppTheme().wordPrimaryColor,
              height: 1.8,
              fontWeight: FontWeight.w400),
        ));
      }
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return RoundContainer(
      horizontal: 16.w,
      vertical: 16.h,
      backgroundColor: const Color(0xFFDEDBEA),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                colors: [
                  Color(0xFFF7C3AA),
                  Color(0xFFC4935A),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcIn,
            child: Text(
              item.name ?? "", // Gradient text
              style: TextStyle(
                fontSize: 14.sp,
                height: 1.3,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          SizedBox(height: 10.h),
          // RichText to format description with orange interest rate
          ..._buildTasks(context),
          SizedBox(height: 10.h),
          // Align to control width and keep 16 units margin from sides
          RoundContainer(
            horizontal: 12.w,
            vertical: 12.h,
            child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _buildTaskConditions(context))),
          ),
        ],
      ),
    );
  }
}
