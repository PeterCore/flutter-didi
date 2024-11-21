// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kyc_certification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KycCertificationImpl _$$KycCertificationImplFromJson(
        Map<String, dynamic> json) =>
    _$KycCertificationImpl(
      status: (json['status'] as num?)?.toInt(),
      realname: json['realname'] as String?,
      card: json['card'] as String?,
      stats: (json['stats'] as num?)?.toInt(),
      sjnum: (json['sjnum'] as num?)?.toInt(),
      pic1: json['pic1'],
      pic2: json['pic2'],
      pic3: json['pic3'] as String?,
      mark: json['mark'],
      msg: json['msg'] as String?,
      sancishibai: json['sancishibai'] as String?,
      isCardImage: (json['is_card_image'] as num?)?.toInt(),
      ishandheld: (json['ishandheld'] as num?)?.toInt(),
      ispay: (json['ispay'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$KycCertificationImplToJson(
        _$KycCertificationImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'realname': instance.realname,
      'card': instance.card,
      'stats': instance.stats,
      'sjnum': instance.sjnum,
      'pic1': instance.pic1,
      'pic2': instance.pic2,
      'pic3': instance.pic3,
      'mark': instance.mark,
      'msg': instance.msg,
      'sancishibai': instance.sancishibai,
      'is_card_image': instance.isCardImage,
      'ishandheld': instance.ishandheld,
      'ispay': instance.ispay,
    };
