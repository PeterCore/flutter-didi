// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInResultModelImpl _$$SignInResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignInResultModelImpl(
      status: (json['status'] as num).toInt(),
      msg: json['msg'] as String?,
      saveMiYao: (json['save_mi_yao'] as num?)?.toInt(),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$SignInResultModelImplToJson(
        _$SignInResultModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'save_mi_yao': instance.saveMiYao,
      'token': instance.token,
    };
