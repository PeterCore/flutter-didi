import 'package:device_info_plus/device_info_plus.dart';
import 'package:dk_utils/utils/platform_utils.dart';

class DkDeviceManager {
  static final DkDeviceManager _instance = DkDeviceManager._internal();
  factory DkDeviceManager() {
    return _instance;
  }

  String _deviceModel = "";
  String get deviceModel => _deviceModel;

  String _imei = "";
  String get imei => _imei;

  String _cid = "";
  String get cid => _cid;

  DkDeviceManager._internal();

  Future getDeviceModel() async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    if (PlatformUtils.isAndroid) {
      final deviceInfo = await deviceInfoPlugin.androidInfo;
      _deviceModel = deviceInfo.model;
    } else if (PlatformUtils.isWeb) {
      final deviceInfo = await deviceInfoPlugin.webBrowserInfo;
      _deviceModel = deviceInfo.userAgent ?? "";
    } else if (PlatformUtils.isIOS) {
      final deviceInfo = await deviceInfoPlugin.iosInfo;
      _deviceModel = deviceInfo.model;
    }
  }

  Future getIMEI() async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    if (PlatformUtils.isAndroid) {
      final deviceInfo = await deviceInfoPlugin.androidInfo;
      _imei = deviceInfo.id;
    } else if (PlatformUtils.isWeb) {
      final deviceInfo = await deviceInfoPlugin.webBrowserInfo;
      _imei = deviceInfo.vendor ?? "";
    } else if (PlatformUtils.isIOS) {
      final deviceInfo = await deviceInfoPlugin.iosInfo;
      _imei = deviceInfo.identifierForVendor ?? "";
    }
  }

  void getCid() {
    if (PlatformUtils.isAndroid) {
      _cid = "tio_android";
    } else if (PlatformUtils.isWeb) {
      _cid = "tio_web";
    } else if (PlatformUtils.isIOS) {
      _cid = "tio_ios";
    }
    // _cid = "tio_web";
  }
}
