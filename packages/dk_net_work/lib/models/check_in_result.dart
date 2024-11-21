// To parse this JSON data, do
//
//     final checkInResult = checkInResultFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_in_result.freezed.dart';
part 'check_in_result.g.dart';

CheckInResult checkInResultFromJson(String str) =>
    CheckInResult.fromJson(json.decode(str));

String checkInResultToJson(CheckInResult data) => json.encode(data.toJson());

@freezed
class CheckInResult with _$CheckInResult {
  const factory CheckInResult({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "msg") List<int>? msg,
    @JsonKey(name: "rewards") List<Reward>? rewards,
    @JsonKey(name: "days") int? days,
    @JsonKey(name: "lxqiandao") int? lxqiandao,
    @JsonKey(name: "lxqday") String? lxqday,
    @JsonKey(name: "resign_times") int? resignTimes,
    @JsonKey(name: "resign_from_day") int? resignFromDay,
    @JsonKey(name: "member_resign_switch") int? resignSwitch,
  }) = _CheckInResult;

  factory CheckInResult.fromJson(Map<String, dynamic> json) =>
      _$CheckInResultFromJson(json);
}

@freezed
class Reward with _$Reward {
  const factory Reward({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "days") int? days,
    @JsonKey(name: "reward") int? reward,
    @JsonKey(name: "sort") int? sort,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _Reward;

  factory Reward.fromJson(Map<String, dynamic> json) => _$RewardFromJson(json);
}
