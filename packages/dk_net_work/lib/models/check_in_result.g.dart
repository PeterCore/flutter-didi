// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_in_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckInResultImpl _$$CheckInResultImplFromJson(Map<String, dynamic> json) =>
    _$CheckInResultImpl(
      status: (json['status'] as num?)?.toInt(),
      msg: (json['msg'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      rewards: (json['rewards'] as List<dynamic>?)
          ?.map((e) => Reward.fromJson(e as Map<String, dynamic>))
          .toList(),
      days: (json['days'] as num?)?.toInt(),
      lxqiandao: (json['lxqiandao'] as num?)?.toInt(),
      lxqday: json['lxqday'] as String?,
      resignTimes: (json['resign_times'] as num?)?.toInt(),
      resignFromDay: (json['resign_from_day'] as num?)?.toInt(),
      resignSwitch: (json['member_resign_switch'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CheckInResultImplToJson(_$CheckInResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'rewards': instance.rewards,
      'days': instance.days,
      'lxqiandao': instance.lxqiandao,
      'lxqday': instance.lxqday,
      'resign_times': instance.resignTimes,
      'resign_from_day': instance.resignFromDay,
      'member_resign_switch': instance.resignSwitch,
    };

_$RewardImpl _$$RewardImplFromJson(Map<String, dynamic> json) => _$RewardImpl(
      id: (json['id'] as num?)?.toInt(),
      days: (json['days'] as num?)?.toInt(),
      reward: (json['reward'] as num?)?.toInt(),
      sort: (json['sort'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$RewardImplToJson(_$RewardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'days': instance.days,
      'reward': instance.reward,
      'sort': instance.sort,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
