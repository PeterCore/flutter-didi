// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_image_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UploadImageResultModelImpl _$$UploadImageResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UploadImageResultModelImpl(
      status: (json['status'] as num?)?.toInt(),
      msg: json['msg'] as String?,
      src: json['src'] as String?,
    );

Map<String, dynamic> _$$UploadImageResultModelImplToJson(
        _$UploadImageResultModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'src': instance.src,
    };
