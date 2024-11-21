// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_psw_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingPswResultModelImpl _$$SettingPswResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SettingPswResultModelImpl(
      msg: json['msg'] as String?,
      status: (json['status'] as num?)?.toInt(),
      smsverifi: (json['smsverifi'] as num?)?.toInt(),
      mima: json['mima'] as String?,
    );

Map<String, dynamic> _$$SettingPswResultModelImplToJson(
        _$SettingPswResultModelImpl instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'status': instance.status,
      'smsverifi': instance.smsverifi,
      'mima': instance.mima,
    };
