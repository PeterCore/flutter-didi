import 'dart:async';
import 'dart:html' as html;
import 'dart:io';
import 'dart:typed_data';

import 'file_bytes.dart';

class FileBytesImpl implements FileBytes {
  @override
  Future<Uint8List?> convertFileToBytes({File? file}) async {
    // TODO: implement convertFileToBytes
    Completer<Uint8List?> completer = Completer();
    final path = file?.path ?? "";
    try {
      final response = await html.window.fetch(path);
      final blob = await response.blob();
      final reader = html.FileReader();
      reader.readAsArrayBuffer(blob);
      reader.onLoadEnd.listen((event) {
        completer.complete(reader.result as Uint8List);
      });
    } catch (e) {
      completer.complete(null);
    }
    return completer.future;
  }
}
