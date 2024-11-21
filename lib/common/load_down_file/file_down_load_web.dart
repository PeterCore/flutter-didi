import 'dart:html' as html;
import 'dart:typed_data';

import 'file_down_load.dart';

class FileDownLoadImpl implements FileDownLoad {
  @override
  Future<void> saveFile(List<int> bytes, String fileName,
      {String mimeType = 'application/pdf'}) async {
    // TODO: implement saveFile
    final blob = html.Blob([Uint8List.fromList(bytes)], mimeType);
    final url = html.Url.createObjectUrlFromBlob(blob);
    final anchor = html.AnchorElement(href: url)
      ..setAttribute('download', fileName)
      ..click();

    html.Url.revokeObjectUrl(url);
  }
}
