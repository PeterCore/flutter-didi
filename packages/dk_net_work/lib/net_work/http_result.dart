import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_result.freezed.dart';
part 'http_result.g.dart';

@freezed
class HttpResult with _$HttpResult {
  factory HttpResult({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "msg") dynamic msg,
    @JsonKey(name: "t") String? t,
  }) = _HttpResult;

  factory HttpResult.fromJson(Map<String, dynamic> json) =>
      _$HttpResultFromJson(json);
}

///一般会包含state和data

bool isFromService(Response e) {
  if (e.data is Map) {
    final map = e.data as Map<String, dynamic>;
    return map.containsKey("status");
  }
  return false;
}

bool isFromIMServer(Response e) {
  if (e.data is Map) {
    final map = e.data as Map<String, dynamic>;
    return map.containsKey("ok");
  }
  return false;
}
