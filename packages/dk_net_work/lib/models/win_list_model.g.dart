// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'win_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WinListModelImpl _$$WinListModelImplFromJson(Map<String, dynamic> json) =>
    _$WinListModelImpl(
      status: (json['status'] as num?)?.toInt(),
      list1: (json['list1'] as List<dynamic>?)
          ?.map((e) => List1.fromJson(e as Map<String, dynamic>))
          .toList(),
      list2: json['list2'] as String?,
      list3: json['list3'] as String?,
      list4: json['list4'] as String?,
      remainCount: (json['remain_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$WinListModelImplToJson(_$WinListModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list1': instance.list1,
      'list2': instance.list2,
      'list3': instance.list3,
      'list4': instance.list4,
      'remain_count': instance.remainCount,
    };

_$List1Impl _$$List1ImplFromJson(Map<String, dynamic> json) => _$List1Impl(
      id: (json['id'] as num?)?.toInt(),
      moneylogUserid: (json['moneylog_userid'] as num?)?.toInt(),
      moneylogUser: json['moneylog_user'] as String?,
      moneylogMoney: (json['moneylog_money'] as num?)?.toDouble(),
      danwei: json['danwei'] as String?,
      moneylogIp: json['moneylog_ip'] as String?,
      moneylogStatus: json['moneylog_status'] as String?,
      moneylogType: json['moneylog_type'] as String?,
      moneylogNotice: json['moneylog_notice'] as String?,
      moneylogExt: json['moneylog_ext'],
      moneylogHouamount: (json['moneylog_houamount'] as num?)?.toDouble(),
      moneylogYuanamount: (json['moneylog_yuanamount'] as num?)?.toDouble(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$List1ImplToJson(_$List1Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'moneylog_userid': instance.moneylogUserid,
      'moneylog_user': instance.moneylogUser,
      'moneylog_money': instance.moneylogMoney,
      'danwei': instance.danwei,
      'moneylog_ip': instance.moneylogIp,
      'moneylog_status': instance.moneylogStatus,
      'moneylog_type': instance.moneylogType,
      'moneylog_notice': instance.moneylogNotice,
      'moneylog_ext': instance.moneylogExt,
      'moneylog_houamount': instance.moneylogHouamount,
      'moneylog_yuanamount': instance.moneylogYuanamount,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
