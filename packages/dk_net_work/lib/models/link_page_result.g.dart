// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'link_page_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LinkPageResultImpl _$$LinkPageResultImplFromJson(Map<String, dynamic> json) =>
    _$LinkPageResultImpl(
      status: (json['status'] as num?)?.toInt(),
      msg: json['msg'] as String?,
      data: json['data'] == null
          ? null
          : ProfileData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LinkPageResultImplToJson(
        _$LinkPageResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };

_$ProfileDataImpl _$$ProfileDataImplFromJson(Map<String, dynamic> json) =>
    _$ProfileDataImpl(
      id: (json['id'] as num?)?.toInt(),
      parent: (json['parent'] as num?)?.toInt(),
      name: json['name'] as String?,
      sort: (json['sort'] as num?)?.toInt(),
      thumbUrl: json['thumb_url'] as String?,
      model: json['model'] as String?,
      color: json['color'] as String?,
      ctitle: json['ctitle'] as String?,
      links: json['links'] as String?,
      ckeywords: json['ckeywords'] as String?,
      cdescription: json['cdescription'] as String?,
      ccontent: json['ccontent'] as String?,
      atindex: (json['atindex'] as num?)?.toInt(),
      atfoot: (json['atfoot'] as num?)?.toInt(),
      ismenus: (json['ismenus'] as num?)?.toInt(),
      classname: json['classname'],
      clickCount: (json['click_count'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      islist: (json['islist'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProfileDataImplToJson(_$ProfileDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent': instance.parent,
      'name': instance.name,
      'sort': instance.sort,
      'thumb_url': instance.thumbUrl,
      'model': instance.model,
      'color': instance.color,
      'ctitle': instance.ctitle,
      'links': instance.links,
      'ckeywords': instance.ckeywords,
      'cdescription': instance.cdescription,
      'ccontent': instance.ccontent,
      'atindex': instance.atindex,
      'atfoot': instance.atfoot,
      'ismenus': instance.ismenus,
      'classname': instance.classname,
      'click_count': instance.clickCount,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'islist': instance.islist,
    };
