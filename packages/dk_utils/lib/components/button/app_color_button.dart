// ignore_for_file: must_be_immutable

import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppColorButton extends StatelessWidget {
  const AppColorButton(
      {super.key,
      required this.title,
      this.bgGradient,
      this.bgColor,
      this.margin,
      this.padding,
      this.borderRadius,
      this.borderColor,
      this.width,
      this.isAuto = false,
      this.height,
      this.onClick,
      this.alignment,
      this.textStyle});

  //宽高
  final double? width;
  final double? height;

  //margin & padding
  final EdgeInsets? margin;
  final EdgeInsets? padding;

  //标题
  final String title;

  final TextStyle? textStyle;

  //背景颜色
  final Color? bgColor;

  //渐变
  final LinearGradient? bgGradient;

  //边框颜色 （固定1的宽度）
  final Color? borderColor;

  //圆角
  final BorderRadius? borderRadius;

  //是否自动布局
  final bool isAuto;

  final Alignment? alignment;

  //点击事件
  final GestureTapCallback? onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: isAuto
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [_content()],
            )
          : _content(),
    );
  }

  _content() {
    return Container(
      alignment: alignment ?? Alignment.center,
      width: width,
      height: height,
      padding: padding ?? EdgeInsets.only(left: 18.w, right: 18.w),
      margin: margin ?? EdgeInsets.zero,
      decoration: BoxDecoration(
          color: bgColor,
          gradient: bgGradient,
          border: borderColor != null
              ? Border.all(
                  width: 1.w,
                  color: borderColor!,
                )
              : null,
          borderRadius: borderRadius ?? BorderRadius.circular(999.h)),
      child: isAuto
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [_text()],
            )
          : _text(),
    );
  }

  _text() {
    return Text(
      title,
      style: textStyle ??
          AppStyle().bodyMedium_15(
            color: AppTheme().colorTxtInvPrimary,
          ),
    );
  }
}
