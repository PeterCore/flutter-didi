// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point_product_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PointProductDetailModelImpl _$$PointProductDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PointProductDetailModelImpl(
      status: (json['status'] as num?)?.toInt(),
      title: json['title'] as String?,
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      ruleArea: json['ruleArea'] as String?,
    );

Map<String, dynamic> _$$PointProductDetailModelImplToJson(
        _$PointProductDetailModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'title': instance.title,
      'product': instance.product,
      'ruleArea': instance.ruleArea,
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num?)?.toInt(),
      categoryId: (json['categoryId'] as num?)?.toInt(),
      categoryName: json['categoryName'] as String?,
      title: json['title'] as String?,
      author: json['author'] as String?,
      keyinfo: json['keyinfo'] as String?,
      descr: json['descr'] as String?,
      image: json['image'] as String?,
      photos:
          (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
      content: json['content'] as String?,
      status: (json['status'] as num?)?.toInt(),
      clickCount: (json['clickCount'] as num?)?.toInt(),
      integral: (json['integral'] as num?)?.toInt(),
      topStatus: (json['topStatus'] as num?)?.toInt(),
      topTime: json['topTime'],
      extend: json['extend'],
      sort: (json['sort'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      ispoto: (json['ispoto'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'title': instance.title,
      'author': instance.author,
      'keyinfo': instance.keyinfo,
      'descr': instance.descr,
      'image': instance.image,
      'photos': instance.photos,
      'content': instance.content,
      'status': instance.status,
      'clickCount': instance.clickCount,
      'integral': instance.integral,
      'topStatus': instance.topStatus,
      'topTime': instance.topTime,
      'extend': instance.extend,
      'sort': instance.sort,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'ispoto': instance.ispoto,
    };
