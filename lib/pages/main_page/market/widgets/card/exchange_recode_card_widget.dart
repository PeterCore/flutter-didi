import 'package:dk_net_work/models/exchange_recode_result.dart';
import 'package:dk_utils/components/image/net_image_cached.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:dk_utils/dk_lib.dart';

class ExchangeRecodeCardWidget extends StatelessWidget {
  const ExchangeRecodeCardWidget({super.key, required this.item});
  final ExchangeRecodeItem item;

  String getStatusDesc(int status) {
    String statusDesc = "兑换失败";
    if (status == 0) {
      statusDesc = "待处理";
    } else if (status == 1) {
      statusDesc = "兑换成功";
    }
    return statusDesc;
  }

  Color getStatusColor(int status) {
    Color color = const Color(0xFFFF6B75);
    if (status == 0) {
      color = AppTheme().wordPrimaryColor;
    } else if (status == 1) {
      color = AppTheme().themeBackGroundColor;
    }
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 11.h),
      child: RoundContainer(
        horizontal: 16.w,
        vertical: 14.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 时间和状态
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '时间: ${item.updatedAt}',
                  style: TextStyle(
                      color: AppTheme().wordSecondColor,
                      fontSize: 13.sp,
                      height: 1.2,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  getStatusDesc(item.status ?? 0),
                  style: TextStyle(
                    fontSize: 13.sp,
                    height: 1.2,
                    fontWeight: FontWeight.w400,
                    color: getStatusColor(item.status ?? 0),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            // 商品信息
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment:
                    CrossAxisAlignment.stretch, // 确保左侧图片与右侧文字信息同高
                children: [
                  // 左边图片
                  netImageCached(item.image ?? "",
                      width: 80.w, height: 80.h, radius: 7.r),
                  SizedBox(width: 11.w),
                  // 右侧文字信息
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          item.productname ?? "",
                          style: TextStyle(
                              color: AppTheme().wordPrimaryColor,
                              fontSize: 13.sp,
                              height: 1.2,
                              fontWeight: FontWeight.w400),
                          maxLines: 2, // 设置最大行数，超出部分自动换行
                          overflow: TextOverflow.ellipsis, // 溢出处理
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        // 使用 Row 让 78积分 和 x1 在同一行的左右两侧
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: "${item.integral ?? 0}",
                                style: TextStyle(
                                    color: AppTheme().wordPrimaryColor,
                                    fontSize: 19.sp,
                                    height: 1.2,
                                    fontWeight: FontWeight.w700),
                              ),
                              TextSpan(
                                text: " 积分",
                                style: TextStyle(
                                    color: AppTheme().wordPrimaryColor,
                                    fontSize: 10.sp,
                                    height: 2,
                                    fontWeight: FontWeight.w400),
                              ),
                            ])),
                            Text(
                              'x${item.number ?? 0}',
                              style: TextStyle(
                                  color: AppTheme().wordSecondColor,
                                  fontSize: 14.sp,
                                  height: 1.2,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            // "共x件，合计x积分" 在物流信息的右上方
            Align(
              alignment: Alignment.topRight,
              child: Text('共${item.number}件   合计: ${item.integral}积分',
                  style: TextStyle(
                      color: AppTheme().wordPrimaryColor,
                      fontSize: 14.sp,
                      height: 1.2,
                      fontWeight: FontWeight.w400)),
            ),
            SizedBox(height: 15.h),
            // 物流信息与单号在同一个圆角矩形中，左右边距相等，且横向充满空间
            if (item.status == 1)
              Container(
                width: double.infinity, // 横向充满
                padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 11.h),
                decoration: BoxDecoration(
                  color: AppTheme().roundContainerColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (item.expressName != null &&
                        item.expressName!.isNotEmpty)
                      Text(
                        '物流信息: ${item.expressName}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.sp,
                            height: 1.2,
                            fontWeight: FontWeight.w400),
                      ),
                    SizedBox(height: 7.h),
                    // 使用 RichText 使物流单号和复制按钮紧贴
                    if (item.expressOrder != null &&
                        item.expressOrder!.isNotEmpty)
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '物流单号: ${item.expressOrder ?? 0} ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  height: 1.2,
                                  fontWeight: FontWeight.w400),
                            ),
                            WidgetSpan(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 7.w, vertical: 2.h),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xFF3ABDFE),
                                      width: 1), // 边框
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    // 实现复制功能
                                    Clipboard.setData(ClipboardData(
                                        text: item.expressOrder ?? ""));
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('物流单号已复制'),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    '复制',
                                    style: TextStyle(
                                        color: const Color(0xFF3ABDFE),
                                        fontSize: 11.sp,
                                        height: 1.2,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            //const SizedBox(height: 12),
            // 失败原因（如果有），左右边距相等，横向充满空间
            if ((item.status != 1 && item.status != 0) &&
                item.memo != null &&
                item.memo!.isNotEmpty)
              Container(
                width: double.infinity, // 横向充满
                padding: EdgeInsets.all(22.w),
                decoration: BoxDecoration(
                  color: AppTheme().roundContainerColor,
                  borderRadius: BorderRadius.circular(24.r),
                ),
                child: Text(
                  "失败原因: ${item.memo ?? ""}",
                  style: TextStyle(
                      color: const Color(0xFFFF6B75),
                      fontSize: 26.sp,
                      height: 1.2,
                      fontWeight: FontWeight.w400),
                  maxLines: 2, // 设置最大行数，超出部分自动换行
                  overflow: TextOverflow.ellipsis,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
