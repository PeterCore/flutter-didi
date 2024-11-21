import 'dart:convert';

extension StringExtension on String {
  bool isValidJson() {
    try {
      // 尝试解析 JSON
      json.decode(this);
      return true; // 解析成功，说明是有效的 JSON
    } catch (e) {
      // 解析失败，说明不是有效的 JSON
      return false;
    }
  }
}
