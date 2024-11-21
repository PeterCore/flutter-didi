// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_records_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromotionRecordsModelImpl _$$PromotionRecordsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PromotionRecordsModelImpl(
      status: (json['status'] as num?)?.toInt(),
      mtype: (json['mtype'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : PromotionRecordData.fromJson(json['data'] as Map<String, dynamic>),
      list: json['list'] as String?,
      pagesize: (json['pagesize'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PromotionRecordsModelImplToJson(
        _$PromotionRecordsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'mtype': instance.mtype,
      'data': instance.data,
      'list': instance.list,
      'pagesize': instance.pagesize,
    };

_$PromotionRecordDataImpl _$$PromotionRecordDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PromotionRecordDataImpl(
      onezrs: (json['onezrs'] as num?)?.toInt(),
      weifanhuibenjin: (json['weifanhuibenjin'] as num?)?.toInt(),
      daoqiguquan: (json['daoqiguquan'] as num?)?.toInt(),
      yuebao: (json['yuebao'] as num?)?.toInt(),
      ketixianjine: (json['ketixianjine'] as num?)?.toInt(),
      qiandaorenshu: (json['qiandaorenshu'] as num?)?.toInt(),
      teamTotalWithdraw: json['team_total_withdraw'] as String?,
      onetzrs: (json['onetzrs'] as num?)?.toInt(),
      onecz: json['onecz'] as String?,
      twouzrs: (json['twouzrs'] as num?)?.toInt(),
      twoucz: json['twoucz'] as String?,
      threezrs: (json['threezrs'] as num?)?.toInt(),
      threecz: json['threecz'] as String?,
      hebizrs: json['hebizrs'] as String?,
      hebicz: json['hebicz'] as String?,
      totlusdttx: json['totlusdttx'] as String?,
      totlusdtcz: json['totlusdtcz'] as String?,
      totltx: json['totltx'] as String?,
      totltzhuce: (json['totltzhuce'] as num?)?.toInt(),
      totlcz: json['totlcz'] as String?,
      totltzrs: (json['totltzrs'] as num?)?.toInt(),
      totltz: json['totltz'] as String?,
      tzone: (json['tzone'] as num?)?.toInt(),
      tztwo: (json['tztwo'] as num?)?.toInt(),
      tzthree: (json['tzthree'] as num?)?.toInt(),
      tzfour: (json['tzfour'] as num?)?.toInt(),
      tzfive: (json['tzfive'] as num?)?.toInt(),
      vip: (json['vip'] as num?)?.toInt(),
      totlejifen: (json['totlejifen'] as num?)?.toInt(),
      virtual: (json['virtual'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PromotionRecordDataImplToJson(
        _$PromotionRecordDataImpl instance) =>
    <String, dynamic>{
      'onezrs': instance.onezrs,
      'weifanhuibenjin': instance.weifanhuibenjin,
      'daoqiguquan': instance.daoqiguquan,
      'yuebao': instance.yuebao,
      'ketixianjine': instance.ketixianjine,
      'qiandaorenshu': instance.qiandaorenshu,
      'team_total_withdraw': instance.teamTotalWithdraw,
      'onetzrs': instance.onetzrs,
      'onecz': instance.onecz,
      'twouzrs': instance.twouzrs,
      'twoucz': instance.twoucz,
      'threezrs': instance.threezrs,
      'threecz': instance.threecz,
      'hebizrs': instance.hebizrs,
      'hebicz': instance.hebicz,
      'totlusdttx': instance.totlusdttx,
      'totlusdtcz': instance.totlusdtcz,
      'totltx': instance.totltx,
      'totltzhuce': instance.totltzhuce,
      'totlcz': instance.totlcz,
      'totltzrs': instance.totltzrs,
      'totltz': instance.totltz,
      'tzone': instance.tzone,
      'tztwo': instance.tztwo,
      'tzthree': instance.tzthree,
      'tzfour': instance.tzfour,
      'tzfive': instance.tzfive,
      'vip': instance.vip,
      'totlejifen': instance.totlejifen,
      'virtual': instance.virtual,
    };
