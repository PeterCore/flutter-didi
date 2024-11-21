// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_download_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppDownloadInfoModelImpl _$$AppDownloadInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AppDownloadInfoModelImpl(
      status: (json['status'] as num?)?.toInt(),
      list: (json['list'] as List<dynamic>?)?.map((e) => e as String).toList(),
      list2: (json['list2'] as List<dynamic>?)
          ?.map((e) => List2.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AppDownloadInfoModelImplToJson(
        _$AppDownloadInfoModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list,
      'list2': instance.list2,
    };

_$List2Impl _$$List2ImplFromJson(Map<String, dynamic> json) => _$List2Impl(
      os: json['os'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$List2ImplToJson(_$List2Impl instance) =>
    <String, dynamic>{
      'os': instance.os,
      'url': instance.url,
    };
