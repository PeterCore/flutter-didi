// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'welfare_coupon_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WelfareCouponResultModelImpl _$$WelfareCouponResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WelfareCouponResultModelImpl(
      status: (json['status'] as num?)?.toInt(),
      list: json['list'] == null
          ? null
          : WelfareList.fromJson(json['list'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WelfareCouponResultModelImplToJson(
        _$WelfareCouponResultModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list,
    };

_$WelfareListImpl _$$WelfareListImplFromJson(Map<String, dynamic> json) =>
    _$WelfareListImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => WelfareItem.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$WelfareListImplToJson(_$WelfareListImpl instance) =>
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

_$WelfareItemImpl _$$WelfareItemImplFromJson(Map<String, dynamic> json) =>
    _$WelfareItemImpl(
      id: (json['id'] as num?)?.toInt(),
      uid: (json['uid'] as num?)?.toInt(),
      uname: json['uname'] as String?,
      channel: (json['channel'] as num?)?.toInt(),
      couponsid: (json['couponsid'] as num?)?.toInt(),
      usebuyid: (json['usebuyid'] as num?)?.toInt(),
      name: json['name'] as String?,
      type: (json['type'] as num?)?.toInt(),
      money: (json['money'] as num?)?.toInt(),
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      exptime: json['exptime'] == null
          ? null
          : DateTime.parse(json['exptime'] as String),
      status: (json['status'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      channelName: json['channelName'],
      statusName: json['statusName'],
      content: json['content'],
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$WelfareItemImplToJson(_$WelfareItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'uname': instance.uname,
      'channel': instance.channel,
      'couponsid': instance.couponsid,
      'usebuyid': instance.usebuyid,
      'name': instance.name,
      'type': instance.type,
      'money': instance.money,
      'time': instance.time?.toIso8601String(),
      'exptime': instance.exptime?.toIso8601String(),
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'channelName': instance.channelName,
      'statusName': instance.statusName,
      'content': instance.content,
      'date': instance.date?.toIso8601String(),
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
