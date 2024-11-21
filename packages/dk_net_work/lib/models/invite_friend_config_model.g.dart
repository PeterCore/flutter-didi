// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invite_friend_config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InviteFriendConfigModelImpl _$$InviteFriendConfigModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InviteFriendConfigModelImpl(
      status: (json['status'] as num?)?.toInt(),
      logo: json['logo'] as String?,
      invicode: json['invicode'] as String?,
      yaoqinconte: json['yaoqinconte'] as String?,
      tuihaomaid: json['tuihaomaid'] as String?,
    );

Map<String, dynamic> _$$InviteFriendConfigModelImplToJson(
        _$InviteFriendConfigModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'logo': instance.logo,
      'invicode': instance.invicode,
      'yaoqinconte': instance.yaoqinconte,
      'tuihaomaid': instance.tuihaomaid,
    };
