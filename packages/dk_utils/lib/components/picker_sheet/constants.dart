import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pickers/style/picker_style.dart';

PickerStyle configPaymentPicker({String? mainTitle}) {
  Widget cancelButton = Padding(
    padding: EdgeInsets.only(left: 10.w),
    child: Text(
      '取消',
      style: TextStyle(
        color: AppTheme().wordPrimaryColor,
        fontSize: 15.sp, // 字体大小为30
        fontWeight: FontWeight.w400, // 字体权重为w400
        height: 1.4, // 行高
      ), // 前缀文字使用封装样式
    ),
  );

  Widget commitButton = Padding(
    padding: EdgeInsets.only(right: 20.w),
    child: Text(
      '确定',
      style: TextStyle(
        color: AppTheme().themeBackGroundColor,
        fontSize: 15.sp, // 字体大小为30
        fontWeight: FontWeight.w400, // 字体权重为w400
        height: 1.4, // 行高
      ), // 前缀文字使用封装样式
    ),
  );

  // 头部样式
  Decoration headDecoration = BoxDecoration(
      color: AppTheme().roundContainerColor,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8), topRight: Radius.circular(8)));

  Widget title = Center(
      child: Text(
    mainTitle ?? "选择充值方式",
    style: TextStyle(
        fontWeight: FontWeight.w500,
        color: AppTheme().wordPrimaryColor,
        fontSize: 16.sp,
        height: 1.2),
  ));

  var pickerStyle = PickerStyle(
      cancelButton: cancelButton,
      commitButton: commitButton,
      menuHeight: 22.h,
      headDecoration: headDecoration,
      title: title,
      textColor: AppTheme().wordPrimaryColor,
      backgroundColor: AppTheme().roundContainerColor,
      textSize: 17.sp);

  return pickerStyle;
}

class TextStyleUtils {
  static TextStyle getTextStyle(Color color) {
    return TextStyle(
      color: color,
      fontSize: 15.sp, // 字体大小为30
      fontWeight: FontWeight.w400, // 字体权重为w400
      height: 1.4, // 行高
    );
  }
}

PickerStyle configWithDrawPicker() {
  Widget cancelButton = Padding(
    padding: EdgeInsets.only(left: 10.w),
    child: Text(
      '取消',
      style: TextStyle(
        color: AppTheme().wordPrimaryColor,
        fontSize: 15.sp, // 字体大小为30
        fontWeight: FontWeight.w400, // 字体权重为w400
        height: 1.4, // 行高
      ), // 前缀文字使用封装样式
    ),
  );

  Widget commitButton = Padding(
    padding: EdgeInsets.only(right: 20.w),
    child: Text(
      '确定',
      style: TextStyle(
        color: AppTheme().themeBackGroundColor,
        fontSize: 15.sp, // 字体大小为30
        fontWeight: FontWeight.w400, // 字体权重为w400
        height: 1.4, // 行高
      ), // 前缀文字使用封装样式
    ),
  );

  // 头部样式
  Decoration headDecoration = BoxDecoration(
      color: AppTheme().roundContainerColor,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8), topRight: Radius.circular(8)));

  Widget title = Center(
      child: Text(
    "选择提现方式",
    style: TextStyle(
        fontWeight: FontWeight.w500,
        color: AppTheme().wordPrimaryColor,
        fontSize: 16.sp,
        height: 1.2),
  ));

  var pickerStyle = PickerStyle(
      cancelButton: cancelButton,
      commitButton: commitButton,
      menuHeight: 22.h,
      headDecoration: headDecoration,
      title: title,
      textColor: AppTheme().wordPrimaryColor,
      backgroundColor: AppTheme().roundContainerColor,
      textSize: 17.sp);

  return pickerStyle;
}

PickerStyle configAddressPicker() {
  Widget cancelButton = Padding(
    padding: EdgeInsets.only(left: 10.w),
    child: Text(
      '取消',
      style: TextStyle(
        color: AppTheme().wordSecondColor,
        fontSize: 15.sp, // 字体大小为30
        fontWeight: FontWeight.w400, // 字体权重为w400
        height: 1.4, // 行高
      ), // 前缀文字使用封装样式
    ),
  );

  Widget commitButton = Padding(
    padding: EdgeInsets.only(right: 10.w),
    child: Text(
      '确定',
      style: TextStyle(
        color: AppTheme().themeBackGroundColor,
        fontSize: 15.sp, // 字体大小为30
        fontWeight: FontWeight.w400, // 字体权重为w400
        height: 1.4, // 行高
      ), // 前缀文字使用封装样式
    ),
  );

  // 头部样式
  Decoration headDecoration = BoxDecoration(
      color: AppTheme().roundContainerColor,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8), topRight: Radius.circular(8)));

  Widget title = Center(
      child: Text(
    "选择所在地址",
    style: TextStyle(
        fontWeight: FontWeight.w500,
        color: AppTheme().wordSecondColor,
        fontSize: 16.sp,
        height: 1.2),
  ));

  var pickerStyle = PickerStyle(
    cancelButton: cancelButton,
    commitButton: commitButton,
    headDecoration: headDecoration,
    title: title,
    textColor: AppTheme().wordSecondColor,
    backgroundColor: AppTheme().roundContainerColor,
  );

  return pickerStyle;
}

PickerStyle configDatePicker() {
  Widget cancelButton = Padding(
    padding: EdgeInsets.only(left: 10.w),
    child: Text(
      '取消',
      style: TextStyle(
        color: AppTheme().wordSecondColor,
        fontSize: 15.sp, // 字体大小为30
        fontWeight: FontWeight.w400, // 字体权重为w400
        height: 1.4, // 行高
      ), // 前缀文字使用封装样式
    ),
  );

  Widget commitButton = Padding(
    padding: EdgeInsets.only(right: 10.w),
    child: Text(
      '确定',
      style: TextStyle(
        color: AppTheme().themeBackGroundColor,
        fontSize: 15.sp, // 字体大小为30
        fontWeight: FontWeight.w400, // 字体权重为w400
        height: 1.4, // 行高
      ), // 前缀文字使用封装样式
    ),
  );

  // 头部样式
  Decoration headDecoration = BoxDecoration(
      color: AppTheme().roundContainerColor,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8), topRight: Radius.circular(8)));

  Widget title = Center(
      child: Text(
    "选择时间",
    style: TextStyle(
        fontWeight: FontWeight.w500,
        color: AppTheme().wordSecondColor,
        fontSize: 16.sp,
        height: 1.2),
  ));

  var pickerStyle = PickerStyle(
    cancelButton: cancelButton,
    commitButton: commitButton,
    headDecoration: headDecoration,
    title: title,
    textColor: AppTheme().wordSecondColor,
    backgroundColor: AppTheme().roundContainerColor,
  );

  return pickerStyle;
}
