// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_category_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductCategoryResultModelImpl _$$ProductCategoryResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductCategoryResultModelImpl(
      productsCategory: (json['ProductsCategory'] as List<dynamic>?)
          ?.map((e) => ProductsCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductCategoryResultModelImplToJson(
        _$ProductCategoryResultModelImpl instance) =>
    <String, dynamic>{
      'ProductsCategory': instance.productsCategory,
    };

_$ProductsCategoryImpl _$$ProductsCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductsCategoryImpl(
      id: (json['id'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      msg: json['msg'] as String?,
      name: json['name'] as String?,
      nextCategoryList: (json['NextCategoryList'] as List<dynamic>?)
          ?.map((e) => ProductsCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductsCategoryImplToJson(
        _$ProductsCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'msg': instance.msg,
      'name': instance.name,
      'NextCategoryList': instance.nextCategoryList,
    };
