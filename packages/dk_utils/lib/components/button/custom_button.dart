import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final String imagePath;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double? vertical;
  final double? horizontal;
  final double? radius;
  final Color? borderColor;
  final double? borderWidth;
  const CustomButton({
    super.key,
    required this.text,
    required this.imagePath,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.vertical,
    this.horizontal,
    this.radius,
    this.borderColor,
    this.borderWidth,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: vertical ?? 21.h, horizontal: horizontal ?? 57.w),
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(radius ?? 12.r),
          border: Border.all(
            color: borderColor ?? Colors.white.withOpacity(0.0), // 边框颜色和透明度
            width: borderWidth ?? 0.5,
          ),
          // boxShadow: const [
          //   BoxShadow(
          //     color: Colors.black12,
          //     blurRadius: 5,
          //     offset: Offset(0, 5),
          //   ),
          // ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min, // 保持最小宽度
          children: [
            Image.asset(
              imagePath,
              width: 24,
              height: 24,
            ),
            SizedBox(width: 10.w), // 图片和文字之间的间距
            Text(
              text,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: textColor ?? Colors.black,
                  height: 1.2),
            ),
          ],
        ),
      ),
    );
  }
}
