// To parse this JSON data, do
//
//     final teamLevelResult = teamLevelResultFromJson(jsonString);

import 'dart:convert';

import 'package:dk_net_work/models/team_level_config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_level_result.freezed.dart';
part 'team_level_result.g.dart';

TeamLevelResult teamLevelResultFromJson(String str) =>
    TeamLevelResult.fromJson(json.decode(str));

String teamLevelResultToJson(TeamLevelResult data) =>
    json.encode(data.toJson());

@freezed
class TeamLevelResult with _$TeamLevelResult {
  const factory TeamLevelResult({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "list") List<Nextlevel>? list,
    @JsonKey(name: "lastteams") int? lastteams,
    @JsonKey(name: "Currentlevel") Currentlevel? currentlevel,
    @JsonKey(name: "nextlevel") Nextlevel? nextlevel,
    @JsonKey(name: "config") TeamLevelConfig? config,
    @JsonKey(name: "teamshuoming") String? teamshuoming,
  }) = _TeamLevelResult;

  factory TeamLevelResult.fromJson(Map<String, dynamic> json) =>
      _$TeamLevelResultFromJson(json);
}

@freezed
class Currentlevel with _$Currentlevel {
  const factory Currentlevel({
    @JsonKey(name: "onetzrs") int? onetzrs,
    @JsonKey(name: "twozrs") int? twozrs,
    @JsonKey(name: "threezrs") int? threezrs,
    @JsonKey(name: "fourzrs") int? fourzrs,
    @JsonKey(name: "fivezrs") int? fivezrs,
    @JsonKey(name: "totlttzmoeny") String? totlttzmoeny,
    @JsonKey(name: "totltzrs") int? totltzrs,
    @JsonKey(name: "teamsmoney") String? teamsmoney,
    @JsonKey(name: "teamstotleren") int? teamstotleren,
    @JsonKey(name: "selfmoney") String? selfmoney,
    @JsonKey(name: "agentname") String? agentname,
    @JsonKey(name: "myteams") int? myteams,
  }) = _Currentlevel;

  factory Currentlevel.fromJson(Map<String, dynamic> json) =>
      _$CurrentlevelFromJson(json);
}

@freezed
class Nextlevel with _$Nextlevel {
  const factory Nextlevel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "rate") double? rate,
    @JsonKey(name: "inte") double? inte,
    @JsonKey(name: "onezrs") int? onezrs,
    @JsonKey(name: "threezrs") int? threezrs,
    @JsonKey(name: "fivezrs") int? fivezrs,
    @JsonKey(name: "fourzrs") int? fourzrs,
    @JsonKey(name: "twouzrs") int? twouzrs,
    @JsonKey(name: "totlttzmoeny") double? totlttzmoeny,
    @JsonKey(name: "totltzrs") int? totltzrs,
    @JsonKey(name: "teamsmoney") int? teamsmoney,
    @JsonKey(name: "teamspercent") double? teamspercent,
    @JsonKey(name: "teamstotleren") int? teamstotleren,
    @JsonKey(name: "uplervermoney") double? uplervermoney,
    @JsonKey(name: "selfmoney") double? selfmoney,
    @JsonKey(name: "salary") double? salary,
    @JsonKey(name: "mark") String? mark,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _Nextlevel;

  factory Nextlevel.fromJson(Map<String, dynamic> json) =>
      _$NextlevelFromJson(json);
}
