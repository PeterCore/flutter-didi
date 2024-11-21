import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class TeamsCardInfo {
  String title;
  String upgradeRequirement;
  String upgradeDistance;
  String currentTotal;
  String value1;
  String value2;
  String currentValue;

  TeamsCardInfo({
    required this.title,
    required this.upgradeRequirement,
    required this.upgradeDistance,
    required this.currentTotal,
    required this.value1,
    required this.value2,
    required this.currentValue,
  });
}

class TeamsInfoCardWidget extends StatelessWidget {
  const TeamsInfoCardWidget({super.key, required this.info});

  final TeamsCardInfo info;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          info.title,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15.sp,
              color: AppTheme().wordPrimaryColor,
              height: 1.2),
        ),
        SizedBox(height: 20.h), // 标题与卡片内容的间距
        Container(
          padding: EdgeInsets.all(16.r),
          decoration: BoxDecoration(
            color: Colors.white, // 内容背景为白色
            borderRadius: BorderRadius.circular(12), // 内容区域的圆角
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        info.upgradeRequirement,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13.sp,
                            color: AppTheme().wordSecondColor,
                            height: 1.2),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        info.value1,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp,
                            color: AppTheme().wordPrimaryColor,
                            height: 1.2),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        info.upgradeDistance,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13.sp,
                            color: AppTheme().wordSecondColor,
                            height: 1.2),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        info.value2,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp,
                            color: AppTheme().wordPrimaryColor,
                            height: 1.2),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 36.h), // 内容之间的间距
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '${info.currentTotal}${info.currentValue}',
                  style: TextStyle(
                      color: AppTheme().wordPrimaryColor,
                      fontSize: 14.sp,
                      height: 1.2,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16.h,
        )
      ],
    );
  }
}
