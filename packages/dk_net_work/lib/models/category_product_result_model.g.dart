// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_product_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryProductResultModelImpl _$$CategoryProductResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryProductResultModelImpl(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => ListElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryProductResultModelImplToJson(
        _$CategoryProductResultModelImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$ListElementImpl _$$ListElementImplFromJson(Map<String, dynamic> json) =>
    _$ListElementImpl(
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
      classname: json['classname'] as String?,
      clickCount: (json['click_count'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      islist: (json['islist'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ListElementImplToJson(_$ListElementImpl instance) =>
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
