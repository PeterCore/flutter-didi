// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionDetailModelImpl _$$TransactionDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionDetailModelImpl(
      status: (json['status'] as num?)?.toInt(),
      ymoneys: json['Ymoneys'] as String?,
      list: json['list'] == null
          ? null
          : TransactionDetailList.fromJson(
              json['list'] as Map<String, dynamic>),
      pagesize: (json['pagesize'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TransactionDetailModelImplToJson(
        _$TransactionDetailModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'Ymoneys': instance.ymoneys,
      'list': instance.list,
      'pagesize': instance.pagesize,
    };

_$ListClassImpl _$$ListClassImplFromJson(Map<String, dynamic> json) =>
    _$ListClassImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => TransactionDetailItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      lastPageUrl: json['last_page_url'] as String?,
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: (json['per_page'] as num?)?.toInt(),
      prevPageUrl: json['prev_page_url'] as String?,
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ListClassImplToJson(_$ListClassImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_$TransactionDetailItemImpl _$$TransactionDetailItemImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionDetailItemImpl(
      id: (json['id'] as num?)?.toInt(),
      moneylogUserid: (json['moneylog_userid'] as num?)?.toInt(),
      moneylogUser: json['moneylog_user'] as String?,
      moneylogMoney: (json['moneylog_money'] as num?)?.toInt(),
      danwei: json['danwei'] as String?,
      moneylogIp: json['moneylog_ip'] as String?,
      moneylogStatus: json['moneylog_status'] as String?,
      moneylogType: json['moneylog_type'] as String?,
      moneylogNotice: json['moneylog_notice'] as String?,
      moneylogExt: json['moneylog_ext'],
      moneylogHouamount: (json['moneylog_houamount'] as num?)?.toInt(),
      moneylogYuanamount: (json['moneylog_yuanamount'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$TransactionDetailItemImplToJson(
        _$TransactionDetailItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'moneylog_userid': instance.moneylogUserid,
      'moneylog_user': instance.moneylogUser,
      'moneylog_money': instance.moneylogMoney,
      'danwei': instance.danwei,
      'moneylog_ip': instance.moneylogIp,
      'moneylog_status': instance.moneylogStatus,
      'moneylog_type': instance.moneylogType,
      'moneylog_notice': instance.moneylogNotice,
      'moneylog_ext': instance.moneylogExt,
      'moneylog_houamount': instance.moneylogHouamount,
      'moneylog_yuanamount': instance.moneylogYuanamount,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'date': instance.date,
    };
