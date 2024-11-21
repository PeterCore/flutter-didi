import 'dart:typed_data';

import 'package:flutter/cupertino.dart';

import 'dk_screen_shot.dart';

abstract class ScreenShotHelper {
  Future<Uint8List?> capture(GlobalKey<ScreenShotState> screenShotGlobalKey);
}

class ScreenShotHelperImpl implements ScreenShotHelper {
  @override
  Future<Uint8List?> capture(GlobalKey<ScreenShotState> screenShotGlobalKey) {
    // TODO: implement signature
    throw UnimplementedError();
  }
}
