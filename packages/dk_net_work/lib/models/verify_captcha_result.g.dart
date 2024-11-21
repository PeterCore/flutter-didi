// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_captcha_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyCaptchaResultImpl _$$VerifyCaptchaResultImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyCaptchaResultImpl(
      status: (json['status'] as num?)?.toInt(),
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$VerifyCaptchaResultImplToJson(
        _$VerifyCaptchaResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
    };
