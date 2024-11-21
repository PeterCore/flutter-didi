// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommonConfigImpl _$$CommonConfigImplFromJson(Map<String, dynamic> json) =>
    _$CommonConfigImpl(
      status: (json['status'] as num?)?.toInt(),
      msg: json['msg'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CommonConfigImplToJson(_$CommonConfigImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      wwwUrl: json['www_url'] as String?,
      captchaSwitch: (json['captcha_switch'] as num?)?.toInt(),
      miyaoSwitch: (json['miyao_switch'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'www_url': instance.wwwUrl,
      'captcha_switch': instance.captchaSwitch,
      'miyao_switch': instance.miyaoSwitch,
    };
