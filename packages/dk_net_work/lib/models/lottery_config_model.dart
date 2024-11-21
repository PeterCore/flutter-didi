// To parse this JSON data, do
//
//     final lotteryConfigModel = lotteryConfigModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'lottery_config_model.freezed.dart';
part 'lottery_config_model.g.dart';

LotteryConfigModel lotteryConfigModelFromJson(String str) =>
    LotteryConfigModel.fromJson(json.decode(str));

String lotteryConfigModelToJson(LotteryConfigModel data) =>
    json.encode(data.toJson());

@freezed
class LotteryConfigModel with _$LotteryConfigModel {
  const factory LotteryConfigModel({
    @JsonKey(name: "state") int? state,
    @JsonKey(name: "LotteryPeizhi") List<LotteryPeizhi>? lotteryPeizhi,
  }) = _LotteryConfigModel;

  factory LotteryConfigModel.fromJson(Map<String, dynamic> json) =>
      _$LotteryConfigModelFromJson(json);
}

@freezed
class LotteryPeizhi with _$LotteryPeizhi {
  const factory LotteryPeizhi({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "moneys") double? moneys,
    @JsonKey(name: "prize") String? prize,
    @JsonKey(name: "winningrate") int? winningrate,
    @JsonKey(name: "img") String? img,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _LotteryPeizhi;

  factory LotteryPeizhi.fromJson(Map<String, dynamic> json) =>
      _$LotteryPeizhiFromJson(json);
}
