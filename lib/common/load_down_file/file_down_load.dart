abstract class FileDownLoad {
  Future<void> saveFile(List<int> bytes, String fileName,
      {String mimeType = 'application/pdf'});
}

// 默认实现（在非 Web 平台上，不支持文件选择）
class FileDownLoadImpl implements FileDownLoad {
  @override
  Future<void> saveFile(List<int> bytes, String fileName,
      {String mimeType = 'application/pdf'}) async {
    throw UnsupportedError('File picking is not supported on this platform.');
  }
}
