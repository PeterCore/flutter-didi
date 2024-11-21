// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_pk_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ViewPkResultImpl _$$ViewPkResultImplFromJson(Map<String, dynamic> json) =>
    _$ViewPkResultImpl(
      status: (json['status'] as num?)?.toInt(),
      miyao: json['miyao'] as String?,
      wxTiShi: json['wx_ti_shi'] as String?,
    );

Map<String, dynamic> _$$ViewPkResultImplToJson(_$ViewPkResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'miyao': instance.miyao,
      'wx_ti_shi': instance.wxTiShi,
    };
