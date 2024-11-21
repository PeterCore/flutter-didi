import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:churn/common/screen_shot_help/screen_shot_helper.dart';
import 'package:flutter/cupertino.dart';

import 'dk_screen_shot.dart';

class ScreenShotHelperImpl implements ScreenShotHelper {
  @override
  Future<Uint8List?> capture(
      GlobalKey<ScreenShotState> screenShotGlobalKey) async {
    // TODO: implement signature
    // TODO: implement signature
    final state = screenShotGlobalKey.currentState!;
    final h = state.height;
    final w = state.width;
    final data = await state.toImage(pixelRatio: w / h);
    final bytes = await data.toByteData(format: ui.ImageByteFormat.png);
    Uint8List pngBytes = bytes!.buffer.asUint8List();
    return pngBytes;
  }
}
