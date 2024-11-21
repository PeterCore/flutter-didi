// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yu_e_bao_transactions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$YueBaoTransactionsModelImpl _$$YueBaoTransactionsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$YueBaoTransactionsModelImpl(
      status: (json['status'] as num?)?.toInt(),
      isequity: (json['isequity'] as num?)?.toInt(),
      list: json['list'] == null
          ? null
          : YuEBaoTransactionsList.fromJson(
              json['list'] as Map<String, dynamic>),
      pagesize: (json['pagesize'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$YueBaoTransactionsModelImplToJson(
        _$YueBaoTransactionsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'isequity': instance.isequity,
      'list': instance.list,
      'pagesize': instance.pagesize,
    };

_$YuEBaoTransactionsListImpl _$$YuEBaoTransactionsListImplFromJson(
        Map<String, dynamic> json) =>
    _$YuEBaoTransactionsListImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => YuEBaoTransactionsItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'],
      path: json['path'] as String?,
      perPage: (json['per_page'] as num?)?.toInt(),
      prevPageUrl: json['prev_page_url'],
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$YuEBaoTransactionsListImplToJson(
        _$YuEBaoTransactionsListImpl instance) =>
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

_$YuEBaoTransactionsItemImpl _$$YuEBaoTransactionsItemImplFromJson(
        Map<String, dynamic> json) =>
    _$YuEBaoTransactionsItemImpl(
      id: (json['id'] as num?)?.toInt(),
      moneylogUserid: (json['moneylog_userid'] as num?)?.toInt(),
      moneylogMoney: (json['moneylog_money'] as num?)?.toInt(),
      danwei: json['danwei'] as String?,
      moneylogIp: json['moneylog_ip'] as String?,
      moneylogStatus: json['moneylog_status'] as String?,
      moneylogType: json['moneylog_type'] as String?,
      moneylogNotice: json['moneylog_notice'] as String?,
      moneylogExt: json['moneylog_ext'] as String?,
      moneylogHouamount: (json['moneylog_houamount'] as num?)?.toInt(),
      moneylogYuanamount: (json['moneylog_yuanamount'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      isext: (json['isext'] as num?)?.toInt(),
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$YuEBaoTransactionsItemImplToJson(
        _$YuEBaoTransactionsItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'moneylog_userid': instance.moneylogUserid,
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
      'isext': instance.isext,
      'date': instance.date,
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
