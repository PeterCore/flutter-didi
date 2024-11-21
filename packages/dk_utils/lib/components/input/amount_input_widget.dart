import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_theme.dart';
import '../../utils/dk_number_textInput_formatter.dart';

class AmountInputWidget extends StatelessWidget {
  const AmountInputWidget(
      {super.key,
      required this.controller,
      this.prefixString,
      this.hintText,
      this.digit = 0,
      this.integer,
      this.onChanged,
      this.suffixString,
      this.readOnly});
  final TextEditingController controller;
  final String? prefixString;
  final String? suffixString;
  final String? hintText;
  final int? digit;
  final bool? readOnly;
  final int? integer;
  final Function(String value)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          prefixString ?? "",
          style: TextStyle(
              fontSize: 16.sp,
              color: AppTheme().wordPrimaryColor,
              height: 1.2,
              fontWeight: FontWeight.w500), // 单位符号
        ),
        SizedBox(width: 8.w),
        Expanded(
          child: TextField(
            readOnly: readOnly ?? false,
            style: TextStyle(
              color: AppTheme().wordPrimaryColor, // 设置输入文本的颜色为红色
            ),
            textAlign: TextAlign.start,
            controller: controller,
            cursorColor: AppTheme().wordPrimaryColor,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
              hintText: hintText ?? "",
              hintStyle: TextStyle(
                  fontSize: 16.sp,
                  color: AppTheme().wordSecondColor,
                  fontWeight: FontWeight.w400,
                  height: 1),
              border: InputBorder.none, // 无边框
            ),
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [
              FilteringTextInputFormatter(RegExp("[0-9.]"), allow: true),
              DKNumberTextInputFormatter(digit: digit ?? 0),
              // DecimalTextInputFormatter(
              //     maxDecimalLength: integer ?? 10,
              //     maxIntegerLength: digit ?? 0),
            ],
            onChanged: (value) {
              onChanged?.call(value);
            },
          ),
        ),
        SizedBox(width: 8.w),
        Text(
          suffixString ?? "",
          style: TextStyle(
              fontSize: 16.sp,
              color: AppTheme().wordPrimaryColor,
              height: 1.2,
              fontWeight: FontWeight.w400), // 单位符号
        ),
      ],
    );
  }
}
