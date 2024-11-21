// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_detail_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContentDetailResultImpl _$$ContentDetailResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ContentDetailResultImpl(
      status: (json['status'] as num?)?.toInt(),
      msg: json['msg'] as String?,
      data: json['data'] == null
          ? null
          : ContentDetailData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ContentDetailResultImplToJson(
        _$ContentDetailResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };

_$ContentDetailDataImpl _$$ContentDetailDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ContentDetailDataImpl(
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
      popCount: (json['pop_count'] as num?)?.toInt(),
      topStatus: (json['top_status'] as num?)?.toInt(),
      topTime: json['top_time'] == null
          ? null
          : DateTime.parse(json['top_time'] as String),
      extend: json['extend'],
      sort: (json['sort'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      topSort: (json['top_sort'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ContentDetailDataImplToJson(
        _$ContentDetailDataImpl instance) =>
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
      'pop_count': instance.popCount,
      'top_status': instance.topStatus,
      'top_time': instance.topTime?.toIso8601String(),
      'extend': instance.extend,
      'sort': instance.sort,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'top_sort': instance.topSort,
    };
