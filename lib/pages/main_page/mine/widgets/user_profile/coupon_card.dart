import 'package:churn/components/app_real_name_auth_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CouponCard extends StatelessWidget {
  const CouponCard(
      {super.key,
      required this.title,
      required this.count,
      required this.unit,
      this.icon = Icons.arrow_forward_ios,
      required this.highlightColor,
      required this.textColor,
      this.onClick});
  final String title, count, unit;
  final Color highlightColor;
  final Color textColor;
  final IconData? icon;
  final Function()? onClick;
  @override
  Widget build(BuildContext context) {
    return AppRealNameAuthContainer(
      isNeedRealName: true,
      onClick: (value) {
        onClick?.call();
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF1E1E1E), // 背景颜色
          borderRadius: BorderRadius.circular(12), // 圆角
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: textColor,
                      fontSize: 12.sp,
                      height: 1.2,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Icon(
                  icon,
                  size: 12,
                  color: textColor,
                ),
              ],
            ),
            SizedBox(height: 4.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: count,
                    style: TextStyle(
                      color: highlightColor,
                      fontSize: 16.sp,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' $unit',
                    style: TextStyle(
                        color: textColor,
                        fontSize: 10.sp,
                        height: 1.4,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
