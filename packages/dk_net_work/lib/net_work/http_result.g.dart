// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HttpResultImpl _$$HttpResultImplFromJson(Map<String, dynamic> json) =>
    _$HttpResultImpl(
      status: (json['status'] as num?)?.toInt(),
      msg: json['msg'],
      t: json['t'] as String?,
    );

Map<String, dynamic> _$$HttpResultImplToJson(_$HttpResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      't': instance.t,
    };
