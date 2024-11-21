import 'package:dk_net_work/models/recharge_recode_model.dart';
import 'package:dk_utils/components/round_container.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RechargeRecordCardWidget extends StatelessWidget {
  const RechargeRecordCardWidget({super.key, required this.item});
  final RechargeRecodeItem item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 11.h),
      child: RoundContainer(
        vertical: 24.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.type ?? "",
                  style: TextStyle(
                      color: AppTheme().themeBackGroundColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      height: 1.3),
                ),
                Text(
                  item.statusText ?? "",
                  style: TextStyle(
                      color: (item.status ?? 0) < 0
                          ? AppTheme().redThemeColor
                          : AppTheme().themeBackGroundColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      height: 1.3),
                ),
              ],
            ),
            SizedBox(height: 24.h),
            Text(
              "充值金额: ${item.rechargeAmount ?? ""}",
              style: TextStyle(
                  color: AppTheme().wordSecondColor,
                  fontSize: 14.sp,
                  height: 1.3,
                  fontWeight: FontWeight.w400),
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "实际到账: ",
                style: TextStyle(
                    color: AppTheme().wordSecondColor,
                    fontSize: 14.sp,
                    height: 1.3,
                    fontWeight: FontWeight.w400),
              ),
              TextSpan(
                text: "${item.amount ?? 0} USDT",
                style: TextStyle(
                    color: AppTheme().themeBackGroundColor,
                    fontSize: 14.sp,
                    height: 1.3,
                    fontWeight: FontWeight.w400),
              ),
            ])),
            Text(
              "充值时间: ${item.createdAt ?? ""}",
              style: TextStyle(
                  color: AppTheme().wordSecondColor,
                  fontSize: 14.sp,
                  height: 1.3,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              "订单编号: ${item.ordernumber ?? ""}",
              style: TextStyle(
                  color: AppTheme().wordSecondColor,
                  fontSize: 14.sp,
                  height: 1.2,
                  fontWeight: FontWeight.w400),
            ),
            if ((item.status ?? 0) < 0)
              SizedBox(
                height: 10.h,
              ),
            if ((item.status ?? 0) < 0)
              Text(
                "取消原因: ${item.reason ?? ""}",
                style: TextStyle(
                    color: AppTheme().redThemeColor,
                    fontSize: 14.sp,
                    height: 1.3,
                    fontWeight: FontWeight.w400),
              ),
          ],
        ),
      ),
    );
  }
}
