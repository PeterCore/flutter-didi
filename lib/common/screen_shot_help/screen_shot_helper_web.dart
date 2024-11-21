import 'dart:async';
import 'dart:convert';
import 'dart:html' as html;
import 'dart:js' as js;
import 'dart:typed_data'; // 用于 Uint8List

import 'package:churn/common/screen_shot_help/screen_shot_helper.dart';
import 'package:flutter/material.dart';

import 'dk_screen_shot.dart';

class ScreenShotHelperImpl implements ScreenShotHelper {
  @override
  Future<Uint8List?> capture(
      GlobalKey<ScreenShotState> screenShotGlobalKey) async {
    // TODO: implement signature
    final completer = Completer<Uint8List?>();

    // 通过 querySelector 获取 DOM 元素
    final element = html.document.querySelector('[data-key="capture-area"]');
    if (element != null) {
      js.context.callMethod('html2canvas', [
        element,
        js.JsObject.jsify({
          'onrendered': (canvas) {
            // 将 Canvas 转换为图片数据 URL
            final dataUrl = canvas.toDataUrl();
            // 提取 Base64 部分
            final base64 = dataUrl.split(',')[1]; // 移除 "data:image/png;base64,"
            // 将 Base64 转换为 Uint8List
            final bytes = base64Decode(base64);
            completer.complete(bytes); // 返回 Uint8List
          }
        })
      ]);
    } else {
      completer.complete(null); // 如果元素未找到，返回 null
    }

    return completer.future;
  }
}
