import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dk_net_work/net_work/app_error_exception.dart';
import 'package:flutter/foundation.dart';

enum AppErrorType {
  network,
  badRequest,
  unauthorized,
  cancel,
  timeout,
  server,
  unknown,
}

/* enum DioExceptionType {
  /// Caused by a connection timeout.
  connectionTimeout,

  /// It occurs when url is sent timeout.
  sendTimeout,

  /// It occurs when receiving timeout.
  receiveTimeout,

  /// Caused by an incorrect certificate as configured by [ValidateCertificate].
  badCertificate,

  /// The [DioException] was caused by an incorrect status code as configured by
  /// [ValidateStatus].
  badResponse,

  /// When the request is cancelled, dio will throw a error with this type.
  cancel,

  /// Caused for example by a `xhr.onError` or SocketExceptions.
  connectionError,

  /// Default error type, Some other [Error]. In this case, you can use the
  /// [DioException.error] if it is not null.
  unknown,
}*/

class AppError {
  late String message;
  AppErrorType? type;
  String? code;

  AppError(Exception? error) {
    if (error is DioException) {
      // debugPrint('AppError(DioError): '
      //     'type is ${error.type}, code is${error.error.e} message is ${error.message}');
      message = error.message ?? "";
      switch (error.type) {
        case DioExceptionType.unknown:
          if (error.error is SocketException) {
            // SocketException: Failed host lookup: '***'
            // (OS Error: No address associated with hostname, errno = 7)
            type = AppErrorType.network;
            code = "${error.response?.statusCode ?? ""}";
            message = "网络异常";
          } else if (error.error is AppErrorException) {
            type = AppErrorType.unknown;
            if (error.error is AppErrorException) {
              AppErrorException appError = error.error as AppErrorException;
              code = appError.errorCode.toString();
              message = appError?.message ?? "";
            }
          } else {
            type = AppErrorType.unknown;
            code = "${error.response?.statusCode ?? ""}";
          }
          break;
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
          type = AppErrorType.timeout;
          message = "网络连接超时";
          break;
        case DioExceptionType.sendTimeout:
          type = AppErrorType.network;
          message = "网络连接超时";
          break;
        case DioExceptionType.badResponse:
          // TODO(api): need define more http status;
          switch (error.response?.statusCode) {
            case HttpStatus.badRequest: // 400
              type = AppErrorType.badRequest;
              code = "${error.response?.statusCode ?? ""}";
              break;
            case HttpStatus.unauthorized: // 401
              type = AppErrorType.unauthorized;
              code = "${error.response?.statusCode ?? ""}";
              break;
            case HttpStatus.internalServerError: // 500
            case HttpStatus.badGateway: // 502
            case HttpStatus.serviceUnavailable: // 503
            case HttpStatus.gatewayTimeout: // 504
              type = AppErrorType.server;
              break;
            default:
              type = AppErrorType.unknown;
              break;
          }
          break;
        case DioExceptionType.cancel:
          type = AppErrorType.cancel;
          break;
        default:
          type = AppErrorType.unknown;
      }
    } else {
      debugPrint('AppError(UnKnown): $error');
      type = AppErrorType.unknown;
      message = 'AppError: $error';
    }
  }
}
