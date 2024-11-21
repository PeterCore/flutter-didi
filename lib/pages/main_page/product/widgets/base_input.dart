import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LimitedRangeTextField extends StatelessWidget {
  final TextEditingController? controller;
  final int? minValue;
  final int? maxValue;
  final String hintText;
  final int? maxLength;
  final ValueChanged<String>? onChanged;

  const LimitedRangeTextField({
    super.key,
    this.controller,
    this.minValue,
    this.maxValue,
    required this.hintText,
    this.maxLength,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16.w),
        hintText: hintText,
        hintStyle: TextStyle(
          color: const Color(0xFF5B5C69),
          fontSize: 20.sp,
          fontWeight: FontWeight.w400,
        ),
        filled: true,
        fillColor: const Color(0xFFF0F3F5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
      style: TextStyle(
        color: const Color(0xFF15141C),
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
      ),
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        if (maxLength != null)
          LengthLimitingTextInputFormatter(maxLength),
        if (minValue != null && maxValue != null)
          RangeLimitingTextInputFormatter(
            minValue: minValue!,
            maxValue: maxValue!,
          ),
      ],
    );
  }
}

class RangeLimitingTextInputFormatter extends TextInputFormatter {
  final int minValue;
  final int maxValue;

  RangeLimitingTextInputFormatter({required this.minValue, required this.maxValue});

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) {
      return newValue;
    }

    final num? value = num.tryParse(newValue.text);

    if (value != null) {
      if (value < minValue) {
        return newValue.copyWith(
          text: minValue.toString(),
          selection: TextSelection.collapsed(offset: minValue.toString().length),
        );
      } else if (value > maxValue) {
        return newValue.copyWith(
          text: maxValue.toString(),
          selection: TextSelection.collapsed(offset: maxValue.toString().length),
        );
      }
    }

    return newValue;
  }
}
