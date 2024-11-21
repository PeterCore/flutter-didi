// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lottery_record_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LotteryRecordListImpl _$$LotteryRecordListImplFromJson(
        Map<String, dynamic> json) =>
    _$LotteryRecordListImpl(
      status: (json['status'] as num?)?.toInt(),
      list: json['list'] == null
          ? null
          : LotteryRecord.fromJson(json['list'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LotteryRecordListImplToJson(
        _$LotteryRecordListImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list,
    };

_$LotteryRecordImpl _$$LotteryRecordImplFromJson(Map<String, dynamic> json) =>
    _$LotteryRecordImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => LotteryRecordItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: (json['per_page'] as num?)?.toInt(),
      prevPageUrl: json['prev_page_url'] as String?,
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LotteryRecordImplToJson(_$LotteryRecordImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_$LotteryRecordItemImpl _$$LotteryRecordItemImplFromJson(
        Map<String, dynamic> json) =>
    _$LotteryRecordItemImpl(
      id: (json['id'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      type: (json['type'] as num?)?.toInt(),
      typeName: json['type_name'] as String?,
      prizeName: json['prize_name'] as String?,
      money: json['money'],
      expdate: json['expdate'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$LotteryRecordItemImplToJson(
        _$LotteryRecordItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'type': instance.type,
      'type_name': instance.typeName,
      'prize_name': instance.prizeName,
      'money': instance.money,
      'expdate': instance.expdate,
      'image': instance.image,
    };

_$LinkImpl _$$LinkImplFromJson(Map<String, dynamic> json) => _$LinkImpl(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$LinkImplToJson(_$LinkImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
