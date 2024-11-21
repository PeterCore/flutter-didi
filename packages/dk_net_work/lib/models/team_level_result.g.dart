// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_level_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamLevelResultImpl _$$TeamLevelResultImplFromJson(
        Map<String, dynamic> json) =>
    _$TeamLevelResultImpl(
      status: (json['status'] as num?)?.toInt(),
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => Nextlevel.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastteams: (json['lastteams'] as num?)?.toInt(),
      currentlevel: json['Currentlevel'] == null
          ? null
          : Currentlevel.fromJson(json['Currentlevel'] as Map<String, dynamic>),
      nextlevel: json['nextlevel'] == null
          ? null
          : Nextlevel.fromJson(json['nextlevel'] as Map<String, dynamic>),
      config: json['config'] == null
          ? null
          : TeamLevelConfig.fromJson(json['config'] as Map<String, dynamic>),
      teamshuoming: json['teamshuoming'] as String?,
    );

Map<String, dynamic> _$$TeamLevelResultImplToJson(
        _$TeamLevelResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list,
      'lastteams': instance.lastteams,
      'Currentlevel': instance.currentlevel,
      'nextlevel': instance.nextlevel,
      'config': instance.config,
      'teamshuoming': instance.teamshuoming,
    };

_$CurrentlevelImpl _$$CurrentlevelImplFromJson(Map<String, dynamic> json) =>
    _$CurrentlevelImpl(
      onetzrs: (json['onetzrs'] as num?)?.toInt(),
      twozrs: (json['twozrs'] as num?)?.toInt(),
      threezrs: (json['threezrs'] as num?)?.toInt(),
      fourzrs: (json['fourzrs'] as num?)?.toInt(),
      fivezrs: (json['fivezrs'] as num?)?.toInt(),
      totlttzmoeny: json['totlttzmoeny'] as String?,
      totltzrs: (json['totltzrs'] as num?)?.toInt(),
      teamsmoney: json['teamsmoney'] as String?,
      teamstotleren: (json['teamstotleren'] as num?)?.toInt(),
      selfmoney: json['selfmoney'] as String?,
      agentname: json['agentname'] as String?,
      myteams: (json['myteams'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CurrentlevelImplToJson(_$CurrentlevelImpl instance) =>
    <String, dynamic>{
      'onetzrs': instance.onetzrs,
      'twozrs': instance.twozrs,
      'threezrs': instance.threezrs,
      'fourzrs': instance.fourzrs,
      'fivezrs': instance.fivezrs,
      'totlttzmoeny': instance.totlttzmoeny,
      'totltzrs': instance.totltzrs,
      'teamsmoney': instance.teamsmoney,
      'teamstotleren': instance.teamstotleren,
      'selfmoney': instance.selfmoney,
      'agentname': instance.agentname,
      'myteams': instance.myteams,
    };

_$NextlevelImpl _$$NextlevelImplFromJson(Map<String, dynamic> json) =>
    _$NextlevelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      rate: (json['rate'] as num?)?.toDouble(),
      inte: (json['inte'] as num?)?.toDouble(),
      onezrs: (json['onezrs'] as num?)?.toInt(),
      threezrs: (json['threezrs'] as num?)?.toInt(),
      fivezrs: (json['fivezrs'] as num?)?.toInt(),
      fourzrs: (json['fourzrs'] as num?)?.toInt(),
      twouzrs: (json['twouzrs'] as num?)?.toInt(),
      totlttzmoeny: (json['totlttzmoeny'] as num?)?.toDouble(),
      totltzrs: (json['totltzrs'] as num?)?.toInt(),
      teamsmoney: (json['teamsmoney'] as num?)?.toInt(),
      teamspercent: (json['teamspercent'] as num?)?.toDouble(),
      teamstotleren: (json['teamstotleren'] as num?)?.toInt(),
      uplervermoney: (json['uplervermoney'] as num?)?.toDouble(),
      selfmoney: (json['selfmoney'] as num?)?.toDouble(),
      salary: (json['salary'] as num?)?.toDouble(),
      mark: json['mark'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$NextlevelImplToJson(_$NextlevelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rate': instance.rate,
      'inte': instance.inte,
      'onezrs': instance.onezrs,
      'threezrs': instance.threezrs,
      'fivezrs': instance.fivezrs,
      'fourzrs': instance.fourzrs,
      'twouzrs': instance.twouzrs,
      'totlttzmoeny': instance.totlttzmoeny,
      'totltzrs': instance.totltzrs,
      'teamsmoney': instance.teamsmoney,
      'teamspercent': instance.teamspercent,
      'teamstotleren': instance.teamstotleren,
      'uplervermoney': instance.uplervermoney,
      'selfmoney': instance.selfmoney,
      'salary': instance.salary,
      'mark': instance.mark,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
