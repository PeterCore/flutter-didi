import 'package:dk_net_work/dk_net_work_lib.dart';

import '../assets_tool/ui_assets.dart';

class AppConfig {
  factory AppConfig() => _getInstance()!;

  static AppConfig? get instance => _getInstance();
  static AppConfig? _instance;

  AppConfig._internal();

  bool isLaunchInit = false;

  static AppConfig? _getInstance() {
    _instance ??= AppConfig._internal();
    return _instance;
  }

  Future initConfig() async {
    UIAssets.source;
    await DkNetWorkLib.initConfig(
        url: "https://lingufeng.oss-cn-hongkong.aliyuncs.com/cnybaseurl.json");
  }
}
