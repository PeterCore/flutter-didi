// To parse this JSON data, do
//
//     final captchaConfigModel = captchaConfigModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'captcha_config_model.freezed.dart';
part 'captcha_config_model.g.dart';

CaptchaConfigModel captchaConfigModelFromJson(String str) =>
    CaptchaConfigModel.fromJson(json.decode(str));

String captchaConfigModelToJson(CaptchaConfigModel data) =>
    json.encode(data.toJson());

@freezed
class CaptchaConfigModel with _$CaptchaConfigModel {
  const factory CaptchaConfigModel({
    int? status,
    String? msg,
    Data? data,
  }) = _CaptchaConfigModel;

  factory CaptchaConfigModel.fromJson(Map<String, dynamic> json) =>
      _$CaptchaConfigModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    double? x,
    double? y,
    @JsonKey(name: "captcha_id") String? captchaId,
    int? time,
    int? dataSwitch,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
