// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_default_address_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDefaultAddressInfoImpl _$$UserDefaultAddressInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDefaultAddressInfoImpl(
      status: (json['status'] as num?)?.toInt(),
      info: json['info'] == null
          ? null
          : AddressInfo.fromJson(json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserDefaultAddressInfoImplToJson(
        _$UserDefaultAddressInfoImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'info': instance.info,
    };

_$AddressInfoImpl _$$AddressInfoImplFromJson(Map<String, dynamic> json) =>
    _$AddressInfoImpl(
      id: (json['id'] as num?)?.toInt(),
      userid: (json['userid'] as num?)?.toInt(),
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      location: json['location'] as String?,
      isDefault: (json['is_default'] as num?)?.toInt(),
      address: json['address'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      nameMask: json['name_mask'] as String?,
      phoneMask: json['phone_mask'] as String?,
      addressMask: json['address_mask'] as String?,
    );

Map<String, dynamic> _$$AddressInfoImplToJson(_$AddressInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userid': instance.userid,
      'name': instance.name,
      'phone': instance.phone,
      'location': instance.location,
      'is_default': instance.isDefault,
      'address': instance.address,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'name_mask': instance.nameMask,
      'phone_mask': instance.phoneMask,
      'address_mask': instance.addressMask,
    };
