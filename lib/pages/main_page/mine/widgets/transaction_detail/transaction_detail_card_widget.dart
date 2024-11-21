import 'package:dk_net_work/models/transaction_detail_model.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class TransactionDetailCardWidget extends StatelessWidget {
  const TransactionDetailCardWidget({super.key, required this.item});
  final TransactionDetailItem item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
      child: RoundContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 顶部文本信息，支持换行
            Text(
              item.moneylogNotice ?? "",
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: AppTheme().wordPrimaryColor,
                  height: 1.2),
            ),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.createdAt ?? "",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppTheme().wordSecondColor,
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                  ),
                ),
                // 右侧金额
                Text(
                  '${item.moneylogStatus}${item.moneylogMoney ?? 0}',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: AppTheme().themeBackGroundColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            RoundContainer(
              backgroundColor: const Color(0xFFF0F3FA),
              horizontal: 16.w,
              vertical: 12.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildRichText("${item.moneylogYuanamount ?? 0}", 'USDT'),
                      SizedBox(height: 8.h),
                      Text(
                        '原有提现金额',
                        style: TextStyle(
                            fontSize: 14.sp,
                            height: 1.2,
                            color: AppTheme().wordSecondColor,
                            fontWeight: FontWeight.w400),
                      ),
                      // SizedBox(height: 16),
                      // buildRichText('3', '%'),
                      // SizedBox(height: 8),
                      // Text(
                      //   '基础收益',
                      //   style: TextStyle(
                      //     color: Colors.grey,
                      //     fontSize: 14,
                      //   ),
                      // ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildRichText("${item.moneylogHouamount ?? 0}", 'USDT'),
                      SizedBox(height: 8.h),
                      Text(
                        '现有提现金额',
                        style: TextStyle(
                            fontSize: 14.sp,
                            height: 1.2,
                            color: AppTheme().wordSecondColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // 创建多文本的组合 (数字 + 单位)
  Widget buildRichText(String value, String unit) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: value,
            style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: AppTheme().wordPrimaryColor,
                height: 1.2),
          ),
          TextSpan(
            text: ' $unit',
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: AppTheme().wordSecondColor,
                height: 1.2),
          ),
        ],
      ),
    );
  }
}
