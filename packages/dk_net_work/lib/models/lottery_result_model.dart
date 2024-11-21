// To parse this JSON data, do
//
//     final lotteryResultModel = lotteryResultModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'lottery_result_model.freezed.dart';
part 'lottery_result_model.g.dart';

LotteryResultModel lotteryResultModelFromJson(String str) =>
    LotteryResultModel.fromJson(json.decode(str));

String lotteryResultModelToJson(LotteryResultModel data) =>
    json.encode(data.toJson());

@freezed
class LotteryResultModel with _$LotteryResultModel {
  const factory LotteryResultModel({
    @JsonKey(name: "state") int? state,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "msg") String? msg,
    @JsonKey(name: "index") int? index,
    @JsonKey(name: "levelwheels") int? levelwheels,
    @JsonKey(name: "clicks") int? clicks,
  }) = _LotteryResultModel;

  factory LotteryResultModel.fromJson(Map<String, dynamic> json) =>
      _$LotteryResultModelFromJson(json);
}
