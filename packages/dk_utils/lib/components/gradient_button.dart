import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_theme.dart';
import '../utils/app_style.dart';
import '../vendor/dounce/src/debouncer_widget.dart';

class GradientButton extends StatelessWidget {
  final String text;
  final int index;
  final Function(int index)? onPressed;
  final Color textColor;
  final Color disableTextColor;

  final List<Color> gradientColors;
  final List<Color> disableGradientColors;
  final double borderRadius;
  final Color borderColor;
  final double borderWidth;
  final bool? enable;
  final double? vertical;
  final double? horizontal;
  final int? bounceTime;

  const GradientButton({
    super.key,
    required this.text,
    this.enable = true,
    this.index = 0,
    this.bounceTime,
    required this.onPressed,
    this.vertical,
    this.horizontal,
    this.textColor = Colors.white,
    this.gradientColors = AppTheme.buttonGradientColors,
    this.disableGradientColors = const [Colors.grey, Colors.grey], // 默认绿色渐变
    this.borderRadius = AppTheme.borderRadius,
    this.borderColor = Colors.transparent,
    this.borderWidth = 0.0,
    this.disableTextColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return TapDebouncer(
      cooldown: Duration(milliseconds: bounceTime ?? 1000),
      onTap: () async {
        onPressed?.call(index);
      }, // your tap handler moved here
      builder: (BuildContext context, TapDebouncerFunc? onTap) {
        return InkWell(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: vertical ?? 15.0.h, horizontal: horizontal ?? 15.w),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: enable == true ? gradientColors : disableGradientColors,
              ),
              borderRadius: BorderRadius.circular(borderRadius),
              border: Border.all(color: borderColor, width: borderWidth),
            ),
            child: Center(
              child: Text(
                text,
                style: AppStyle().headlineMedium_28(
                    color: enable == true ? textColor : disableTextColor),
              ),
            ),
          ),
        );
      },
    );

    return InkWell(
      onTap: () async {
        onPressed?.call(index);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: vertical ?? 15.0.h, horizontal: horizontal ?? 15.w),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: enable == true ? gradientColors : disableGradientColors,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: borderColor, width: borderWidth),
        ),
        child: Center(
          child: Text(
            text,
            style: AppStyle().headlineMedium_28(
                color: enable == true ? textColor : disableTextColor),
          ),
        ),
      ),
    );
  }
}
