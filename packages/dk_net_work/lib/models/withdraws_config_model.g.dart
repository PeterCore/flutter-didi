// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdraws_config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WithdrawsConfigModelImpl _$$WithdrawsConfigModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WithdrawsConfigModelImpl(
      status: (json['status'] as num?)?.toInt(),
      msg: json['msg'] as String?,
      tixinmoney: json['tixinmoney'] as String?,
      realname: json['realname'] as String?,
      bankname: json['bankname'],
      bankcode: json['bankcode'] as String?,
      isalipay: (json['isalipay'] as num?)?.toInt(),
      iszfb: (json['iszfb'] as num?)?.toInt(),
      isduodeli: (json['isduodeli'] as num?)?.toInt(),
      email: json['email'] as String?,
      withdrawalmin: json['withdrawalmin'] as String?,
      daywithdrawals: json['Daywithdrawals'] as String?,
      tixiantime: json['tixiantime'] as String?,
      tixianzhanghu: json['tixianzhanghu'] as String?,
      tixianimoney: json['tixianimoney'] as String?,
      wenxintishi: json['wenxintishi'] as String?,
      istxusdt: (json['istxusdt'] as num?)?.toInt(),
      isbank: (json['isbank'] as num?)?.toInt(),
      isuserbank: (json['isuserbank'] as num?)?.toInt(),
      txcnyusd: json['TXCNYUSD'] as String?,
      cnyusd: json['CNYUSD'] as String?,
      isusdt: (json['isusdt'] as num?)?.toInt(),
      usdtlian: json['usdtlian'] as String?,
      usdtadr: json['usdtadr'] as String?,
      exchangeRateStatus: (json['exchange_rate_status'] as num?)?.toInt(),
      isWithdrawHideRmb: (json['is_withdraw_hide_rmb'] as num?)?.toInt(),
      methodList: (json['method_list'] as List<dynamic>?)
          ?.map((e) => MethodList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WithdrawsConfigModelImplToJson(
        _$WithdrawsConfigModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'tixinmoney': instance.tixinmoney,
      'realname': instance.realname,
      'bankname': instance.bankname,
      'bankcode': instance.bankcode,
      'isalipay': instance.isalipay,
      'iszfb': instance.iszfb,
      'isduodeli': instance.isduodeli,
      'email': instance.email,
      'withdrawalmin': instance.withdrawalmin,
      'Daywithdrawals': instance.daywithdrawals,
      'tixiantime': instance.tixiantime,
      'tixianzhanghu': instance.tixianzhanghu,
      'tixianimoney': instance.tixianimoney,
      'wenxintishi': instance.wenxintishi,
      'istxusdt': instance.istxusdt,
      'isbank': instance.isbank,
      'isuserbank': instance.isuserbank,
      'TXCNYUSD': instance.txcnyusd,
      'CNYUSD': instance.cnyusd,
      'isusdt': instance.isusdt,
      'usdtlian': instance.usdtlian,
      'usdtadr': instance.usdtadr,
      'exchange_rate_status': instance.exchangeRateStatus,
      'is_withdraw_hide_rmb': instance.isWithdrawHideRmb,
      'method_list': instance.methodList,
    };

_$MethodListImpl _$$MethodListImplFromJson(Map<String, dynamic> json) =>
    _$MethodListImpl(
      text: json['text'] as String?,
      cardId: (json['cardid'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MethodListImplToJson(_$MethodListImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'cardid': instance.cardId,
    };
