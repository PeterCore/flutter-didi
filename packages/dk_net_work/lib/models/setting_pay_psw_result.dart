// To parse this JSON data, do
//
//     final settingPayPswResult = settingPayPswResultFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_pay_psw_result.freezed.dart';
part 'setting_pay_psw_result.g.dart';

SettingPayPswResult settingPayPswResultFromJson(String str) =>
    SettingPayPswResult.fromJson(json.decode(str));

String settingPayPswResultToJson(SettingPayPswResult data) =>
    json.encode(data.toJson());

@freezed
class SettingPayPswResult with _$SettingPayPswResult {
  const factory SettingPayPswResult({
    int? status,
    String? msg,
  }) = _SettingPayPswResult;

  factory SettingPayPswResult.fromJson(Map<String, dynamic> json) =>
      _$SettingPayPswResultFromJson(json);
}
