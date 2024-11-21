import 'dart:io';

import 'package:path_provider/path_provider.dart';

import 'file_down_load.dart';

class FileDownLoadImpl implements FileDownLoad {
  @override
  Future<void> saveFile(List<int> bytes, String fileName,
      {String mimeType = 'application/pdf'}) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/$fileName';
    final file = File(filePath);
    await file.writeAsBytes(bytes);
    print('文件已保存到：$filePath');
  }
}
