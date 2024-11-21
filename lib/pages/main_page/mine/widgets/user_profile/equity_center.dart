import 'package:churn/components/app_real_name_auth_container.dart';
import 'package:churn/pages/main_page/mine/models/grid_item.dart';
import 'package:dk_utils/components/app_local_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EquityCenter extends StatelessWidget {
  const EquityCenter({super.key, required this.item});
  final GridItem item;
  @override
  Widget build(BuildContext context) {
    return AppRealNameAuthContainer(
      isNeedRealName: item.isNeedReal,
      onClick: (value) {},
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35.r), // 圆角
          gradient: LinearGradient(
            colors: [
              const Color(0xFF465581),
              const Color(0xFF19202F).withOpacity(0.27)
            ], // 渐变色从深色到浅色
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 38.w),
              child: Text(
                item.title,
                style: TextStyle(
                    fontSize: 32.sp,
                    color: const Color(0xFFC3CEED),
                    fontWeight: FontWeight.w500,
                    height: 1.3),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 38.w),
              child: AppLocalImage(
                path: item.iconPath,
                width: 70.w,
                height: 66.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
