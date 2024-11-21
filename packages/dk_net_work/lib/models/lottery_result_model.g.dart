// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lottery_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LotteryResultModelImpl _$$LotteryResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LotteryResultModelImpl(
      state: (json['state'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      msg: json['msg'] as String?,
      index: (json['index'] as num?)?.toInt(),
      levelwheels: (json['levelwheels'] as num?)?.toInt(),
      clicks: (json['clicks'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LotteryResultModelImplToJson(
        _$LotteryResultModelImpl instance) =>
    <String, dynamic>{
      'state': instance.state,
      'status': instance.status,
      'msg': instance.msg,
      'index': instance.index,
      'levelwheels': instance.levelwheels,
      'clicks': instance.clicks,
    };
