// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResultModelImpl _$$BaseResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseResultModelImpl(
      status: (json['status'] as num?)?.toInt(),
      msg: json['msg'] as String?,
      data: json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$BaseResultModelImplToJson(
        _$BaseResultModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };
