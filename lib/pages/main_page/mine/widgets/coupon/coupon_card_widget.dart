import 'package:dk_net_work/models/welfare_coupon_result_model.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CouponCardWidget extends StatelessWidget {
  const CouponCardWidget({super.key, this.item});
  final WelfareItem? item;
  @override
  Widget build(BuildContext context) {
    // 获取屏幕宽度
    return Card(
      color: AppTheme().roundContainerColor,
      margin: EdgeInsets.symmetric(vertical: 24.h, horizontal: 28.w),
      child: Padding(
        padding: EdgeInsets.all(16.r),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center, // 纵向居中
                  children: [
                    // 左侧金额部分
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "${item?.money ?? 0}",
                                style: TextStyle(
                                    color: Colors.white,
                                    height: 1.4,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 28.sp)),
                            TextSpan(
                                text: item?.type == 1 ? 'U' : "%",
                                style: TextStyle(
                                    color: Colors.white,
                                    height: 1.4,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.sp)),
                          ]),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          item?.type == 1 ? "代金券" : "加息券",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    // 中间的描述和时间
                    SizedBox(
                      width: 14.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item?.name ?? "",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 16.h),
                          Text(
                            '领取时间: ${item?.createdAt ?? ""}',
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white.withOpacity(0.5),
                                fontWeight: FontWeight.w400,
                                height: 1.2),
                          ),
                          Text(
                            '到期时间: ${item?.date ?? ""}',
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white.withOpacity(0.5),
                                fontWeight: FontWeight.w400,
                                height: 1.2),
                          ),
                        ],
                      ),
                    ),
                    // 右侧按钮，纵向居中
                    SizedBox(
                      width: 11.w,
                    ),
                    GradientButton(
                        vertical: 5.h,
                        horizontal: 12.w,
                        text: "去使用",
                        onPressed: (index) {})
                  ],
                ),
                // 小屏幕时让按钮单独占一
              ],
            );
          },
        ),
      ), // 卡片背景颜色
    );
  }
}
