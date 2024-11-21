// 判断文本是否为单行
import 'package:flutter/cupertino.dart';

bool isTextSingleLine(String text, BuildContext context, double maxWidth,
    {TextStyle? style, int? maxLines}) {
  final textPainter = TextPainter(
    text: TextSpan(text: text, style: style),
    maxLines: maxLines ?? 1,
    textDirection: TextDirection.ltr,
  );
  textPainter.layout(maxWidth: maxWidth);
  return textPainter.didExceedMaxLines == false; // 如果没超过 maxLines，说明是单行
}
