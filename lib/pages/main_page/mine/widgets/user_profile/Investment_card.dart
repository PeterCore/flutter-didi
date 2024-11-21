import 'package:churn/components/app_real_name_auth_container.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum NMDEType {
  invest,
  withdraws,
  total,
}

class InvestmentCard extends StatelessWidget {
  const InvestmentCard(
      {super.key,
      required this.investmentBalance,
      required this.withdrawalBalance,
      required this.totalEarnings,
      this.onClick});
  final double investmentBalance;
  final double withdrawalBalance;
  final double totalEarnings;
  final Function(NMDEType type)? onClick;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      // 自动根据内容调整高度
      child: AspectRatio(
        aspectRatio: 673 / 297,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: AppTheme().roundContainerColor,
              boxShadow: const [
                BoxShadow(
                    color: Color(0xFFE6ECEA),
                    offset: Offset(0.0, 0.0), //阴影y轴偏移量
                    blurRadius: 25, //阴影模糊程度
                    spreadRadius: 4 //阴影扩散程度
                    ),
              ]),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 第一行：仅显示投资余额
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: buildBalanceInfo(
                        onClick: () {
                          onClick?.call(NMDEType.invest);
                        },
                        title: '投资余额(USDT)',
                        value: investmentBalance,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: buildBalanceInfo(
                        onClick: () {
                          onClick?.call(NMDEType.withdraws);
                        },
                        title: '提现余额(USDT)',
                        value: withdrawalBalance,
                      ),
                    ),
                    SizedBox(width: 8.h),
                    Expanded(
                      child: buildBalanceInfo(
                        onClick: () {
                          onClick?.call(NMDEType.total);
                        },
                        title: '累计收益(USDT)',
                        value: totalEarnings,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // 构建显示信息的函数，包含文本和数值
  Widget buildBalanceInfo(
      {required String title, required double value, Function()? onClick}) {
    return AppRealNameAuthContainer(
      isNeedRealName: true,
      onClick: (value) {
        onClick?.call();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 14.sp,
                    height: 1.3,
                    color: AppTheme().wordSecondColor,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(width: 4.h),
              Icon(
                Icons.help_outline,
                color: AppTheme().wordSecondColor,
                size: 14.sp,
              ),
            ],
          ),
          SizedBox(height: 4.h),
          Text(
            value.toStringAsFixed(2), // 保留两位小数
            style: TextStyle(
              fontSize: 18.sp,
              height: 1.4,
              fontWeight: FontWeight.w700,
              color: AppTheme().wordPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
