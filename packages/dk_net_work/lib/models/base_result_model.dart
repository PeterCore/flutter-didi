// To parse this JSON data, do
//
//     final baseResultModel = baseResultModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_result_model.freezed.dart';
part 'base_result_model.g.dart';

BaseResultModel baseResultModelFromJson(String str) =>
    BaseResultModel.fromJson(json.decode(str));

String baseResultModelToJson(BaseResultModel data) =>
    json.encode(data.toJson());

@freezed
class BaseResultModel with _$BaseResultModel {
  const factory BaseResultModel({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "msg") String? msg,
    @JsonKey(name: "data") Map<String, dynamic>? data,
  }) = _BaseResultModel;

  factory BaseResultModel.fromJson(Map<String, dynamic> json) =>
      _$BaseResultModelFromJson(json);
}
