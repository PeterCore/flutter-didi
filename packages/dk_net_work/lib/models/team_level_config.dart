// To parse this JSON data, do
//
//     final teamLevelConfig = teamLevelConfigFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_level_config.freezed.dart';
part 'team_level_config.g.dart';

TeamLevelConfig teamLevelConfigFromJson(String str) =>
    TeamLevelConfig.fromJson(json.decode(str));

String teamLevelConfigToJson(TeamLevelConfig data) =>
    json.encode(data.toJson());

@freezed
class TeamLevelConfig with _$TeamLevelConfig {
  const factory TeamLevelConfig({
    @JsonKey(name: "teams_inte") int? teamsInte,
    @JsonKey(name: "teams_rate") int? teamsRate,
    @JsonKey(name: "teams_salary") int? teamsSalary,
    @JsonKey(name: "teams_uplervermoney") int? teamsUplervermoney,
    @JsonKey(name: "teams_teamstotleren") int? teamsTeamstotleren,
    @JsonKey(name: "teams_teamsmoney") int? teamsTeamsmoney,
    @JsonKey(name: "teams_totltzrs") int? teamsTotltzrs,
    @JsonKey(name: "teams_totlttzmoeny") int? teamsTotlttzmoeny,
    @JsonKey(name: "teams_threezrs") int? teamsThreezrs,
    @JsonKey(name: "teams_twouzrs") int? teamsTwouzrs,
    @JsonKey(name: "teams_onezrs") int? teamsOners,
    @JsonKey(name: "teams_fourzrs") int? teamsFourzrs,
    @JsonKey(name: "teams_fivezrs") int? teamsFivezrs,
    @JsonKey(name: "teams_salarydata") double? teamsSalarydata,
    @JsonKey(name: "teams_selfmoney") double? teamsSelfmoney,
    @JsonKey(name: "teams_teamspercent") double? teamsPercent,
  }) = _TeamLevelConfig;

  factory TeamLevelConfig.fromJson(Map<String, dynamic> json) =>
      _$TeamLevelConfigFromJson(json);
}
