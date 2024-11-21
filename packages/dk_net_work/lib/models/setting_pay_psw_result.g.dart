// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_pay_psw_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingPayPswResultImpl _$$SettingPayPswResultImplFromJson(
        Map<String, dynamic> json) =>
    _$SettingPayPswResultImpl(
      status: (json['status'] as num?)?.toInt(),
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$SettingPayPswResultImplToJson(
        _$SettingPayPswResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
    };
