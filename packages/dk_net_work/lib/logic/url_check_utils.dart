import 'dart:async';

import "package:dio/dio.dart" "";

class UrlCheckListener {
  final void Function(String o) onSuccess;
  final void Function() onError;

  UrlCheckListener({required this.onSuccess, required this.onError});
}

class UrlCheck {
  static UrlCheck? _instance;

  factory UrlCheck() => _instance ??= UrlCheck._();

  Dio? _dio;
  BaseOptions? _options;

  UrlCheck._() {
    _options = BaseOptions(
      //连接服务器超时时间，单位是毫秒.
      connectTimeout: const Duration(milliseconds: 30000),
      //响应流上前后两次接受到数据的间隔，单位为毫秒。
      receiveTimeout: const Duration(milliseconds: 5000),
      contentType: Headers.formUrlEncodedContentType,
      responseType: ResponseType.plain,
    );
    _dio = Dio(_options);
  }

  //检测回调
  UrlCheckListener? _listener;

  //ip列表
  final List<String> _ipList = [];

  //ip的数量
  int _ipCount = 0;

  //key 时间 | value Ip
  final Map<int, String> _timeIpMap = {};

  Future<Response<String>?> launchRequest(String url, {Map? params}) async {
    Response<String>? response;
    try {
      if (params != null && params.isNotEmpty) {
        response = await _dio?.get(url, data: params);
      } else {
        response = await _dio?.get(url);
      }
      return response;
    } on DioException catch (e) {
      // LogUtils.onPrint("checkUrlError:$e\n");
      rethrow;
    }
  }

  ///接口检测
  Future<void> checkUrl(List<String>? ipList, UrlCheckListener listener) async {
    if (ipList == null) {
      listener.onError();
      return;
    }
    _listener = listener;
    _ipList.clear();
    _ipList.addAll(ipList);
    _ipCount = _ipList.length;
    _requestUrl();
  }

  Future<void> _requestUrl() async {
    if (_ipCount > 0) {
      //获取url
      String url = _ipList[_ipList.length - _ipCount];
      _ipCount--;
      //记录开始请求时间
      int startTime = DateTime.now().millisecondsSinceEpoch;
      //开始请求url
      _checkGetHttp(url, null).then((value) {
        if (value?.data != null) {
          int diffTime = DateTime.now().millisecondsSinceEpoch - startTime;
          //如果ip请求时长小于500
          if (diffTime <= 500) {
            _listener?.onSuccess(url);
          } else {
            _timeIpMap[diffTime] = url;
            _requestUrl();
          }
        } else {
          //失败继续请求
          _requestUrl();
        }
      }).catchError((e) {
        //失败继续请求
        _requestUrl();
      });
    } else {
      if (_timeIpMap.isEmpty) {
        _listener?.onError();
      } else {
        //选择时间最短的ip
        int minTime = _timeIpMap.keys.first;
        _timeIpMap.forEach((key, value) {
          if (minTime > key) {
            minTime = key;
          }
        });
        _listener?.onSuccess(_timeIpMap[minTime] ?? "");
      }
    }
  }

  Future<Response?> _checkGetHttp(String url, Map? params) async {
    Response? response;
    try {
      if (params != null && params.isNotEmpty) {
        response = await _dio?.get(url, data: params);
      } else {
        response = await _dio?.get(url);
      }
    } on DioException catch (_) {
      rethrow;
    }
    return response;
  }
}
