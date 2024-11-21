import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../../components/app_real_name_auth_container.dart';
import '../../models/grid_item.dart';

class WCard extends StatelessWidget {
  const WCard(
      {super.key, required this.lotteryItem, required this.investorItem});
  final GridItem lotteryItem;
  final GridItem investorItem;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildMenuItem(item: lotteryItem),
          SizedBox(width: 16.w), // 控制两个单元格之间的间距
          buildMenuItem(item: investorItem // 替换为你的图片路径
              ),
        ],
      ),
    );
  }

  Widget buildMenuItem({
    required GridItem item,
  }) {
    return Expanded(
      child: AppRealNameAuthContainer(
        onClick: (value) {
          item.onClick?.call(item.id);
        },
        isNeedRealName: item.isNeedReal,
        child: RoundGradientContainer(
          gradientColors: [
            const Color(0xFFCFD4FF).withOpacity(0.2),
            const Color(0xFFE54EA6).withOpacity(0.0)
          ],
          vertical: 16.h,
          horizontal: 16.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // 左侧文字
              Column(
                children: [
                  Text(
                    item.title,
                    style: TextStyle(
                      fontSize: 16.sp,
                      height: 1.6,
                      color: AppTheme().themeBackGroundColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    item.iconPath,
                    width: 72.h, // 设置图片宽度
                    height: 72.h, // 设置图片高度
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
