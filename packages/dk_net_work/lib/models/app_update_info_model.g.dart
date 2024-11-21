// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_update_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUpdateInfoModelImpl _$$AppUpdateInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AppUpdateInfoModelImpl(
      status: (json['status'] as num?)?.toInt(),
      app: json['app'] == null
          ? null
          : App.fromJson(json['app'] as Map<String, dynamic>),
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => ListElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AppUpdateInfoModelImplToJson(
        _$AppUpdateInfoModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'app': instance.app,
      'list': instance.list,
    };

_$AppImpl _$$AppImplFromJson(Map<String, dynamic> json) => _$AppImpl(
      appNewDownUrl: json['app_new_down_url'] as String?,
      appNewVersion: json['app_new_version'] as String?,
      hotUpDomain: json['hot_up_domain'] as String?,
      forceUpdate: (json['forceUpdate'] as num?)?.toInt(),
      hotUpContent: json['hot_up_content'] as String?,
    );

Map<String, dynamic> _$$AppImplToJson(_$AppImpl instance) => <String, dynamic>{
      'app_new_down_url': instance.appNewDownUrl,
      'app_new_version': instance.appNewVersion,
      'hot_up_domain': instance.hotUpDomain,
      'forceUpdate': instance.forceUpdate,
      'hot_up_content': instance.hotUpContent,
    };

_$ListElementImpl _$$ListElementImplFromJson(Map<String, dynamic> json) =>
    _$ListElementImpl(
      os: json['os'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$ListElementImplToJson(_$ListElementImpl instance) =>
    <String, dynamic>{
      'os': instance.os,
      'url': instance.url,
    };
