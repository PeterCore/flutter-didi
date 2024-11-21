// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeResultModelImpl _$$HomeResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeResultModelImpl(
      isvideo: (json['isvideo'] as num?)?.toInt(),
      logo: json['logo'] as String?,
      videourl: json['videourl'] as String?,
      voidpic: json['voidpic'] as String?,
      banner: (json['banner'] as List<dynamic>?)
          ?.map((e) => Banner.fromJson(e as Map<String, dynamic>))
          .toList(),
      isggao: (json['isggao'] as num?)?.toInt(),
      openzhuan: (json['openzhuan'] as num?)?.toInt(),
      isequity: (json['isequity'] as num?)?.toInt(),
      isschool: (json['isschool'] as num?)?.toInt(),
      gonggao: json['gonggao'] == null
          ? null
          : Gonggao.fromJson(json['gonggao'] as Map<String, dynamic>),
      gujia: json['gujia'] == null
          ? null
          : Gujia.fromJson(json['gujia'] as Map<String, dynamic>),
      app: json['app'] == null
          ? null
          : App.fromJson(json['app'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeResultModelImplToJson(
        _$HomeResultModelImpl instance) =>
    <String, dynamic>{
      'isvideo': instance.isvideo,
      'logo': instance.logo,
      'videourl': instance.videourl,
      'voidpic': instance.voidpic,
      'banner': instance.banner,
      'isggao': instance.isggao,
      'openzhuan': instance.openzhuan,
      'isequity': instance.isequity,
      'isschool': instance.isschool,
      'gonggao': instance.gonggao,
      'gujia': instance.gujia,
      'app': instance.app,
    };

_$AppImpl _$$AppImplFromJson(Map<String, dynamic> json) => _$AppImpl(
      appNewDownUrl: json['appNewDownUrl'] as String?,
      appNewVersion: json['appNewVersion'] as String?,
      hotUpDomain: json['hotUpDomain'] as String?,
      forceUpdate: (json['forceUpdate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AppImplToJson(_$AppImpl instance) => <String, dynamic>{
      'appNewDownUrl': instance.appNewDownUrl,
      'appNewVersion': instance.appNewVersion,
      'hotUpDomain': instance.hotUpDomain,
      'forceUpdate': instance.forceUpdate,
    };

_$BannerImpl _$$BannerImplFromJson(Map<String, dynamic> json) => _$BannerImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      adverid: (json['adverid'] as num?)?.toInt(),
      thumbUrl: json['thumb_url'] as String?,
      url: json['url'] as String?,
      sort: (json['sort'] as num?)?.toInt(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      code: json['code'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$BannerImplToJson(_$BannerImpl instance) =>
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

_$GonggaoImpl _$$GonggaoImplFromJson(Map<String, dynamic> json) =>
    _$GonggaoImpl(
      title: json['title'] as String?,
      ccontent: json['ccontent'] as String?,
    );

Map<String, dynamic> _$$GonggaoImplToJson(_$GonggaoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'ccontent': instance.ccontent,
    };

_$GujiaImpl _$$GujiaImplFromJson(Map<String, dynamic> json) => _$GujiaImpl(
      price: json['price'] as String?,
      falg: (json['falg'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$GujiaImplToJson(_$GujiaImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'falg': instance.falg,
    };
