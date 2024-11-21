// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_p_keys_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyPKeysResultModelImpl _$$VerifyPKeysResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyPKeysResultModelImpl(
      status: (json['status'] as num).toInt(),
      msg: json['msg'] as String,
    );

Map<String, dynamic> _$$VerifyPKeysResultModelImplToJson(
        _$VerifyPKeysResultModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
    };
