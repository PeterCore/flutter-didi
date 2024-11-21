import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_theme.dart';

// 自定义底部弹窗容器类
class CustomBottomSheet extends StatelessWidget {
  final String title; // 自定义标题
  final Widget child; // 中间承载的任意内容Widget
  final VoidCallback onCancel; // 取消按钮事件
  final VoidCallback onConfirm; // 确定按钮事件

  const CustomBottomSheet({
    super.key,
    required this.title,
    required this.child,
    required this.onCancel,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme().roundContainerColor, // 背景颜色为黑色
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(12), // 圆角边框
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // 高度自适应内容
        children: [
          // 头部标题和按钮
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: onCancel, // 取消按钮点击事件
                  child: Text(
                    '取消',
                    style: TextStyle(
                      color: AppTheme().wordSecondColor,
                      fontSize: 14.sp,
                      height: 1.1,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: AppTheme().wordPrimaryColor,
                    fontSize: 16.sp,
                    height: 1.1,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextButton(
                  onPressed: onConfirm, // 确定按钮点击事件
                  child: Text(
                    '确定',
                    style: TextStyle(
                      color: AppTheme().themeBackGroundColor,
                      fontSize: 16.sp,
                      height: 1.1,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // 承载的内容Widget
          Flexible(
            child: child,
          ),
        ],
      ),
    );
  }
}

class BlankCustomBottomSheet extends StatelessWidget {
  const BlankCustomBottomSheet(
      {super.key, required this.child, required this.onCancel});
  final Widget child; // 中间承载的任意内容Widget
  final VoidCallback onCancel; // 取消按钮事件

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme().roundContainerColor, // 背景颜色为黑色
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(12), // 圆角边框
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min, // 高度自适应内容
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.w, top: 12.h, right: 12.w),
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      onCancel.call();
                    },
                    child: Icon(
                      Icons.close_outlined,
                      size: 24.w,
                      color: AppTheme().wordSecondColor,
                    )),
              ],
            ),
          ),
          Flexible(
            child: child,
          ),
        ],
      ),
    );
  }
}

// 用于显示底部弹窗的方法
void showBlankBottomSheet(BuildContext context, Widget child,
    {Function()? onCancel, Function()? onConfirm}) {
  showModalBottomSheet(
    isDismissible: false,
    enableDrag: false,
    context: context,
    isScrollControlled: true, // 支持全屏高度内容
    backgroundColor: AppTheme().roundContainerColor, // 背景透明
    builder: (BuildContext context) {
      return BlankCustomBottomSheet(
        child: child,
        onCancel: () {
          Navigator.of(context).pop(); // 关闭弹窗
          onCancel?.call();
        },
      );
    },
  ).then((value) => {
        onCancel?.call(),
      });
}

// 用于显示底部弹窗的方法
void showCustomBottomSheet(BuildContext context, String title, Widget child,
    {Function()? onCancel, Function()? onConfirm}) {
  showModalBottomSheet(
    isDismissible: false,
    enableDrag: false,
    context: context,
    isScrollControlled: true, // 支持全屏高度内容
    backgroundColor: AppTheme().roundContainerColor, // 背景透明
    builder: (BuildContext context) {
      return CustomBottomSheet(
        title: title,
        child: child,
        onCancel: () {
          Navigator.of(context).pop(); // 关闭弹窗
          onCancel?.call();
        },
        onConfirm: () {
          // 处理确认逻辑
          Navigator.of(context).pop(); // 关闭弹窗
          onConfirm?.call();
          // Navigator.of(context).pop();
        },
      );
    },
  ).then((value) => {
        onCancel?.call(),
      });
}
