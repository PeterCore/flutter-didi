// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_withdraws_record_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransferWithdrawsRecordListImpl _$$TransferWithdrawsRecordListImplFromJson(
        Map<String, dynamic> json) =>
    _$TransferWithdrawsRecordListImpl(
      status: (json['status'] as num?)?.toInt(),
      list: json['list'] == null
          ? null
          : TransferWithdrawsRecords.fromJson(
              json['list'] as Map<String, dynamic>),
      pagesize: json['pagesize'] as String?,
      chenggong: json['chenggong'] as String?,
      dendai: json['dendai'] as String?,
      shibai: json['shibai'] as String?,
    );

Map<String, dynamic> _$$TransferWithdrawsRecordListImplToJson(
        _$TransferWithdrawsRecordListImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list,
      'pagesize': instance.pagesize,
      'chenggong': instance.chenggong,
      'dendai': instance.dendai,
      'shibai': instance.shibai,
    };

_$TransferWithdrawsRecordsImpl _$$TransferWithdrawsRecordsImplFromJson(
        Map<String, dynamic> json) =>
    _$TransferWithdrawsRecordsImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              TransferWithdrawsRecordItem.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$TransferWithdrawsRecordsImplToJson(
        _$TransferWithdrawsRecordsImpl instance) =>
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

_$TransferWithdrawsRecordItemImpl _$$TransferWithdrawsRecordItemImplFromJson(
        Map<String, dynamic> json) =>
    _$TransferWithdrawsRecordItemImpl(
      id: (json['id'] as num?)?.toInt(),
      userid: (json['userid'] as num?)?.toInt(),
      amount: (json['amount'] as num?)?.toInt(),
      memo: json['memo'] as String?,
      status: (json['status'] as num?)?.toInt(),
      istype: (json['istype'] as num?)?.toInt(),
      ip: json['ip'] as String?,
      uuid: (json['uuid'] as num?)?.toInt(),
      sendsms: (json['sendsms'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      isdao: (json['isdao'] as num?)?.toInt(),
      cny: (json['CNY'] as num?)?.toDouble(),
      zhuanuserid: (json['zhuanuserid'] as num?)?.toInt(),
      backtype: (json['backtype'] as num?)?.toInt(),
      reason: json['reason'] as String?,
      qd: json['qd'] as String?,
      date: json['date'] as String?,
      type: json['type'] as String?,
      withdrawAmount: json['withdraw_amount'] as String?,
      statusText: json['status_text'] as String?,
    );

Map<String, dynamic> _$$TransferWithdrawsRecordItemImplToJson(
        _$TransferWithdrawsRecordItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userid': instance.userid,
      'amount': instance.amount,
      'memo': instance.memo,
      'status': instance.status,
      'istype': instance.istype,
      'ip': instance.ip,
      'uuid': instance.uuid,
      'sendsms': instance.sendsms,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'isdao': instance.isdao,
      'CNY': instance.cny,
      'zhuanuserid': instance.zhuanuserid,
      'backtype': instance.backtype,
      'reason': instance.reason,
      'qd': instance.qd,
      'date': instance.date,
      'type': instance.type,
      'withdraw_amount': instance.withdrawAmount,
      'status_text': instance.statusText,
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
