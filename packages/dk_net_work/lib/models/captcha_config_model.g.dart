// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'captcha_config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CaptchaConfigModelImpl _$$CaptchaConfigModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CaptchaConfigModelImpl(
      status: (json['status'] as num?)?.toInt(),
      msg: json['msg'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CaptchaConfigModelImplToJson(
        _$CaptchaConfigModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      x: (json['x'] as num?)?.toDouble(),
      y: (json['y'] as num?)?.toDouble(),
      captchaId: json['captcha_id'] as String?,
      time: (json['time'] as num?)?.toInt(),
      dataSwitch: (json['dataSwitch'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'captcha_id': instance.captchaId,
      'time': instance.time,
      'dataSwitch': instance.dataSwitch,
    };
