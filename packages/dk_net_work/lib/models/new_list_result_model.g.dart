// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_list_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewListResultModelImpl _$$NewListResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NewListResultModelImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Articlescategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NewListResultModelImplToJson(
        _$NewListResultModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$ArticlescategoryImpl _$$ArticlescategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$ArticlescategoryImpl(
      id: (json['id'] as num?)?.toInt(),
      categoryId: (json['category_id'] as num?)?.toInt(),
      categoryName: json['category_name'] as String?,
      title: json['title'] as String?,
      author: json['author'] as String?,
      keyinfo: json['keyinfo'] as String?,
      descr: json['descr'] as String?,
      image: json['image'] as String?,
      photos: json['photos'] as String?,
      content: json['content'] as String?,
      status: (json['status'] as num?)?.toInt(),
      clickCount: (json['click_count'] as num?)?.toInt(),
      topStatus: (json['top_status'] as num?)?.toInt(),
      topTime: json['top_time'] as String?,
      extend: json['extend'],
      sort: (json['sort'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      topSort: (json['top_sort'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ArticlescategoryImplToJson(
        _$ArticlescategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_id': instance.categoryId,
      'category_name': instance.categoryName,
      'title': instance.title,
      'author': instance.author,
      'keyinfo': instance.keyinfo,
      'descr': instance.descr,
      'image': instance.image,
      'photos': instance.photos,
      'content': instance.content,
      'status': instance.status,
      'click_count': instance.clickCount,
      'top_status': instance.topStatus,
      'top_time': instance.topTime,
      'extend': instance.extend,
      'sort': instance.sort,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'top_sort': instance.topSort,
    };
