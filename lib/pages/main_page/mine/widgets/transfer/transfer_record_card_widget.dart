import 'package:dk_net_work/models/transfer_withdraws_record_list.dart';
import 'package:dk_utils/components/round_container.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransferRecordCardWidget extends StatelessWidget {
  const TransferRecordCardWidget({super.key, required this.item});
  final TransferWithdrawsRecordItem item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 11.h),
      child: RoundContainer(
        vertical: 12.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    item.type ?? "",
                    style: TextStyle(
                        color: AppTheme().wordPrimaryColor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        height: 1.3),
                  ),
                ),
                SizedBox(
                  width: 15.w,
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
            SizedBox(height: 12.h),
            Text(
              "转出: ${item.withdrawAmount ?? ""}",
              style: TextStyle(
                  color: AppTheme().wordSecondColor,
                  fontSize: 14.sp,
                  height: 1.3,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              "转出时间: ${item.createdAt ?? ""}",
              style: TextStyle(
                  color: AppTheme().wordSecondColor,
                  fontSize: 14.sp,
                  height: 1.3,
                  fontWeight: FontWeight.w400),
            ),
            if ((item.status ?? 0) < 0)
              SizedBox(
                height: 5.h,
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
