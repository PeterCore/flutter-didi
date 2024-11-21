// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ip_config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IpConfigModelImpl _$$IpConfigModelImplFromJson(Map<String, dynamic> json) =>
    _$IpConfigModelImpl(
      ipConfigModelSwitch: (json['switch'] as num).toInt(),
      key: json['key'] as String,
    );

Map<String, dynamic> _$$IpConfigModelImplToJson(_$IpConfigModelImpl instance) =>
    <String, dynamic>{
      'switch': instance.ipConfigModelSwitch,
      'key': instance.key,
    };
