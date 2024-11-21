import 'package:churn/components/app_real_name_auth_container.dart';
import 'package:churn/pages/main_page/mine/models/grid_item.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class MemberCard extends StatelessWidget {
  const MemberCard({
    super.key,
    required this.gradientColors,
    required this.textColor,
    required this.iconColor,
    required this.item,
    this.backgroundColor,
    this.bgImagePath,
  });
  final GridItem item;
  final Color? backgroundColor;
  final List<Color> gradientColors;
  final Color textColor;
  final Color iconColor;
  final String? bgImagePath;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AppRealNameAuthContainer(
        isNeedRealName: item.isNeedReal,
        onClick: (value) {
          item.onClick?.call(item.id);
        },
        child: AspectRatio(
          aspectRatio: 166 / 74,
          child: Container(
            height: 74.h,
            decoration: BoxDecoration(
              color: item.backgroundColor,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item.title,
                    style: TextStyle(
                      fontSize: 16.sp,
                      height: 1.2, // 字体大小
                      color: textColor, // 文本颜色
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  AppLocalImage(
                    path: item.iconPath,
                    width: 48.w,
                    height: 48.w,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
