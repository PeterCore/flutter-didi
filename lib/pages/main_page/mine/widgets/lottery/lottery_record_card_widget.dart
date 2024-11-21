import 'package:dk_net_work/models/lottery_record_list.dart';
import 'package:dk_utils/components/image/net_image_cached.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class LotteryRecordCardWidget extends StatelessWidget {
  const LotteryRecordCardWidget({super.key, this.item});
  final LotteryRecordItem? item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
      child: RoundContainer(
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch, // 确保左侧图片与右侧文字信息同高
            children: [
              // 左边图片
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  color: AppTheme().blueBackgroundColor,
                ),
                width: 60.w,
                height: 60.w,
                child: Center(
                  child: netImageCached(
                    background: Colors.transparent,
                    item?.image ?? "",
                    width: 40.w,
                    height: 40.w,
                    radius: 0,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(width: 11.w),
              // 右侧文字信息
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      item?.prizeName ?? "",
                      style: TextStyle(
                          color: AppTheme().wordPrimaryColor,
                          fontSize: 16.sp,
                          height: 1.2,
                          fontWeight: FontWeight.w400),
                      maxLines: 2, // 设置最大行数，超出部分自动换行
                      overflow: TextOverflow.ellipsis, // 溢出处理
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      item?.createdAt ?? "",
                      style: TextStyle(
                          color: AppTheme().wordSecondColor,
                          fontSize: 12.sp,
                          height: 1.3,
                          fontWeight: FontWeight.w400),
                      maxLines: 2, // 设置最大行数，超出部分自动换行
                      overflow: TextOverflow.ellipsis, // 溢出处理
                    ),
                    Text(
                      item?.expdate ?? "",
                      style: TextStyle(
                          color: AppTheme().wordSecondColor,
                          fontSize: 12.sp,
                          height: 1.3,
                          fontWeight: FontWeight.w400),
                      maxLines: 2, // 设置最大行数，超出部分自动换行
                      overflow: TextOverflow.ellipsis, // 溢出处理
                    ),

                    // 使用 Row 让 78积分 和 x1 在同一行的左右两侧
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
