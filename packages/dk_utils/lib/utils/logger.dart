/// FileName logger
///
/// @Author RealOne
/// @Date 2024/9/8 10:31
///
/// @Description TODO
///
import 'package:flutter/cupertino.dart';

class Logger {
  // Sample of abstract logging function
  static void write(String text, {bool isError = false}) {
    Future.microtask(() => debugPrint('** $text. isError: [$isError]'));
  }
}
