// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lottery_config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LotteryConfigModelImpl _$$LotteryConfigModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LotteryConfigModelImpl(
      state: (json['state'] as num?)?.toInt(),
      lotteryPeizhi: (json['LotteryPeizhi'] as List<dynamic>?)
          ?.map((e) => LotteryPeizhi.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LotteryConfigModelImplToJson(
        _$LotteryConfigModelImpl instance) =>
    <String, dynamic>{
      'state': instance.state,
      'LotteryPeizhi': instance.lotteryPeizhi,
    };

_$LotteryPeizhiImpl _$$LotteryPeizhiImplFromJson(Map<String, dynamic> json) =>
    _$LotteryPeizhiImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      moneys: (json['moneys'] as num?)?.toDouble(),
      prize: json['prize'] as String?,
      winningrate: (json['winningrate'] as num?)?.toInt(),
      img: json['img'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$LotteryPeizhiImplToJson(_$LotteryPeizhiImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'moneys': instance.moneys,
      'prize': instance.prize,
      'winningrate': instance.winningrate,
      'img': instance.img,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
