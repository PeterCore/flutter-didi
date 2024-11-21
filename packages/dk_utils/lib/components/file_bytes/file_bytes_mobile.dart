import 'dart:io';
import 'dart:typed_data';

import 'file_bytes.dart';

class FileBytesImpl implements FileBytes {
  @override
  Future<Uint8List?> convertFileToBytes({File? file}) async {
    // TODO: implement convertFileToBytes
    return await file?.readAsBytes();
  }
}
