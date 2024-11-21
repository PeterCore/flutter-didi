// To parse this JSON data, do
//
//     final memberShipLevel = memberShipLevelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_ship_level.freezed.dart';
part 'member_ship_level.g.dart';

MemberShipLevel memberShipLevelFromJson(String str) =>
    MemberShipLevel.fromJson(json.decode(str));

String memberShipLevelToJson(MemberShipLevel data) =>
    json.encode(data.toJson());

@freezed
class MemberShipLevel with _$MemberShipLevel {
  const factory MemberShipLevel({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "list") List<ListElement>? list,
    @JsonKey(name: "level") String? level,
    @JsonKey(name: "lastlevel") int? lastlevel,
    @JsonKey(name: "mylevel") int? mylevel,
    @JsonKey(name: "touzi") String? touzi,
    @JsonKey(name: "buymoney") String? buymoney,
    @JsonKey(name: "number") int? number,
    @JsonKey(name: "selfnumber") int? selfnumber,
    @JsonKey(name: "salary") int? salary,
    @JsonKey(name: "config") Config? config,
    @JsonKey(name: "vipshuoming") String? vipshuoming,
    @JsonKey(name: "invite_min_invest_amount") String? inviteMinInvestAmount,
  }) = _MemberShipLevel;

  factory MemberShipLevel.fromJson(Map<String, dynamic> json) =>
      _$MemberShipLevelFromJson(json);
}

@freezed
class Config with _$Config {
  const factory Config({
    @JsonKey(name: "member_next") int? memberNext,
    @JsonKey(name: "member_qiandao") int? memberQiandao,
    @JsonKey(name: "member_lxqiandao") int? memberLxqiandao,
    @JsonKey(name: "member_salary") int? memberSalary,
    @JsonKey(name: "member_salarydata") int? memberSalarydata,
    @JsonKey(name: "member_lxqday") int? memberLxqday,
    @JsonKey(name: "member_daysalary") int? memberDaysalary,
    @JsonKey(name: "member_resign_switch") int? memberResignSwitch,
  }) = _Config;

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);
}

@freezed
class ListElement with _$ListElement {
  const factory ListElement({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "rate") double? rate,
    @JsonKey(name: "inte") int? inte,
    @JsonKey(name: "wheels") int? wheels,
    @JsonKey(name: "uplevel") int? uplevel,
    @JsonKey(name: "selfmoney") int? selfmoney,
    @JsonKey(name: "salary") int? salary,
    @JsonKey(name: "daysalary") int? daysalary,
    @JsonKey(name: "lianxumoeny") int? lianxumoeny,
    @JsonKey(name: "daymoeny") int? daymoeny,
    @JsonKey(name: "resign_times") int? resignTimes,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _ListElement;

  factory ListElement.fromJson(Map<String, dynamic> json) =>
      _$ListElementFromJson(json);
}
