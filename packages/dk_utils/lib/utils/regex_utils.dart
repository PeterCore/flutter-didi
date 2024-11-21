import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class RegexUtils {
  // 校验身份证号码有效性
  static bool validateIDCard(String id) {
    // 校验格式：前17位为数字，最后一位为数字或X
    if (!RegExp(r'^\d{17}(\d|X)$').hasMatch(id)) {
      return false;
    }

    // 校验生日是否合法
    String birthDate = id.substring(6, 14); // 获取出生日期部分
    if (!validateDate(birthDate)) {
      return false;
    }

    // 校验码校验
    return checkSum(id);
  }

  // 校验身份证中的出生日期是否合法
  static bool validateDate(String date) {
    try {
      int year = int.parse(date.substring(0, 4));
      int month = int.parse(date.substring(4, 6));
      int day = int.parse(date.substring(6, 8));

      DateTime birth = DateTime(year, month, day);
      DateTime today = DateTime.now();

      // 出生日期不能超过当前日期
      if (birth.isAfter(today)) return false;

      // 校验年月日是否合法
      return year > 1900 && month >= 1 && month <= 12 && day >= 1 && day <= 31;
    } catch (e) {
      return false;
    }
  }

  // 校验身份证校验码是否正确
  static bool checkSum(String id) {
    List<int> weight = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2];
    List<String> checkCode = [
      '1',
      '0',
      'X',
      '9',
      '8',
      '7',
      '6',
      '5',
      '4',
      '3',
      '2'
    ];

    int sum = 0;
    for (int i = 0; i < 17; i++) {
      sum += int.parse(id[i]) * weight[i];
    }
    int remainder = sum % 11;
    return checkCode[remainder] == id[17];
  }

  ///手机号限制
  ///
  ///
  ///

  static bool validateLuhn(String cardNumber) {
    int sum = 0;
    bool isDouble = false;
    // 从右向左遍历
    for (int i = cardNumber.length - 1; i >= 0; i--) {
      int digit = int.parse(cardNumber[i]);
      if (isDouble) {
        digit *= 2;
        if (digit > 9) {
          digit -= 9;
        }
      }
      sum += digit;
      isDouble = !isDouble;
    }
    return sum % 10 == 0;
  }

  static bool allowBankNo(String cardNo) {
    return RegExp(r'^\d{13,19}$').hasMatch(cardNo) && validateLuhn(cardNo);
  } // 银行卡号

  static bool allowZhiFuBaoCard(String cardNo) {
    // 正则表达式：匹配中国手机号
    final phoneRegExp = RegExp(r'^1[3-9]\d{9}$');

    // 正则表达式：匹配常见邮箱格式
    final emailRegExp =
        RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$');
    return phoneRegExp.hasMatch(cardNo) || emailRegExp.hasMatch(cardNo);
  }

  static allowMobile() => [
        FilteringTextInputFormatter.digitsOnly, // 只允许输入数字
        LengthLimitingTextInputFormatter(11), // 限制长度为11
      ];

  static allowChinese() =>
      [FilteringTextInputFormatter.allow(RegExp(r'^[\u4e00-\u9fa5]+$'))];

  ///验证手机号
  static isVerifyTel(mobile) => RegExp(r'^1[3456789]\d{9}$').hasMatch(mobile);

  ///密码限制
  static allowPw() => [
        FilteringTextInputFormatter.allow(RegExp("^[a-z0-9A-Z]+")), // 只允许输入字母数字
        LengthLimitingTextInputFormatter(18), // 限制长度为18
      ];

  ///身份证
  static allowIdCard() => [
        LengthLimitingTextInputFormatter(18), // 限制输入18位
        IDCardInputFormatter(),
      ];

  ///验证密码
  static isVerifyPw(pw) =>
      RegExp(r'^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{8,18}$').hasMatch(pw);

  ///邀请码限制
  static allowInvite() => [
        FilteringTextInputFormatter.allow(RegExp("^[a-z0-9A-Z]+")), // 只允许输入字母数字
        LengthLimitingTextInputFormatter(8), // 限制长度为11
      ];

  ///密钥限制
  static allowSecret() => [
        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')), // 只允许输入数字
        LengthLimitingTextInputFormatter(12), // 限制长度为12
      ];
  static allChinese() => [
        FilteringTextInputFormatter.allow(RegExp(r'[\u4e00-\u9fa5]')),
      ];

  ///验证密钥
  static isVerifySecret(pw) =>
      RegExp(r'^(?=.*[A-Z])(?=.*\d)[A-Z\d]{6,18}$').hasMatch(pw);
}

class XNumberTextInputFormatter extends TextInputFormatter {
  int? maxIntegerLength;
  int? maxDecimalLength;
  bool _isAllowDecimal = true;

  /// [maxIntegerLength]限定整数的最大位数，为null时不限
  /// [maxDecimalLength]限定小数点的最大位数，为null时不限
  /// [isAllowDecimal]是否可以为小数，默认是可以为小数，也就是可以输入小数点
  XNumberTextInputFormatter(
      {this.maxIntegerLength,
      this.maxDecimalLength,
      bool isAllowDecimal = true})
      : _isAllowDecimal = isAllowDecimal;

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String value = newValue.text.trim() ?? ''; //去掉前后空格
    int selectionIndex = newValue.selection.end;
    if (_isAllowDecimal) {
      if (value == '.') {
        value = '0.';
        selectionIndex++;
      } else if (value != '' && _isToDoubleError(value)) {
        //不是double输入数据
        return _oldTextEditingValue(oldValue);
      }
      //包含小数点
      if (value.contains('.')) {
        int pointIndex = value.indexOf('.');
        String beforePoint = value.substring(0, pointIndex);
//      print('$beforePoint');
        String afterPoint = value.substring(pointIndex + 1, value.length);
//      print('$afterPoint');
        //小数点前面没内容补0
        if (beforePoint.isEmpty) {
          value = '0.${afterPoint ?? ''}';
          selectionIndex++;
        } else {
          //限定整数位数
          if (null != maxIntegerLength) {
            if (beforePoint.length > maxIntegerLength!) {
              return _oldTextEditingValue(oldValue);
            }
          }
        }
        //限定小数点位数
        if (null != maxDecimalLength) {
          if (afterPoint.length > maxDecimalLength!) {
            return _oldTextEditingValue(oldValue);
          }
        }
      } else {
        //限定整数位数
        if (null != maxIntegerLength) {
          if (value.length > maxIntegerLength!) {
            return _oldTextEditingValue(oldValue);
          }
        }
      }
    } else {
      if (value.contains('.') ||
          (value != '' && _isToDoubleError(value)) ||
          (null != maxIntegerLength && value.length > maxIntegerLength!)) {
        return _oldTextEditingValue(oldValue);
      }
    }

    return TextEditingValue(
      text: value,
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }

  ///返回旧的输入内容
  TextEditingValue _oldTextEditingValue(TextEditingValue oldValue) {
    return TextEditingValue(
      text: oldValue.text,
      selection: TextSelection.collapsed(offset: oldValue.selection.end),
    );
  }

  ///输入内容不能解析成double
  bool _isToDoubleError(String value) {
    try {
      double.parse(value);
    } catch (e) {
      return true;
    }
    return false;
  }
}

// 自定义身份证号码输入格式化器
class IDCardInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final String newText = newValue.text;

    // 如果超出长度限制则不更新输入
    if (newText.length > 18) {
      return oldValue;
    }

    // 前17位只能输入数字
    if (newText.length <= 17) {
      final isNumeric = RegExp(r'^\d*$');
      if (!isNumeric.hasMatch(newText)) {
        return oldValue; // 如果前17位不是数字则不更新输入
      }
    }

    // 第18位只能输入数字或字母X
    if (newText.length == 18) {
      final lastChar = newText.characters.last;
      final isValidLastChar = RegExp(r'\d|X').hasMatch(lastChar);
      if (!isValidLastChar) {
        return oldValue; // 如果第18位不是数字或X则不更新输入
      }
    }

    // 如果输入有效，返回新值
    return newValue;
  }
}
