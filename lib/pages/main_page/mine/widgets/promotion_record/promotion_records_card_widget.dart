import 'package:dk_net_work/models/promotion_member_list.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../../assets_tool/ui_assets.dart';

class PromotionRecordsCardWidget extends StatelessWidget {
  const PromotionRecordsCardWidget({super.key, required this.item});
  final MemberItem item;

  Widget _buildGridItem(String amount, String description) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          amount,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,
              height: 1.2,
              color: AppTheme().wordPrimaryColor),
          textAlign: TextAlign.left,
          softWrap: false, // 禁止换行
          overflow: TextOverflow.visible, // 显示完整内容
        ),
        SizedBox(height: 4.h), // 调整间距，使数字和文字靠近一些
        Text(
          description,
          style: TextStyle(
              color: AppTheme().wordSecondColor,
              fontSize: 12.sp,
              height: 1.2,
              fontWeight: FontWeight.w400),
          textAlign: TextAlign.left,
          softWrap: false, // 禁止换行
          overflow: TextOverflow.visible, // 显示完整内容
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
      child: RoundContainer(
        horizontal: 16.h,
        vertical: 12.w,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    AppLocalImage(
                      path: UIAssets.source!.logo3,
                      width: 24.w,
                      height: 24.w,
                    ),
                    SizedBox(width: 5.w),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.realname ?? "", // 用户名
                          style: TextStyle(
                              color: AppTheme().wordPrimaryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp,
                              height: 1.2),
                        ),
                        Text(
                          item.username ?? "", // 电话号码
                          style: TextStyle(
                              color: AppTheme().wordSecondColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              height: 1.2),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '下级人数: ',
                      style: TextStyle(
                          color: AppTheme().wordPrimaryColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          height: 1.2),
                    ),
                    Text(
                      "${item?.nextnunber ?? 0}", // 下级人数
                      style: TextStyle(
                          color: AppTheme().themeBackGroundColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          height: 1.2),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16.sp,
                      color: AppTheme().wordPrimaryColor,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 16.h),
            RoundContainer(
              horizontal: 16.w,
              vertical: 16.h,
              backgroundColor: const Color(0xFFF0F3FA),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3, // 三列布局
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1, // 强制每个格子为正方形，确保同高
                physics: const NeverScrollableScrollPhysics(), // 禁止滚动
                children: [
                  _buildGridItem(
                      item?.nextrecharges ?? "0", '充值(USDT)'), // 示例超长数字
                  _buildGridItem(item?.nextwithdrawals ?? "0", '提现(USDT)'),
                  _buildGridItem(item?.touzi ?? "", '投资(USDT)'),
                  _buildGridItem(item?.tixian ?? "", '可提现(USDT)'),
                  _buildGridItem(item?.touzi ?? "", '可投(USDT)'),
                  _buildGridItem(item?.yuebao ?? "", '余额宝(USDT)'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
