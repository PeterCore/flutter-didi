// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guides_user_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GuidesUserResultModelImpl _$$GuidesUserResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GuidesUserResultModelImpl(
      status: (json['status'] as num?)?.toInt(),
      msg: json['msg'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GuidesUserResultModelImplToJson(
        _$GuidesUserResultModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => GuideItemList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

_$GuideItemListImpl _$$GuideItemListImplFromJson(Map<String, dynamic> json) =>
    _$GuideItemListImpl(
      name: json['name'] as String?,
      arr: (json['arr'] as List<dynamic>?)
          ?.map((e) => GuideItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GuideItemListImplToJson(_$GuideItemListImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'arr': instance.arr,
    };

_$GuideItemImpl _$$GuideItemImplFromJson(Map<String, dynamic> json) =>
    _$GuideItemImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      adverid: (json['adverid'] as num?)?.toInt(),
      thumbUrl: json['thumb_url'] as String?,
      url: json['url'] as String?,
      sort: (json['sort'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'],
      code: json['code'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$GuideItemImplToJson(_$GuideItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'adverid': instance.adverid,
      'thumb_url': instance.thumbUrl,
      'url': instance.url,
      'sort': instance.sort,
      'title': instance.title,
      'description': instance.description,
      'code': instance.code,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
