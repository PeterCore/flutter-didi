// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_in_success_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckInSuccessResultImpl _$$CheckInSuccessResultImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckInSuccessResultImpl(
      status: (json['status'] as num?)?.toInt(),
      msg: json['msg'] as String?,
      msg2: json['msg2'] as String?,
    );

Map<String, dynamic> _$$CheckInSuccessResultImplToJson(
        _$CheckInSuccessResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'msg2': instance.msg2,
    };
