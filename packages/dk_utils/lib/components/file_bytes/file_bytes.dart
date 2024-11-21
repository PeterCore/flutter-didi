import 'dart:io';
import 'dart:typed_data';

abstract class FileBytes {
  Future<Uint8List?> convertFileToBytes({File? file});
}

class FileBytesImpl implements FileBytes {
  @override
  Future<Uint8List?> convertFileToBytes({File? file}) {
    // TODO: implement convertFileToBytes
    throw UnimplementedError();
  }
}
