// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_address_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateAddressResultModelImpl _$$CreateAddressResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateAddressResultModelImpl(
      status: (json['status'] as num?)?.toInt(),
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$CreateAddressResultModelImplToJson(
        _$CreateAddressResultModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
    };
