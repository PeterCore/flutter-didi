import 'package:dio/dio.dart';
// import 'package:dio_web_adapter/dio_web_adapter.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'app_error_exception.dart';
import 'auth_interceptor.dart';
import 'dio_transformer.dart';
import 'http_result.dart';
// import 'io_adapter.dart';

class AppDio with DioMixin {
  AppDio._(
      [BaseOptions? options,
      Interceptor? interceptor,
      SyncTransformer? customTransformer]) {
    options ??= BaseOptions(
      baseUrl: '',
      headers: {"accept": "application/json"},
      contentType: 'application/json;charset=utf-8',
      connectTimeout: const Duration(seconds: 10),
      //响应流上前后两次接受到数据的间隔，单位为毫秒。
      receiveTimeout: const Duration(seconds: 10),
      validateStatus: (statusCode) {
        final codes = [100, 200, 400, 405, 500];
        return codes.contains(statusCode);
      },
      responseType: ResponseType.json,
    );
    this.options = options;

    if (customTransformer != null) {
      transformer = customTransformer;
    } else {
      transformer = FlutterTransformer();
    }

    interceptors
      // ..add(interceptor ?? const Interceptor())
      ..add(interceptor ?? AuthInterceptor())
      ..add(InterceptorsWrapper(onRequest: (options, handler) async {
        handler.next(options);
      }, onResponse: (e, handler) {
        if (e.statusCode == 200) {
          if (isFromService(e)) {
            if (e.data["status"] == 0) {
              handler.next(e);
            } else {
              throw AppErrorException(e.data["msg"], e.data["status"]);
            }
          } else if (isFromIMServer(e)) {
            if (e.data["ok"] == true) {
              if (e.data["data"] != null) {
                e.data = e.data["data"];
              }
              handler.next(e);
            } else {
              throw AppErrorException(e.data["msg"], e.data["code"]);
            }
          } else {
            handler.next(e);
          }
        } else {
          throw AppErrorException(e.statusMessage, e.statusCode);
        }
      }));
    if (kDebugMode) {
      interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        compact: false,
      ));
    }
    // if (kIsWeb) {
    //   httpClientAdapter = makeHttpClientAdapter();
    // } else {
    //   httpClientAdapter = HttpClientAdapter();
    // }
    httpClientAdapter = HttpClientAdapter();
  }

  // HttpClientAdapter makeHttpClientAdapter() {
  //   final adapter = HttpClientAdapter() as BrowserHttpClientAdapter;
  //   adapter.withCredentials = false;
  //   return adapter;
  // }

  static Dio getInstance(
          [BaseOptions? options,
          Interceptor? interceptor,
          SyncTransformer? customTransformer]) =>
      AppDio._(options, interceptor, customTransformer);

  Dio instance(
          [BaseOptions? options,
          Interceptor? interceptor,
          SyncTransformer? customTransformer]) =>
      AppDio._(options, interceptor, customTransformer);
}
