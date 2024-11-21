import 'package:flutter/services.dart';
// FilteringTextInputFormatter(RegExp("[0-9.]"), allow: true),

// 自定义输入格式化器
class DecimalTextInputFormatter extends TextInputFormatter {
  final int maxIntegerLength;
  final int maxDecimalLength;

  DecimalTextInputFormatter({
    required this.maxIntegerLength,
    required this.maxDecimalLength,
  });

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // 正则表达式：整数部分最多 maxIntegerLength 位，小数部分最多 maxDecimalLength 位
    final RegExp regExp = RegExp(r'^\d{0,' +
        maxIntegerLength.toString() +
        r'}(\.\d{0,' +
        maxDecimalLength.toString() +
        r'})?$');

    if (regExp.hasMatch(newValue.text)) {
      // 如果输入内容符合正则表达式，允许输入
      return newValue;
    } else {
      // 否则返回旧的内容，阻止输入
      return oldValue;
    }
  }
}

class DKNumberTextInputFormatter extends TextInputFormatter {
  static const defaultDouble = 0.001;

  /// 允许的小数位数，-1 代表不限制小数位数
  final int digit;

  /// 最大整数位数，默认为10位
  final int maxIntegerLength;

  DKNumberTextInputFormatter({this.digit = -1, this.maxIntegerLength = 10});

  /// 将字符串转换为浮点数，解析失败则返回默认值
  static double strToFloat(String str, [double defaultValue = defaultDouble]) {
    try {
      return double.parse(str);
    } catch (e) {
      return defaultValue;
    }
  }

  /// 获取小数位数
  static int getValueDigit(String value) {
    if (value.contains(".")) {
      return value.split(".")[1].length;
    } else {
      return 0; // 如果没有小数点，则小数位为0
    }
  }

  /// 获取整数位数
  static int getIntegerPartLength(String value) {
    if (value.contains(".")) {
      return value.split(".")[0].length;
    } else {
      return value.length; // 整数部分位数
    }
  }

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String value = newValue.text;
    int selectionIndex = newValue.selection.end;

    // 处理仅输入小数点的情况
    if (value == ".") {
      value = "0.";
      selectionIndex++;
    }

    // 限制输入负号的情况（支持负数输入）
    if (value == "-") {
      return newValue;
    }

    // 解析失败，或者超出整数或小数限制
    if (value.isNotEmpty &&
        (strToFloat(value, defaultDouble) == defaultDouble ||
            getValueDigit(value) > digit && digit != -1 || // 超过小数位数限制
            getIntegerPartLength(value) > maxIntegerLength)) {
      // 超过整数位数限制
      value = oldValue.text; // 恢复旧的值
      selectionIndex = oldValue.selection.end; // 保持旧的光标位置
    }

    return TextEditingValue(
      text: value,
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}

// class DKNumberTextInputFormatter extends TextInputFormatter {
//   static const defaultDouble = 0.001;
//
//   ///允许的小数位数，-1代表不限制位数
//   int digit;
//   DKNumberTextInputFormatter({this.digit = -1});
//   static double strToFloat(String str, [double defaultValue = defaultDouble]) {
//     try {
//       return double.parse(str);
//     } catch (e) {
//       return defaultValue;
//     }
//   }
//
//   ///获取目前的小数位数
//   static int getValueDigit(String value) {
//     if (value.contains(".")) {
//       return value.split(".")[1].length;
//     } else {
//       return -1;
//     }
//   }
//
//   @override
//   TextEditingValue formatEditUpdate(
//       TextEditingValue oldValue, TextEditingValue newValue) {
//     String value = newValue.text;
//     int selectionIndex = newValue.selection.end;
//     if (value == ".") {
//       value = "0.";
//       selectionIndex++;
//     } else if (value == "-") {
//       value = "-";
//       selectionIndex++;
//     } else if (value != "" &&
//             value != defaultDouble.toString() &&
//             strToFloat(value, defaultDouble) == defaultDouble ||
//         getValueDigit(value) > digit) {
//       value = oldValue.text;
//       selectionIndex = oldValue.selection.end;
//     }
//     return TextEditingValue(
//       text: value,
//       selection: TextSelection.collapsed(offset: selectionIndex),
//     );
//   }
// }
