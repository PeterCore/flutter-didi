// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_info_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressInfoListModelImpl _$$AddressInfoListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressInfoListModelImpl(
      status: (json['status'] as num?)?.toInt(),
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => AddressInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagesize: json['pagesize'] as String?,
    );

Map<String, dynamic> _$$AddressInfoListModelImplToJson(
        _$AddressInfoListModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list,
      'pagesize': instance.pagesize,
    };
