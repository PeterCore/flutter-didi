// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_info_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayInfoResultModelImpl _$$PayInfoResultModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PayInfoResultModelImpl(
      status: (json['status'] as num?)?.toInt(),
      msg: json['msg'] as String?,
      mobile: json['mobile'] as String?,
      isreal: (json['isreal'] as num?)?.toInt(),
      realname: json['realname'] as String?,
      isbank: (json['isbank'] as num?)?.toInt(),
      bankname: json['bankname'],
      bankcode: json['bankcode'] as String?,
      txmoney: json['txmoney'] as String?,
      amount: json['amount'] as String?,
      invicode: json['invicode'] as String?,
      oldmoney: json['oldmoney'] as String?,
      isold: (json['isold'] as num?)?.toInt(),
      iszfb: (json['iszfb'] as num?)?.toInt(),
      isyhk: (json['isyhk'] as num?)?.toInt(),
      pwdmima: json['pwdmima'] as bool?,
      isduodeli: (json['isduodeli'] as num?)?.toInt(),
      isgroup: (json['isgroup'] as num?)?.toInt(),
      istxusdt: (json['istxusdt'] as num?)?.toInt(),
      isusdt: (json['isusdt'] as num?)?.toInt(),
      usdtlian: json['usdtlian'],
      usdtadr: json['usdtadr'] as String?,
      isalipay: (json['isalipay'] as num?)?.toInt(),
      email: json['email'] as String?,
      oldcontent: json['oldcontent'] as String?,
      equitycontent: json['equitycontent'] as String?,
      zhuancontent: json['zhuancontent'] as String?,
      daywithdrawals: json['Daywithdrawals'] as String?,
      tixiantime: json['tixiantime'] as String?,
      withdrawalmin: json['withdrawalmin'] as String?,
      tixianzhanghu: json['tixianzhanghu'] as String?,
      bankcontent: json['bankcontent'] as String?,
      mixzhuan: json['mixzhuan'] as String?,
      ispay: (json['ispay'] as num?)?.toInt(),
      cardlist: (json['cardlist'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      usdtKefuUrl: json['usdt_kefu_url'] as String?,
    );

Map<String, dynamic> _$$PayInfoResultModelImplToJson(
        _$PayInfoResultModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'mobile': instance.mobile,
      'isreal': instance.isreal,
      'realname': instance.realname,
      'isbank': instance.isbank,
      'bankname': instance.bankname,
      'bankcode': instance.bankcode,
      'txmoney': instance.txmoney,
      'amount': instance.amount,
      'invicode': instance.invicode,
      'oldmoney': instance.oldmoney,
      'isold': instance.isold,
      'iszfb': instance.iszfb,
      'isyhk': instance.isyhk,
      'pwdmima': instance.pwdmima,
      'isduodeli': instance.isduodeli,
      'isgroup': instance.isgroup,
      'istxusdt': instance.istxusdt,
      'isusdt': instance.isusdt,
      'usdtlian': instance.usdtlian,
      'usdtadr': instance.usdtadr,
      'isalipay': instance.isalipay,
      'email': instance.email,
      'oldcontent': instance.oldcontent,
      'equitycontent': instance.equitycontent,
      'zhuancontent': instance.zhuancontent,
      'Daywithdrawals': instance.daywithdrawals,
      'tixiantime': instance.tixiantime,
      'withdrawalmin': instance.withdrawalmin,
      'tixianzhanghu': instance.tixianzhanghu,
      'bankcontent': instance.bankcontent,
      'mixzhuan': instance.mixzhuan,
      'ispay': instance.ispay,
      'cardlist': instance.cardlist,
      'usdt_kefu_url': instance.usdtKefuUrl,
    };
