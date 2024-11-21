import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class RoundDashContainer extends StatelessWidget {
  const RoundDashContainer(
      {super.key,
      required this.child,
      this.backgroundColor,
      this.horizontal,
      this.color,
      this.vertical});
  final Widget child;
  final Color? backgroundColor;
  final double? horizontal;
  final double? vertical;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(20.r),
        dashPattern: const [3, 3], //
        color: color ?? const Color(0xFF353F4A),
        strokeWidth: 1.0,
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor ?? const Color(0xFF353F4A),
            borderRadius: BorderRadius.circular(20.r), // 圆角
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontal ?? 50.w, vertical: vertical ?? 25.h),
            child: child,
          ),
        )); // 虚线宽度;
  }
}

class RoundGradientContainer extends StatelessWidget {
  const RoundGradientContainer(
      {super.key,
      this.child,
      this.horizontal,
      this.vertical,
      this.boxShadow,
      this.gradientColors,
      this.backgroundColor,
      this.borderColor,
      this.borderWidth});
  final Widget? child;
  final double? horizontal;
  final double? vertical;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderWidth;
  final List<Color>? gradientColors;
  final List<BoxShadow>? boxShadow;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: horizontal ?? 24.w, vertical: vertical ?? 24.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
              strokeAlign: BorderSide.strokeAlignOutside,
              style: BorderStyle.solid,
              color: borderColor ?? Colors.white,
              width: borderWidth ?? 2.w),
          gradient: LinearGradient(
            colors: gradientColors ?? [Colors.white, Colors.white],
          ),
        ),
        child: child);
  }
}

class RoundContainer extends StatelessWidget {
  const RoundContainer(
      {super.key,
      this.child,
      this.horizontal,
      this.vertical,
      this.boxShadow,
      this.imagePath,
      this.backgroundColor});
  final Widget? child;
  final double? horizontal;
  final double? vertical;
  final Color? backgroundColor;
  final String? imagePath;
  final List<BoxShadow>? boxShadow;
  @override
  Widget build(BuildContext context) {
    return imagePath == null
        ? Container(
            padding: EdgeInsets.symmetric(
                horizontal: horizontal ?? 24.w, vertical: vertical ?? 24.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: backgroundColor ?? AppTheme().roundContainerColor,
                boxShadow: boxShadow ??
                    const [
                      BoxShadow(
                          color: Color(0xFFE6ECEA),
                          offset: Offset(0.0, 0.0), //阴影y轴偏移量
                          blurRadius: 0, //阴影模糊程度
                          spreadRadius: 0.5 //阴影扩散程度
                          ),
                    ]),
            child: child)
        : Container(
            padding: EdgeInsets.symmetric(
                horizontal: horizontal ?? 24.w, vertical: vertical ?? 24.h),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath ?? ""),
                  fit: BoxFit.fill, // 让图片覆盖整个容器
                ),
                borderRadius: BorderRadius.circular(12.r),
                color: backgroundColor ?? AppTheme().roundContainerColor,
                boxShadow: boxShadow ??
                    const [
                      BoxShadow(
                          color: Color(0xFFE6ECEA),
                          offset: Offset(0.0, 0.0), //阴影y轴偏移量
                          blurRadius: 0, //阴影模糊程度
                          spreadRadius: 0.5 //阴影扩散程度
                          ),
                    ]),
            child: child);
  }
}
