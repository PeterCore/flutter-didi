// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DefaultAddressModelImpl _$$DefaultAddressModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DefaultAddressModelImpl(
      status: (json['status'] as num?)?.toInt(),
      info: json['info'] == null
          ? null
          : AddressInfo.fromJson(json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DefaultAddressModelImplToJson(
        _$DefaultAddressModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'info': instance.info,
    };
