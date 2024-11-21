import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:churn/pages/main_page/mine/widgets/signaturepad/signature_pad.dart';
import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

class SignaturePadImpl implements SignaturePad {
  @override
  Future<Uint8List?> signature(
      GlobalKey<SfSignaturePadState> signatureGlobalKey,
      double width,
      double height) async {
    // TODO: implement signature
    final data =
        await signatureGlobalKey.currentState!.toImage(pixelRatio: 1.0);
    final bytes = await data.toByteData(format: ui.ImageByteFormat.png);
    Uint8List pngBytes = bytes!.buffer.asUint8List();
    return pngBytes;
  }
}
