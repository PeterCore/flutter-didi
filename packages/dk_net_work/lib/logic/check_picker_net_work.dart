import 'dart:async';
import 'dart:convert';

import 'package:dk_net_work/logic/url_check_utils.dart';
import 'package:dk_utils/dk_lib.dart';

import '../app_provider.dart';
import 'common_config.dart';
import 'fetch_ip_info.dart';

class CheckPickerNetWork {
  factory CheckPickerNetWork() => _getInstance()!;

  static CheckPickerNetWork? get instance => _getInstance();
  static CheckPickerNetWork? _instance;

  CheckPickerNetWork._internal();
  final List<String> _jsonList = [];
  final List<String> _defaultUrls = [];

  String _baseUrl = "";
  String get baseUrl => _baseUrl;

  static CheckPickerNetWork? _getInstance() {
    _instance ??= CheckPickerNetWork._internal();
    return _instance;
  }

  void saveBaseUrl({String url = ""}) {
    _baseUrl = url;
    StorageUtils.setValue("baseUrl", url);
  }

  void configUrl(List<String> urls) {
    if (urls.isNotEmpty) {
      _defaultUrls.addAll(urls);
      AppInstanceRestClient.instance;
    }
  }

  void _initConfig({String url = ""}) {
    AppInstanceRestClient.instance?.configClient();
    if (url.isNotEmpty) {
      AppInstanceRestClient.instance?.configClient(url: url);
    }
    IPInfo().getIpConfig();
    CommonConfigManager.instance.fetchCommonConfig();
  }

  //初始化检查网络
  Future initBaseUrl() async {
    bool isNetwork = await BaseUtils.isNetWorkConnected();
    _initConfig();
    if (isNetwork) {
      return _checkLocalUrl();
    } else {
      return false;
    }
  }

  //检查本地是否有数据
  Future<bool> _checkLocalUrl() async {
    String baseUrl = await StorageUtils.getValue("baseUrl", "");
    if (baseUrl.isNotEmpty) {
      _baseUrl = baseUrl;
      _initConfig(url: _baseUrl);
      Logger.write("本地有接口域名");
      return _checkCacheUrlAvailability([baseUrl]);
    } else {
      Logger.write("本地没有接口域名");
      return _checkUrlAvailabilityOSS();
    }
  }

  //检测cacheUrl
  Future<bool> _checkCacheUrlAvailability(List<String> domainList) async {
    Completer<bool> completer = Completer<bool>();
    UrlCheck().checkUrl(
        domainList,
        UrlCheckListener(onSuccess: (domain) async {
          if (!completer.isCompleted) {
            var isFinishCheck = await _enterByDomain(domain);
            completer.complete(isFinishCheck);
          }
        }, onError: () async {
          Logger.write("本地接口域名异常，开始重新获取");
          await StorageUtils.remove("baseUrl");
          if (!completer.isCompleted) {
            var isFinishCheck = await _checkUrlAvailabilityOSS();
            completer.complete(isFinishCheck);
          }
        }));
    return completer.future;
  }

  //oss获取
  Future<bool> _checkUrlAvailabilityOSS() async {
    _jsonList.clear();
    _jsonList.addAll(_defaultUrls
        .map((e) => "$e?v=${DateTime.now().millisecondsSinceEpoch}"));
    return _fetchOnlyJsonUrl(_jsonList[0]);
  }

  //单个oos地址查看
  Future<bool> _fetchOnlyJsonUrl(String autoUrl) async {
    final Completer<bool> completer = Completer<bool>();
    UrlCheck().launchRequest(autoUrl).then((value) {
      //获取ip列表
      List<String> domainList =
          (json.decode(value?.data ?? "") as List).map((e) => "$e").toList();
      return domainList;
    }).then((value) {
      UrlCheck().checkUrl(
          value,
          UrlCheckListener(onSuccess: (domain) async {
            if (!completer.isCompleted) {
              completer.complete(_enterByDomain(domain));
            }
          }, onError: () {
            _jsonErrorAndNext();
          }));
    }).catchError((_) {
      _jsonErrorAndNext();
    });
    return completer.future;
  }

  //继续下一个jsonUrl检测
  Future<bool> _jsonErrorAndNext() async {
    if (_jsonList.isNotEmpty) {
      _jsonList.removeAt(0);
    }
    if (_jsonList.isEmpty) {
      // _showErrorPage();
      return false;
    } else {
      return _fetchOnlyJsonUrl(_jsonList[0]);
    }
  }

  ///初始化请求管理
  Future<bool> _enterByDomain(String domain) async {
    Logger.write("当前baseUrl:$domain");
    StorageUtils.setValue("baseUrl", domain);
    _baseUrl = domain;
    _initConfig(url: _baseUrl);
    return true;
    //await HttpService().initHttp();
    // if (LoginInfo.instance!.appToken.isNotEmpty) {
    //   // Get.offNamed(AppCore().router.indexRoute.name);
    // } else {
    //   //Get.offNamed(AppCore().router.loginIndexRoute.name);
    // }
  }
}
