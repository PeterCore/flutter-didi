import 'package:dk_utils/components/app_local_image.dart';
import 'package:dk_utils/components/round_container.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../components/app_real_name_auth_container.dart';
import '../../models/grid_item.dart';

///充值，转帐，提现，余额宝
class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key, required this.items});
  final List<GridItem> items;
  @override
  Widget build(BuildContext context) {
    return RoundContainer(
      horizontal: 12.w,
      vertical: 12.h,
      boxShadow: const [
        BoxShadow(
            color: Color(0xFFE6ECEA),
            offset: Offset(0.0, 0.0), //阴影y轴偏移量
            blurRadius: 25, //阴影模糊程度
            spreadRadius: 4 //阴影扩散程度
            )
      ],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildMenuItem(items[0]),
          buildMenuItem(items[1]),
          buildMenuItem(items[2]),
          buildMenuItem(items[3]),
        ],
      ),
    );
  }

  Widget buildMenuItem(GridItem item) {
    return Expanded(
      child: AppRealNameAuthContainer(
        isNeedRealName: item.isNeedReal,
        onClick: (value) {
          item.onClick.call(item.id);
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.all(10.h),
              child: AppLocalImage(
                path: item.iconPath,
                width: 24.w,
                height: 24.h,
              ),
            ),
            SizedBox(height: 6.h), // 图标和文字的间距
            Text(
              item.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14.sp,
                  height: 1.2,
                  color: AppTheme().wordPrimaryColor,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
