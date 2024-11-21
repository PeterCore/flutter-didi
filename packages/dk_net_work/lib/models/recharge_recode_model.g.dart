// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recharge_recode_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RechargeRecodeModelImpl _$$RechargeRecodeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RechargeRecodeModelImpl(
      status: (json['status'] as num?)?.toInt(),
      list: json['list'] == null
          ? null
          : RechargeRecodeList.fromJson(json['list'] as Map<String, dynamic>),
      pagesize: json['pagesize'] as String?,
      chenggong: json['chenggong'] as String?,
      dendai: (json['dendai'] as num?)?.toInt(),
      shibai: json['shibai'] as String?,
    );

Map<String, dynamic> _$$RechargeRecodeModelImplToJson(
        _$RechargeRecodeModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list,
      'pagesize': instance.pagesize,
      'chenggong': instance.chenggong,
      'dendai': instance.dendai,
      'shibai': instance.shibai,
    };

_$RechargeRecodeListImpl _$$RechargeRecodeListImplFromJson(
        Map<String, dynamic> json) =>
    _$RechargeRecodeListImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => RechargeRecodeItem.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$RechargeRecodeListImplToJson(
        _$RechargeRecodeListImpl instance) =>
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

_$RechargeRecodeItemImpl _$$RechargeRecodeItemImplFromJson(
        Map<String, dynamic> json) =>
    _$RechargeRecodeItemImpl(
      id: (json['id'] as num?)?.toInt(),
      ordernumber: json['ordernumber'] as String?,
      userid: (json['userid'] as num?)?.toInt(),
      username: json['username'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      usdt: (json['usdt'] as num?)?.toInt(),
      memo: json['memo'] as String?,
      paymentid: (json['paymentid'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      paytime: json['paytime'],
      ip: json['ip'] as String?,
      bank: json['bank'],
      accNo: json['accNo'],
      sendsms: (json['sendsms'] as num?)?.toInt(),
      isone: (json['isone'] as num?)?.toInt(),
      type: json['type'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      uppic: json['uppic'] as String?,
      reason: json['reason'],
      elmoney: (json['elmoney'] as num?)?.toInt(),
      cny: (json['CNY'] as num?)?.toInt(),
      date: json['date'] as String?,
      rechargeAmount: json['recharge_amount'] as String?,
      statusText: json['status_text'] as String?,
    );

Map<String, dynamic> _$$RechargeRecodeItemImplToJson(
        _$RechargeRecodeItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ordernumber': instance.ordernumber,
      'userid': instance.userid,
      'username': instance.username,
      'amount': instance.amount,
      'usdt': instance.usdt,
      'memo': instance.memo,
      'paymentid': instance.paymentid,
      'status': instance.status,
      'paytime': instance.paytime,
      'ip': instance.ip,
      'bank': instance.bank,
      'accNo': instance.accNo,
      'sendsms': instance.sendsms,
      'isone': instance.isone,
      'type': instance.type,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'uppic': instance.uppic,
      'reason': instance.reason,
      'elmoney': instance.elmoney,
      'CNY': instance.cny,
      'date': instance.date,
      'recharge_amount': instance.rechargeAmount,
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
