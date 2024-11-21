import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:dk_net_work/logic/fetch_ip_info.dart';
import 'package:dk_net_work/logic/login_info.dart';
import 'package:dk_utils/dk_lib.dart';

import '../constants/http_config.dart';
import 'http_result.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor();
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    // TODO: implement onRequest
    // 获取设备ID
    String deviceId = "";
    DkUtilsInit.instance;
    if (DkUtilsInit.instance!.deviceId.isNotEmpty) {
      deviceId = DkUtilsInit.instance!.deviceId;
    } else {
      deviceId = await DeviceUtils.getDeviceId();
    }

    /// 默认参数
    //get
    options.queryParameters["lange"] = "zh-Hans";
    options.queryParameters["uuid"] = deviceId;
    options.queryParameters["ipaddres"] = IPInfo.instance?.deviceIP;
    options.queryParameters["ip_info"] = IPInfo.instance?.ipInfo;
    //post
    if (options.data is Map) {
      Map<String, dynamic> defaultParams = {
        "lange": "zh-Hans", // 每个请求都需要带上 lange语言 参数
        "uuid": deviceId, // 每个请求都需要带上 设备唯一识别码：UUID 参数
        "ipaddres": IPInfo.instance?.deviceIP, // 每个请求都需要带上 设备唯一识别码：IP 参数
        "ip_info": IPInfo.instance?.ipInfo, // 每个请求都需要带上 设备唯一识别码：IP信息 参数
      };
      (options.data as Map).addAll(defaultParams);
    }

    // 检查是否有Token 如果有就加入header
    if (LoginInfo.instance!.appToken.isNotEmpty) {
      options.headers.addAll({
        "authorization": "Bearer ${LoginInfo.instance!.appToken}",
      });
    } else if (LoginInfo.instance!.tempToken.isNotEmpty) {
      options.headers.addAll({
        "authorization": "Bearer ${LoginInfo.instance!.tempToken}",
      });
    }

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // TODO: implement onResponse
    if (response.data != null) {
      if (response.statusCode == 200) {
        if (response.data is Uint8List) {
          String res = String.fromCharCodes(response.data);
          if (res.isValidJson()) {
            final jsonResult = json.decode(res);
            final status = jsonResult["status"];
            if (status is String) {
              jsonResult["status"] = int.parse(status);
            }
            response.data = jsonResult;
          }
        } else {
          final msg = response.data["msg"]; // 搞笑死了 这规范
          if (msg is List<int>) {
          } else {
            HttpResult result = HttpResult.fromJson(response.data);
            if (result.t?.isNotEmpty == true) {
              ///解密
              String res = BaseUtils.aesDecrypted(
                  HttpConfig.appKey, HttpConfig.appIv, result.t ?? "");
              if (res.isNotEmpty) {
                final jsonResult = json.decode(res);
                if (jsonResult is Map) {
                  final status = jsonResult["status"];
                  if (status is String) {
                    jsonResult["status"] = int.parse(status);
                  }
                  response.data = jsonResult;
                }
              }
            }
          }
        }
      } else if (response.statusCode == 401) {
        Logger.write("----token 失效-----");
        LoginInfo.instance!.clearToken().then((_) {
          LoginInfo.instance?.forceLogout();
        });
      }
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // TODO: implement onError
    super.onError(err, handler);
  }
}
