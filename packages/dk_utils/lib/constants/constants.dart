import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_theme.dart';

class Constants {
  final refreshHeader = ClassicHeader(
    textStyle: TextStyle(
        color: AppTheme().wordPrimaryColor,
        fontSize: 13.sp,
        fontWeight: FontWeight.w400,
        height: 1.4),
    iconTheme: IconThemeData(
      color: AppTheme().wordPrimaryColor, // 设置箭头颜色为红色
    ),
    dragText: "下拉刷新",
    armedText: '开始释放',
    readyText: '刷新中...',
    processingText: '刷新中...',
    processedText: '成功了',
    noMoreText: '没有更多',
    failedText: '刷新失败',
    messageText: '最新更新时间 %T',
    safeArea: true,
  );

  final loadFooter = ClassicFooter(
    textStyle: TextStyle(
        color: AppTheme().wordPrimaryColor,
        fontSize: 13.sp,
        fontWeight: FontWeight.w400,
        height: 1.4),
    iconTheme: IconThemeData(
      color: AppTheme().wordPrimaryColor, // 设置箭头颜色为红色
    ),
    dragText: "上拉加载",
    armedText: '开始释放',
    readyText: '加载中...',
    processingText: '加载中...',
    processedText: '成功了',
    noMoreText: '没有更多',
    failedText: '加载失败',
    messageText: '最新更新时间 %T',
    safeArea: true,
  );
}
