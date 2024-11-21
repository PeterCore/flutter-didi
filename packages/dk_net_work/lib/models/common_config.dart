// To parse this JSON data, do
//
//     final commonConfig = commonConfigFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_config.freezed.dart';
part 'common_config.g.dart';

CommonConfig commonConfigFromJson(String str) =>
    CommonConfig.fromJson(json.decode(str));

String commonConfigToJson(CommonConfig data) => json.encode(data.toJson());

@freezed
class CommonConfig with _$CommonConfig {
  const factory CommonConfig({
    int? status,
    String? msg,
    Data? data,
  }) = _CommonConfig;

  factory CommonConfig.fromJson(Map<String, dynamic> json) =>
      _$CommonConfigFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "www_url") String? wwwUrl,
    @JsonKey(name: "captcha_switch") int? captchaSwitch,
    @JsonKey(name: "miyao_switch") int? miyaoSwitch,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
