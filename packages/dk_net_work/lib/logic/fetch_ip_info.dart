import 'dart:convert';

import 'package:dio/dio.dart' as dio;
import 'package:dk_net_work/constants/api_url_path.dart';
import 'package:dk_net_work/http_provider/rest_client_utils.dart';
import 'package:dk_utils/dk_lib.dart';

import '../constants/http_config.dart';

class IPInfo {
  factory IPInfo() => _getInstance()!;

  static IPInfo? get instance => _getInstance();
  static IPInfo? _instance;

  IPInfo._internal();

  static IPInfo? _getInstance() {
    _instance ??= IPInfo._internal();
    return _instance;
  }

  dio.Dio? _dio;
  int? _ipSwitch;
  int? get ipSwitch => _ipSwitch;

  String? _ipKey;
  String? get ipKey => _ipKey;

  Map<String, dynamic> _ipInfo = {};
  Map<String, dynamic> get ipInfo => _ipInfo;

  ///ip地址
  String _deviceIP = "";
  String get deviceIP => _deviceIP;

  // IPInfo() {
  //   dio.BaseOptions options = dio.BaseOptions(
  //     headers: {"accept": "application/json"},
  //     //连接服务器超时时间，单位是毫秒.
  //     connectTimeout: const Duration(milliseconds: 30000),
  //     //响应流上前后两次接受到数据的间隔，单位为毫秒。
  //     receiveTimeout: const Duration(milliseconds: 5000),
  //     contentType: dio.Headers.jsonContentType,
  //     responseType: dio.ResponseType.json,
  //   );
  //   _dio = dio.Dio(options);
  //   _getIpData();
  // }

  void initConfig() {
    dio.BaseOptions options = dio.BaseOptions(
      headers: {"accept": "application/json"},
      //连接服务器超时时间，单位是毫秒.
      connectTimeout: const Duration(milliseconds: 30000),
      //响应流上前后两次接受到数据的间隔，单位为毫秒。
      receiveTimeout: const Duration(milliseconds: 5000),
      contentType: dio.Headers.jsonContentType,
      responseType: dio.ResponseType.json,
    );
    _dio = dio.Dio(options);
    _getIpData();
  }

  void getIpConfig() async {
    fetchIpConfig().then((value) {
      value.ifSuccess((data) {
        Logger.write("----${data.ipConfigModelSwitch}----");
        _ipKey = data.key;
        _ipSwitch = data.ipConfigModelSwitch;
        quickFetchIpInfo();
      });
      value.ifFailure((e) {
        Logger.write("error is ----${e.message}----");
      });
    });
  }

  ///快速获取ip
  quickFetchIpInfo() {
    if (_ipSwitch == null) {
      getIpConfig();
      return;
    }
    if (_ipSwitch == 1) {
      _getDomestic();
    } else {
      _getAbroad();
    }
  }

  _getAbroad() async {
    try {
      var res = await _getHttp(ApiUrlPath.abroadUrl, {
        "lang": "zh-CN",
        "key": _ipKey,
        "fields": HttpConfig.abroadFields,
      });
      if (res?.data['status'] == "success") {
        _deviceIP = res?.data['query'];
        _ipInfo = res?.data;
        _saveIpData();
        Logger.write("获取客户IP成功：$_deviceIP");
        Logger.write("IP信息：$ipInfo");
      }
    } catch (e) {
      //...
    }
  }

  _getDomestic() async {
    try {
      var res = await _getHttp(ApiUrlPath.domesticUrl, {
        "ip": "",
        "token": _ipKey,
        "oid": HttpConfig.domesticOid,
        "mid": HttpConfig.domesticMid,
      });
      if (res?.data['ret'] == "ok") {
        _deviceIP = res?.data['ip'];
        _ipInfo = res?.data['data'];
        _saveIpData();
        Logger.write("获取客户IP成功：$_deviceIP");
        Logger.write("IP信息：$ipInfo");
      }
    } catch (e) {
      //...
    }
  }

  _getIpData() async {
    _deviceIP = await StorageUtils.getValue("deviceIP", "");
    String jsonStr = await StorageUtils.getValue("ipInfo", "");
    if (jsonStr.isNotEmpty) {
      _ipInfo = json.decode(jsonStr);
    }
  }

  _saveIpData() {
    StorageUtils.setValue("deviceIP", _deviceIP);
    if (ipInfo != null && ipInfo.isNotEmpty) {
      StorageUtils.setValue("ipInfo", json.encode(ipInfo));
    }
  }

  Future<dio.Response?> _getHttp(String url, var params) async {
    dio.Response? response;
    try {
      if (params != null && params.isNotEmpty) {
        response = await _dio?.get(url, queryParameters: params);
      } else {
        response = await _dio?.get(url);
      }
    } on dio.DioException catch (_) {
      rethrow;
    }
    return response;
  }
}
