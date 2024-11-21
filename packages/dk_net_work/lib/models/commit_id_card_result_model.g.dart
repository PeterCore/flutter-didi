// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_id_card_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommitIdCardResultModelImpl _$$CommitIdCardResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CommitIdCardResultModelImpl(
      status: (json['status'] as num?)?.toInt(),
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$CommitIdCardResultModelImplToJson(
        _$CommitIdCardResultModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
    };
