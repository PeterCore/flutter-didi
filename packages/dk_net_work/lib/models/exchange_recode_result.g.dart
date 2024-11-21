// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_recode_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExchangeRecodeResultImpl _$$ExchangeRecodeResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ExchangeRecodeResultImpl(
      status: (json['status'] as num?)?.toInt(),
      list: json['list'] == null
          ? null
          : ExchangeRecode.fromJson(json['list'] as Map<String, dynamic>),
      pagesize: json['pagesize'] as String?,
      integral: (json['integral'] as num?)?.toInt(),
      rules: json['rules'] as String?,
    );

Map<String, dynamic> _$$ExchangeRecodeResultImplToJson(
        _$ExchangeRecodeResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list,
      'pagesize': instance.pagesize,
      'integral': instance.integral,
      'rules': instance.rules,
    };

_$ExchangeRecodeImpl _$$ExchangeRecodeImplFromJson(Map<String, dynamic> json) =>
    _$ExchangeRecodeImpl(
      currentPage: (json['currentPage'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ExchangeRecodeItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['firstPageUrl'] as String?,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['lastPage'] as num?)?.toInt(),
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: (json['perPage'] as num?)?.toInt(),
      prevPageUrl: json['prev_page_url'] as String?,
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ExchangeRecodeImplToJson(
        _$ExchangeRecodeImpl instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'data': instance.data,
      'firstPageUrl': instance.firstPageUrl,
      'from': instance.from,
      'lastPage': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'perPage': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_$ExchangeRecodeItemImpl _$$ExchangeRecodeItemImplFromJson(
        Map<String, dynamic> json) =>
    _$ExchangeRecodeItemImpl(
      id: (json['id'] as num?)?.toInt(),
      ordernumber: json['ordernumber'] as String?,
      userid: (json['userid'] as num?)?.toInt(),
      username: json['username'] as String?,
      productid: (json['productid'] as num?)?.toInt(),
      productname: json['productname'] as String?,
      integral: (json['integral'] as num?)?.toInt(),
      memo: json['memo'] as String?,
      status: (json['status'] as num?)?.toInt(),
      number: (json['number'] as num?)?.toInt(),
      ip: json['ip'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      location: json['location'] as String?,
      shouhuodizhi: json['shouhuodizhi'] as String?,
      sendsms: (json['sendsms'] as num?)?.toInt(),
      type: (json['type'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      expressOrder: json['expressOrder'] as String?,
      expressName: json['expressName'] as String?,
      image: json['image'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$ExchangeRecodeItemImplToJson(
        _$ExchangeRecodeItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ordernumber': instance.ordernumber,
      'userid': instance.userid,
      'username': instance.username,
      'productid': instance.productid,
      'productname': instance.productname,
      'integral': instance.integral,
      'memo': instance.memo,
      'status': instance.status,
      'number': instance.number,
      'ip': instance.ip,
      'name': instance.name,
      'phone': instance.phone,
      'location': instance.location,
      'shouhuodizhi': instance.shouhuodizhi,
      'sendsms': instance.sendsms,
      'type': instance.type,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'expressOrder': instance.expressOrder,
      'expressName': instance.expressName,
      'image': instance.image,
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
