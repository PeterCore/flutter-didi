// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mine_point_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MinePointResultModelImpl _$$MinePointResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MinePointResultModelImpl(
      status: (json['status'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MinePointResultModelImplToJson(
        _$MinePointResultModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      pointsratio: json['Pointsratio'] as String?,
      integral: json['integral'] as String?,
      minExchange: json['minExchange'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'Pointsratio': instance.pointsratio,
      'integral': instance.integral,
      'minExchange': instance.minExchange,
    };
