/// FileName ip_config_model
///
/// @Author zhangchun
/// @Date 2024/9/8 14:02
///
/// @Description TODO
import 'dart:convert';

// To parse this JSON data, do
//
//     final ipConfigModel = ipConfigModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ip_config_model.freezed.dart';
part 'ip_config_model.g.dart';

IpConfigModel ipConfigModelFromJson(String str) =>
    IpConfigModel.fromJson(json.decode(str));

String ipConfigModelToJson(IpConfigModel data) => json.encode(data.toJson());

@freezed
class IpConfigModel with _$IpConfigModel {
  const factory IpConfigModel({
    @JsonKey(name: 'switch') required int ipConfigModelSwitch,
    required String key,
  }) = _IpConfigModel;

  factory IpConfigModel.fromJson(Map<String, dynamic> json) =>
      _$IpConfigModelFromJson(json);
}
