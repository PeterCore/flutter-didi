import 'dk_utils_platform_interface.dart';

class DkUtils {
  Future<String?> getPlatformVersion() {
    return DkUtilsPlatform.instance.getPlatformVersion();
  }
}
