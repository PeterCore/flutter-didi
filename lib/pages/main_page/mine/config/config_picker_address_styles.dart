import 'package:flutter/material.dart';
import 'package:flutter_pickers/style/picker_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyleUtils {
  static TextStyle getTextStyle(Color color) {
    return TextStyle(
      color: color,
      fontSize: 15.sp, // 字体大小为30
      fontWeight: FontWeight.w400, // 字体权重为w400
      height: 1, // 行高
    );
  }
}

PickerStyle configAddressPicker() {
  Widget cancelButton = Padding(
    padding: EdgeInsets.only(left: 20.w),
    child: Text(
      '取消',
      style: TextStyle(
        color: Colors.white,
        fontSize: 30.sp, // 字体大小为30
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
        color: const Color(0xFF3ABDFE),
        fontSize: 30.sp, // 字体大小为30
        fontWeight: FontWeight.w400, // 字体权重为w400
        height: 1.4, // 行高
      ), // 前缀文字使用封装样式
    ),
  );

  // 头部样式
  Decoration headDecoration = BoxDecoration(
      color: const Color(0xFFCFF1FE).withOpacity(0.1),
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8), topRight: Radius.circular(8)));

  Widget title = Center(
      child: Text(
    "选择所在地址",
    style: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.white,
        fontSize: 32.sp,
        height: 1.2),
  ));

  var pickerStyle = PickerStyle(
    cancelButton: cancelButton,
    commitButton: commitButton,
    headDecoration: headDecoration,
    title: title,
    textColor: Colors.white,
    backgroundColor: const Color(0xFFCFF1FE).withOpacity(0.1),
  );

  return pickerStyle;
}
