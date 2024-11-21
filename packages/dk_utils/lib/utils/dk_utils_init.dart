import 'package:dk_utils/utils/version_utils.dart';

import 'device_utils.dart';

/// FileName dk_utils_init
///
/// @Author zhangchun
/// @Date 2024/9/7 20:39
///
/// @Description TODO
class DkUtilsInit {
  factory DkUtilsInit() => _getInstance()!;

  static DkUtilsInit? get instance => _getInstance();
  static DkUtilsInit? _instance;
  String _version = "";
  String get version => _version;

  ///构建版本号
  String _buildNumber = "";
  String get buildNumber => _buildNumber;

  ///设备号
  String _deviceId = "";
  String get deviceId => _deviceId;

  ///ip地址
  String _deviceIP = "";
  String get deviceIP => _deviceIP;
  DkUtilsInit._internal();

  static DkUtilsInit? _getInstance() {
    _instance ??= DkUtilsInit._internal();
    return _instance;
  }

  initAppInfo() async {
    // 获取版本号信息
    _version = await VersionUtils.getVersionCode();
    _buildNumber = await VersionUtils.getBuildCode();
    // 获取设备ID
    _deviceId = await DeviceUtils.getDeviceId();
  }
}
