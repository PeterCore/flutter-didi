// To parse this JSON data, do
//
//     final yueBaoConfigModel = yueBaoConfigModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'yu_e_bao_config_model.freezed.dart';
part 'yu_e_bao_config_model.g.dart';

YueBaoConfigModel yueBaoConfigModelFromJson(String str) =>
    YueBaoConfigModel.fromJson(json.decode(str));

String yueBaoConfigModelToJson(YueBaoConfigModel data) =>
    json.encode(data.toJson());

@freezed
class YueBaoConfigModel with _$YueBaoConfigModel {
  const factory YueBaoConfigModel({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "data") DataConfig? data,
  }) = _YueBaoConfigModel;

  factory YueBaoConfigModel.fromJson(Map<String, dynamic> json) =>
      _$YueBaoConfigModelFromJson(json);
}

@freezed
class DataConfig with _$DataConfig {
  const factory DataConfig({
    @JsonKey(name: "zong_jin_e") String? zongJinE,
    @JsonKey(name: "fanl_jin_e") String? fanlJinE,
    @JsonKey(name: "rule_str") String? ruleStr,
    @JsonKey(name: "minduodeli") String? minduodeli,
    @JsonKey(name: "txmoney") String? txmoney,
    @JsonKey(name: "ratduodeli") String? ratduodeli,
    @JsonKey(name: "wanduodeli") double? wanduodeli,
  }) = _DataConfig;

  factory DataConfig.fromJson(Map<String, dynamic> json) =>
      _$DataConfigFromJson(json);
}
