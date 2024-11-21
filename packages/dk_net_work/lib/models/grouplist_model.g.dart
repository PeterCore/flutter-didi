// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grouplist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GrouplistModelImpl _$$GrouplistModelImplFromJson(Map<String, dynamic> json) =>
    _$GrouplistModelImpl(
      status: (json['status'] as num?)?.toInt(),
      list: json['list'] == null
          ? null
          : ListClass.fromJson(json['list'] as Map<String, dynamic>),
      grouprules: json['grouprules'] as String?,
    );

Map<String, dynamic> _$$GrouplistModelImplToJson(
        _$GrouplistModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list,
      'grouprules': instance.grouprules,
    };

_$ListClassImpl _$$ListClassImplFromJson(Map<String, dynamic> json) =>
    _$ListClassImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$ListClassImplToJson(_$ListClassImpl instance) =>
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

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: (json['id'] as num?)?.toInt(),
      userid: (json['userid'] as num?)?.toInt(),
      username: json['username'] as String?,
      productid: (json['productid'] as num?)?.toInt(),
      money: (json['money'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      groupBuyCode: json['group_buy_code'] as String?,
      participantLimit: (json['participant_limit'] as num?)?.toInt(),
      bugnumber: (json['bugnumber'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      title: json['title'] as String?,
      selfmoney: (json['selfmoney'] as num?)?.toInt(),
      relaname: json['relaname'] as String?,
      tele: json['tele'] as String?,
      orderid: json['orderid'] as String?,
      allmoney: (json['allmoney'] as num?)?.toInt(),
      renshu: (json['renshu'] as num?)?.toInt(),
      renshu2: (json['renshu2'] as num?)?.toInt(),
      joinlist: (json['joinlist'] as List<dynamic>?)
          ?.map((e) => Joinlist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userid': instance.userid,
      'username': instance.username,
      'productid': instance.productid,
      'money': instance.money,
      'status': instance.status,
      'group_buy_code': instance.groupBuyCode,
      'participant_limit': instance.participantLimit,
      'bugnumber': instance.bugnumber,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'title': instance.title,
      'selfmoney': instance.selfmoney,
      'relaname': instance.relaname,
      'tele': instance.tele,
      'orderid': instance.orderid,
      'allmoney': instance.allmoney,
      'renshu': instance.renshu,
      'renshu2': instance.renshu2,
      'joinlist': instance.joinlist,
    };

_$JoinlistImpl _$$JoinlistImplFromJson(Map<String, dynamic> json) =>
    _$JoinlistImpl(
      id: (json['id'] as num?)?.toInt(),
      userid: (json['userid'] as num?)?.toInt(),
      username: json['username'] as String?,
      groupBuyId: (json['group_buy_id'] as num?)?.toInt(),
      money: (json['money'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      bugnumber: (json['bugnumber'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      relaname: json['relaname'] as String?,
      tele: json['tele'] as String?,
    );

Map<String, dynamic> _$$JoinlistImplToJson(_$JoinlistImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userid': instance.userid,
      'username': instance.username,
      'group_buy_id': instance.groupBuyId,
      'money': instance.money,
      'status': instance.status,
      'bugnumber': instance.bugnumber,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'relaname': instance.relaname,
      'tele': instance.tele,
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
