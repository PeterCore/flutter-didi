// To parse this JSON data, do
//
//     final settingPswResultModel = settingPswResultModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_psw_result_model.freezed.dart';
part 'setting_psw_result_model.g.dart';

SettingPswResultModel settingPswResultModelFromJson(String str) =>
    SettingPswResultModel.fromJson(json.decode(str));

String settingPswResultModelToJson(SettingPswResultModel data) =>
    json.encode(data.toJson());

@freezed
class SettingPswResultModel with _$SettingPswResultModel {
  const factory SettingPswResultModel({
    String? msg,
    int? status,
    int? smsverifi,
    String? mima,
  }) = _SettingPswResultModel;

  factory SettingPswResultModel.fromJson(Map<String, dynamic> json) =>
      _$SettingPswResultModelFromJson(json);
}
