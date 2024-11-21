// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'online_recharge_type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnlineRechargeTypeModelImpl _$$OnlineRechargeTypeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OnlineRechargeTypeModelImpl(
      status: (json['status'] as num?)?.toInt(),
      txmoney: json['txmoney'] as String?,
      zhamount: json['zhamount'] as String?,
      wycznr: json['wycznr'] as String?,
      tishi: json['tishi'] as String?,
      cnyusd: json['CNYUSD'] as String?,
      mincash: json['mincash'] as String?,
      maxcash: (json['maxcash'] as num?)?.toInt(),
      userid: (json['userid'] as num?)?.toInt(),
      paypic: (json['paypic'] as num?)?.toInt(),
      exchangeRateStatus: (json['exchange_rate_status'] as num?)?.toInt(),
      rechargeMustBindWallet:
          (json['recharge_must_bind_wallet'] as num?)?.toInt(),
      usdtorder: (json['usdtorder'] as num?)?.toInt(),
      zhuantixianyue: (json['zhuantixianyue'] as num?)?.toInt(),
      zhuantouzi: (json['zhuantouzi'] as num?)?.toInt(),
      payments: (json['Payments'] as List<dynamic>?)
          ?.map((e) => Payment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OnlineRechargeTypeModelImplToJson(
        _$OnlineRechargeTypeModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'txmoney': instance.txmoney,
      'zhamount': instance.zhamount,
      'wycznr': instance.wycznr,
      'tishi': instance.tishi,
      'CNYUSD': instance.cnyusd,
      'mincash': instance.mincash,
      'maxcash': instance.maxcash,
      'userid': instance.userid,
      'paypic': instance.paypic,
      'exchange_rate_status': instance.exchangeRateStatus,
      'recharge_must_bind_wallet': instance.rechargeMustBindWallet,
      'usdtorder': instance.usdtorder,
      'zhuantixianyue': instance.zhuantixianyue,
      'zhuantouzi': instance.zhuantouzi,
      'Payments': instance.payments,
    };

_$PaymentImpl _$$PaymentImplFromJson(Map<String, dynamic> json) =>
    _$PaymentImpl(
      id: (json['id'] as num?)?.toInt(),
      payCode: json['pay_code'] as String?,
      payName: json['pay_name'] as String?,
      payBank: json['pay_bank'] as String?,
      payPic: json['pay_pic'] as String?,
      payDesc: json['pay_desc'] as String?,
      maxmoney: (json['maxmoney'] as num?)?.toInt(),
      minmoney: (json['minmoney'] as num?)?.toInt(),
      enabled: (json['enabled'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      orderby: (json['orderby'] as num?)?.toInt(),
      links: json['links'] as String?,
      cardtname: json['cardtname'] as String?,
      cardnumber: json['cardnumber'] as String?,
      cardbank: json['cardbank'] as String?,
      zhuanpic: (json['zhuanpic'] as num?)?.toInt(),
      wyczkg: (json['wyczkg'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PaymentImplToJson(_$PaymentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pay_code': instance.payCode,
      'pay_name': instance.payName,
      'pay_bank': instance.payBank,
      'pay_pic': instance.payPic,
      'pay_desc': instance.payDesc,
      'maxmoney': instance.maxmoney,
      'minmoney': instance.minmoney,
      'enabled': instance.enabled,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'orderby': instance.orderby,
      'links': instance.links,
      'cardtname': instance.cardtname,
      'cardnumber': instance.cardnumber,
      'cardbank': instance.cardbank,
      'zhuanpic': instance.zhuanpic,
      'wyczkg': instance.wyczkg,
    };
