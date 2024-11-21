import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_theme.dart';

class AppStyle {
  ///导航栏标题
  TextStyle navTitle_34(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 17.sp,
          height: 1.3,
          fontWeight: FontWeight.w500,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  ///大标题
  TextStyle bigTitle_45(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 23.sp,
          height: 1.3,
          fontWeight: FontWeight.w600,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  ///文字
  TextStyle numXL(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 14.sp,
          height: 1.4,
          fontWeight: FontWeight.bold,
          color: color,
          fontFamily: 'Inter',
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle numL(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 24.sp,
          height: 1.3,
          fontFamily: 'Inter',
          fontWeight: FontWeight.bold,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle numM(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 20.sp,
          height: 1.2,
          fontFamily: 'Inter',
          fontWeight: FontWeight.bold,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle numS(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 16.sp,
          height: 1.5,
          fontFamily: 'Inter',
          fontWeight: FontWeight.bold,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle headlineRegular_28(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 14.sp,
          height: 1.3,
          fontWeight: FontWeight.w400,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);
  TextStyle headlineRegular_26(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 13.sp,
          height: 1.4,
          fontWeight: FontWeight.w400,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle headlineMedium_28(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 14.sp,
          height: 1.3,
          fontWeight: FontWeight.w500,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle headlineSemibold_28(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 14.sp,
          height: 1.3,
          fontWeight: FontWeight.w700,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle headlineRegular_24(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 12.sp,
          height: 1.3,
          fontWeight: FontWeight.w400,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle headlineMedium_24(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 12.sp,
          height: 1.3,
          fontWeight: FontWeight.w500,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle headlineSemibold_24(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 12.sp,
          height: 1.3,
          fontWeight: FontWeight.w600,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle titleRegular_20(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 10.sp,
          height: 1.4,
          fontWeight: FontWeight.w400,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle titleMedium_20(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 10.sp,
          height: 1.4,
          fontWeight: FontWeight.w500,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle titleMedium_35(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 17.sp,
          height: 1.4,
          fontWeight: FontWeight.w500,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle titleSemibold_20(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 10.sp,
          height: 1.4,
          fontWeight: FontWeight.w600,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle titleRegular_18(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 9.sp,
          height: 1.3,
          fontWeight: FontWeight.w400,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle titleMedium_18(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 9.sp,
          height: 1.3,
          fontWeight: FontWeight.w500,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle titleSemibold_18(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 18.sp,
          height: 1.3,
          fontWeight: FontWeight.w600,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle titleRegular_16(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 16.sp,
          height: 1.4,
          fontWeight: FontWeight.w400,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle titleBody_16(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 16.sp,
          height: 1.8,
          fontWeight: FontWeight.w400,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle titleMedium_16(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 16.sp,
          height: 1.4,
          fontWeight: FontWeight.w500,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle titleSemibold_16(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 16.sp,
          height: 1.4,
          fontWeight: FontWeight.w600,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);
  TextStyle titleSemibold_45(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 22.sp,
          height: 1.4,
          fontWeight: FontWeight.w600,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);
  TextStyle titleRegular_45(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 23.sp,
          height: 1.4,
          fontWeight: FontWeight.w400,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);
  TextStyle titleRegular_35(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 17.sp,
          height: 1.4,
          fontWeight: FontWeight.w400,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);
  TextStyle titleRegular_34(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 17.sp,
          height: 1.4,
          fontWeight: FontWeight.w400,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle titleRegular_30(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 15.sp,
          height: 1.5,
          fontWeight: FontWeight.w400,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle bodyRegular_15(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 15.sp,
          height: 1.6,
          fontWeight: FontWeight.w400,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle bodyMedium_15(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 15.sp,
          height: 1.6,
          fontWeight: FontWeight.w500,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle bodySemibold_15(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 15.sp,
          height: 1.6,
          fontWeight: FontWeight.w600,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle bodySemibold_61(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 21.sp,
          height: 1.3,
          fontWeight: FontWeight.w600,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle bodyRegular_14(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 14.sp,
          height: 1.6,
          fontWeight: FontWeight.w400,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);
  TextStyle bodyRegular_25(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 12.sp,
          height: 1.0,
          fontWeight: FontWeight.w400,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle bodyBody_14(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 14.sp,
          height: 1.8,
          fontWeight: FontWeight.w500,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle bodyMedium_14(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 14.sp,
          height: 1.6,
          fontWeight: FontWeight.w500,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle bodySemibold_14(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 14.sp,
          height: 1.6,
          fontWeight: FontWeight.w600,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle bodyRegular_12(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 12.sp,
          height: 1.5,
          fontWeight: FontWeight.w400,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle bodyMedium_12(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 12.sp,
          height: 1.5,
          fontWeight: FontWeight.w500,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle bodySemibold_12(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 12.sp,
          height: 1.5,
          fontWeight: FontWeight.w600,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle labelRegular_10(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 10.sp,
          height: 1.4,
          fontWeight: FontWeight.w400,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle labelMedium_10(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 10.sp,
          height: 1.4,
          fontWeight: FontWeight.w500,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle labelSemibold_10(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 10.sp,
          height: 1.4,
          fontWeight: FontWeight.w600,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle labelRegular_8(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 8.sp,
          height: 1.5,
          fontWeight: FontWeight.w400,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle labelMedium_8(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 8.sp,
          height: 1.5,
          fontWeight: FontWeight.w500,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  TextStyle labelSemibold_8(
          {Color? color,
          TextDecoration? decoration,
          TextBaseline? textBaseline}) =>
      textStyle(
          fontSize: 8.sp,
          height: 1.5,
          fontWeight: FontWeight.w600,
          color: color,
          decoration: decoration,
          textBaseline: textBaseline);

  //文字样式
  TextStyle textStyle(
      {TextOverflow? overflow,
      Color? color,
      String? fontFamily,
      double? fontSize,
      FontStyle? fontStyle,
      double? height,
      TextDecoration? decoration,
      TextBaseline? textBaseline,
      FontWeight? fontWeight}) {
    return TextStyle(
        overflow: overflow ?? TextOverflow.ellipsis,
        color: color ?? AppTheme().colorTxtDefPrimary,
        fontSize: fontSize ?? 16.sp,
        fontStyle: fontStyle,
        height: height,
        textBaseline: textBaseline,
        fontFamily: fontFamily,
        decoration: decoration ?? TextDecoration.none,
        fontWeight: fontWeight ?? FontWeight.normal);
  }

  ///输入框
  InputDecoration inputDecoration(
      {String? hintText,
      TextStyle? hintStyle,
      Widget? counter,
      TextStyle? counterStyle,
      TextStyle? suffixStyle}) {
    return InputDecoration(
        counter: counter,
        isCollapsed: true,
        hintText: hintText,
        contentPadding: const EdgeInsets.all(0),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        suffixStyle: suffixStyle,
        counterStyle: counterStyle,
        hintStyle:
            hintStyle ?? bodyRegular_14(color: AppTheme().colorTxtDefScondary));
  }

  ///默认图片
  // defaultImage({double? width, double? height, Color? color, double? radius}) {
  //   return AppContainer(
  //     radius: radius ?? 1.w,
  //     color: color ?? AppTheme().colorFillBgGrey,
  //     width: width,
  //     height: height,
  //   );
  // }

  ///渐变
  //vip
  LinearGradient get vipGradient => const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [
            0.0,
            1.0
          ],
          colors: [
            Color(0xFF3B332B),
            Color(0xFF11100B),
          ]);

  //team
  LinearGradient get teamGradient => const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [
            0.0,
            1.0
          ],
          colors: [
            Color(0xFF273435),
            Color(0xFF273435),
          ]);

  //股权中心
  LinearGradient get invertGradient => const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [
            0.0,
            1.0
          ],
          colors: [
            Color(0xFF1AAE81),
            Color(0xFF0B3248),
          ]);

  //公告
  LinearGradient get noticeGradient => const LinearGradient(
        begin: Alignment(-0.42, -0.91),
        end: Alignment(0.42, 0.91),
        colors: [Color(0xFFAEDED5), Colors.white],
      );
}
