import 'dk_net_work_platform_interface.dart';

class DkNetWork {
  Future<String?> getPlatformVersion() {
    return DkNetWorkPlatform.instance.getPlatformVersion();
  }
}
