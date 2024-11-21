// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipients_records_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipientsRecordsResultImpl _$$RecipientsRecordsResultImplFromJson(
        Map<String, dynamic> json) =>
    _$RecipientsRecordsResultImpl(
      status: (json['status'] as num?)?.toInt(),
      list: (json['list'] as List<dynamic>?)
          ?.map(
              (e) => RecipientsListElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagesize: json['pagesize'] as String?,
    );

Map<String, dynamic> _$$RecipientsRecordsResultImplToJson(
        _$RecipientsRecordsResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list,
      'pagesize': instance.pagesize,
    };

_$RecipientsListElementImpl _$$RecipientsListElementImplFromJson(
        Map<String, dynamic> json) =>
    _$RecipientsListElementImpl(
      id: (json['id'] as num?)?.toInt(),
      account: json['account'] as String?,
      name: json['name'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$RecipientsListElementImplToJson(
        _$RecipientsListElementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account': instance.account,
      'name': instance.name,
      'created_at': instance.createdAt,
    };
