// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_ship_level.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemberShipLevelImpl _$$MemberShipLevelImplFromJson(
        Map<String, dynamic> json) =>
    _$MemberShipLevelImpl(
      status: (json['status'] as num?)?.toInt(),
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => ListElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      level: json['level'] as String?,
      lastlevel: (json['lastlevel'] as num?)?.toInt(),
      mylevel: (json['mylevel'] as num?)?.toInt(),
      touzi: json['touzi'] as String?,
      buymoney: json['buymoney'] as String?,
      number: (json['number'] as num?)?.toInt(),
      selfnumber: (json['selfnumber'] as num?)?.toInt(),
      salary: (json['salary'] as num?)?.toInt(),
      config: json['config'] == null
          ? null
          : Config.fromJson(json['config'] as Map<String, dynamic>),
      vipshuoming: json['vipshuoming'] as String?,
      inviteMinInvestAmount: json['invite_min_invest_amount'] as String?,
    );

Map<String, dynamic> _$$MemberShipLevelImplToJson(
        _$MemberShipLevelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list,
      'level': instance.level,
      'lastlevel': instance.lastlevel,
      'mylevel': instance.mylevel,
      'touzi': instance.touzi,
      'buymoney': instance.buymoney,
      'number': instance.number,
      'selfnumber': instance.selfnumber,
      'salary': instance.salary,
      'config': instance.config,
      'vipshuoming': instance.vipshuoming,
      'invite_min_invest_amount': instance.inviteMinInvestAmount,
    };

_$ConfigImpl _$$ConfigImplFromJson(Map<String, dynamic> json) => _$ConfigImpl(
      memberNext: (json['member_next'] as num?)?.toInt(),
      memberQiandao: (json['member_qiandao'] as num?)?.toInt(),
      memberLxqiandao: (json['member_lxqiandao'] as num?)?.toInt(),
      memberSalary: (json['member_salary'] as num?)?.toInt(),
      memberSalarydata: (json['member_salarydata'] as num?)?.toInt(),
      memberLxqday: (json['member_lxqday'] as num?)?.toInt(),
      memberDaysalary: (json['member_daysalary'] as num?)?.toInt(),
      memberResignSwitch: (json['member_resign_switch'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ConfigImplToJson(_$ConfigImpl instance) =>
    <String, dynamic>{
      'member_next': instance.memberNext,
      'member_qiandao': instance.memberQiandao,
      'member_lxqiandao': instance.memberLxqiandao,
      'member_salary': instance.memberSalary,
      'member_salarydata': instance.memberSalarydata,
      'member_lxqday': instance.memberLxqday,
      'member_daysalary': instance.memberDaysalary,
      'member_resign_switch': instance.memberResignSwitch,
    };

_$ListElementImpl _$$ListElementImplFromJson(Map<String, dynamic> json) =>
    _$ListElementImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      rate: (json['rate'] as num?)?.toDouble(),
      inte: (json['inte'] as num?)?.toInt(),
      wheels: (json['wheels'] as num?)?.toInt(),
      uplevel: (json['uplevel'] as num?)?.toInt(),
      selfmoney: (json['selfmoney'] as num?)?.toInt(),
      salary: (json['salary'] as num?)?.toInt(),
      daysalary: (json['daysalary'] as num?)?.toInt(),
      lianxumoeny: (json['lianxumoeny'] as num?)?.toInt(),
      daymoeny: (json['daymoeny'] as num?)?.toInt(),
      resignTimes: (json['resign_times'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$ListElementImplToJson(_$ListElementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rate': instance.rate,
      'inte': instance.inte,
      'wheels': instance.wheels,
      'uplevel': instance.uplevel,
      'selfmoney': instance.selfmoney,
      'salary': instance.salary,
      'daysalary': instance.daysalary,
      'lianxumoeny': instance.lianxumoeny,
      'daymoeny': instance.daymoeny,
      'resign_times': instance.resignTimes,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
