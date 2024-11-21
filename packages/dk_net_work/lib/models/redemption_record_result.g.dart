// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redemption_record_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RedemptionRecordResultImpl _$$RedemptionRecordResultImplFromJson(
        Map<String, dynamic> json) =>
    _$RedemptionRecordResultImpl(
      status: (json['status'] as num?)?.toInt(),
      list: json['list'] == null
          ? null
          : ListClass.fromJson(json['list'] as Map<String, dynamic>),
      pagesize: json['pagesize'] as String?,
      integral: (json['integral'] as num?)?.toInt(),
      rules: json['rules'] as String?,
    );

Map<String, dynamic> _$$RedemptionRecordResultImplToJson(
        _$RedemptionRecordResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list,
      'pagesize': instance.pagesize,
      'integral': instance.integral,
      'rules': instance.rules,
    };

_$ListClassImpl _$$ListClassImplFromJson(Map<String, dynamic> json) =>
    _$ListClassImpl(
      currentPage: (json['currentPage'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['firstPageUrl'] as String?,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['lastPage'] as num?)?.toInt(),
      lastPageUrl: json['lastPageUrl'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['nextPageUrl'],
      path: json['path'] as String?,
      perPage: (json['perPage'] as num?)?.toInt(),
      prevPageUrl: json['prevPageUrl'],
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ListClassImplToJson(_$ListClassImpl instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'data': instance.data,
      'firstPageUrl': instance.firstPageUrl,
      'from': instance.from,
      'lastPage': instance.lastPage,
      'lastPageUrl': instance.lastPageUrl,
      'links': instance.links,
      'nextPageUrl': instance.nextPageUrl,
      'path': instance.path,
      'perPage': instance.perPage,
      'prevPageUrl': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: (json['id'] as num?)?.toInt(),
      ordernumber: json['ordernumber'],
      userid: (json['userid'] as num?)?.toInt(),
      username: json['username'] as String?,
      productid: (json['productid'] as num?)?.toInt(),
      productname: json['productname'] as String?,
      integral: (json['integral'] as num?)?.toInt(),
      memo: json['memo'],
      status: (json['status'] as num?)?.toInt(),
      number: (json['number'] as num?)?.toInt(),
      ip: json['ip'] as String?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      location: json['location'] as String?,
      shouhuodizhi: json['shouhuodizhi'] as String?,
      sendsms: (json['sendsms'] as num?)?.toInt(),
      type: (json['type'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      expressOrder: json['expressOrder'],
      expressName: json['expressName'],
      image: json['image'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
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
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
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
