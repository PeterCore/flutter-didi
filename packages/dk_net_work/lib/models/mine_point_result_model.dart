// To parse this JSON data, do
//
//     final minePointResultModel = minePointResultModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'mine_point_result_model.freezed.dart';
part 'mine_point_result_model.g.dart';

MinePointResultModel minePointResultModelFromJson(String str) =>
    MinePointResultModel.fromJson(json.decode(str));

String minePointResultModelToJson(MinePointResultModel data) =>
    json.encode(data.toJson());

@freezed
class MinePointResultModel with _$MinePointResultModel {
  const factory MinePointResultModel({
    int? status,
    Data? data,
  }) = _MinePointResultModel;

  factory MinePointResultModel.fromJson(Map<String, dynamic> json) =>
      _$MinePointResultModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "Pointsratio") String? pointsratio,
    String? integral,
    String? minExchange,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
