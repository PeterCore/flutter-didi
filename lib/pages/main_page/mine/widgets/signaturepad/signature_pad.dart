import 'dart:typed_data';

import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/cupertino.dart';

abstract class SignaturePad {
  Future<Uint8List?> signature(
      GlobalKey<SfSignaturePadState> signatureGlobalKey,
      double width,
      double height);
}

class SignaturePadImpl implements SignaturePad {
  @override
  Future<Uint8List?> signature(
      GlobalKey<SfSignaturePadState> signatureGlobalKey,
      double width,
      double height) {
    // TODO: implement signature
    throw UnimplementedError();
  }
}
