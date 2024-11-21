// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PointProductModelImpl _$$PointProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PointProductModelImpl(
      status: (json['status'] as num?)?.toInt(),
      list: json['list'] == null
          ? null
          : ListClass.fromJson(json['list'] as Map<String, dynamic>),
      isPoint: (json['isPoint'] as num?)?.toInt(),
      pagesize: json['pagesize'] as String?,
    );

Map<String, dynamic> _$$PointProductModelImplToJson(
        _$PointProductModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list,
      'isPoint': instance.isPoint,
      'pagesize': instance.pagesize,
    };

_$ListClassImpl _$$ListClassImplFromJson(Map<String, dynamic> json) =>
    _$ListClassImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ProductItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String?,
      perPage: (json['per_page'] as num?)?.toInt(),
      prevPageUrl: json['prev_page_url'] as String?,
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

_$ProductItemImpl _$$ProductItemImplFromJson(Map<String, dynamic> json) =>
    _$ProductItemImpl(
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
      integral: (json['integral'] as num?)?.toInt(),
      topStatus: (json['topStatus'] as num?)?.toInt(),
      topTime: json['topTime'],
      extend: json['extend'],
      sort: (json['sort'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updateed_at'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$ProductItemImplToJson(_$ProductItemImpl instance) =>
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
      'integral': instance.integral,
      'topStatus': instance.topStatus,
      'topTime': instance.topTime,
      'extend': instance.extend,
      'sort': instance.sort,
      'created_at': instance.createdAt,
      'updateed_at': instance.updatedAt,
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
