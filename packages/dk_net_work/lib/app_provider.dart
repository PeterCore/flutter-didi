import 'package:dio/dio.dart';

import 'net_work/app_dio.dart';

// BaseOptions options = BaseOptions(
//   baseUrl: CheckPickerNetWork
//       .instance!.baseUrl, //"https://api.chuanghui.test888002.shop",
//   headers: {"accept": "application/json"},
//   // contentType: 'application/json;charset=utf-8',
//   connectTimeout: const Duration(seconds: 10),
//   //响应流上前后两次接受到数据的间隔，单位为毫秒。
//   receiveTimeout: const Duration(seconds: 10),
//   validateStatus: (statusCode) {
//     final codes = [100, 200, 400, 405, 500];
//     return codes.contains(statusCode);
//   },
//   responseType: ResponseType.json,
// );

// class AppRestClient {
//   Dio initClient() {
//     return AppDio.instance(options);
//   }
// }

class AppInstanceRestClient {
  factory AppInstanceRestClient() => _getInstance()!;

  static AppInstanceRestClient? get instance => _getInstance();
  static AppInstanceRestClient? _instance;

  AppInstanceRestClient._internal();
  BaseOptions? _options;

  static AppInstanceRestClient? _getInstance() {
    _instance ??= AppInstanceRestClient._internal();
    return _instance;
  }

  String _basUrl = "";

  String get baseUrl => _basUrl;

  void configClient({String url = "https://api.chuanghui.test888002.shop"}) {
    _basUrl = url;
    _options = BaseOptions(
      baseUrl: url, //"https://api.chuanghui.test888002.shop",
      headers: {"accept": "application/json"},
      contentType: 'application/json;charset=utf-8',
      connectTimeout: const Duration(seconds: 20),
      //响应流上前后两次接受到数据的间隔，单位为毫秒。
      receiveTimeout: const Duration(seconds: 20),
      validateStatus: (statusCode) {
        final codes = [100, 200, 400, 401, 405, 500];
        return codes.contains(statusCode);
      },
      responseType: ResponseType.json,
    );
  }

  Dio getInstance() {
    return AppDio.getInstance(_options);
  }
}
