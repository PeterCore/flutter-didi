// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resigster_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResigsterResultModelImpl _$$ResigsterResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResigsterResultModelImpl(
      status: (json['status'] as num).toInt(),
      msg: json['msg'] as String?,
      url: json['url'] as String?,
      token: json['token'] as String?,
      miyao: json['miyao'] as String?,
    );

Map<String, dynamic> _$$ResigsterResultModelImplToJson(
        _$ResigsterResultModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'url': instance.url,
      'token': instance.token,
      'miyao': instance.miyao,
    };
