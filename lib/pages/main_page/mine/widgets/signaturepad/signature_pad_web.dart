import 'dart:async';
import 'dart:html' as html;
import 'dart:typed_data';

import 'package:churn/pages/main_page/mine/widgets/signaturepad/signature_pad.dart';
import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

class SignaturePadImpl implements SignaturePad {
  @override
  Future<Uint8List?> signature(
      GlobalKey<SfSignaturePadState> signatureGlobalKey, double width, double height) async {
    // TODO: implement signature
    final canvas = html.CanvasElement(width: width.toInt(), height: height.toInt());
    final context = canvas.context2D;

    signatureGlobalKey.currentState!.renderToContext2D(context);

    final blob = await canvas.toBlob('image/png', 1.0);

    final completer = Completer<Uint8List>();
    final reader = html.FileReader();
    reader.readAsArrayBuffer(blob);
    reader.onLoad.listen((_) => completer.complete(reader.result as Uint8List));
    Uint8List imageData = await completer.future;
    return imageData;
  }
}
