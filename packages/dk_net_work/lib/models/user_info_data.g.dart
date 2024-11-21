// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoDataImpl _$$UserInfoDataImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoDataImpl(
      status: (json['status'] as num?)?.toInt(),
      mobile: json['mobile'] as String?,
      realname: json['realname'] as String?,
      isreal: (json['isreal'] as num?)?.toInt(),
      isbank: (json['isbank'] as num?)?.toInt(),
      bankname: json['bankname'] as String?,
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
      usdtlian: json['usdtlian'] as String?,
      usdtadr: json['usdtadr'] as String?,
      isalipay: (json['isalipay'] as num?)?.toInt(),
      email: json['email'] as String?,
      weixin: json['weixin'] as String?,
      qq: json['qq'] as String?,
      oldcontent: json['oldcontent'] as String?,
      equitycontent: json['equitycontent'] as String?,
      zhuancontent: json['zhuancontent'] as String?,
      daywithdrawals: json['daywithdrawals'] as String?,
      tixiantime: json['tixiantime'] as String?,
      withdrawalmin: json['withdrawalmin'] as String?,
      tixianzhanghu: json['tixianzhanghu'] as String?,
      bankcontent: json['bankcontent'] as String?,
      mixzhuan: json['mixzhuan'] as String?,
      ispay: (json['ispay'] as num?)?.toInt(),
      usdtTypeList: (json['usdt_type_list'] as List<dynamic>?)
          ?.map((e) => UsdtTypeList.fromJson(e as Map<String, dynamic>))
          .toList(),
      cardlist: (json['cardlist'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      usdtKefuUrl: json['usdt_kefu_url'] as String?,
    );

Map<String, dynamic> _$$UserInfoDataImplToJson(_$UserInfoDataImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'mobile': instance.mobile,
      'realname': instance.realname,
      'isreal': instance.isreal,
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
      'weixin': instance.weixin,
      'qq': instance.qq,
      'oldcontent': instance.oldcontent,
      'equitycontent': instance.equitycontent,
      'zhuancontent': instance.zhuancontent,
      'daywithdrawals': instance.daywithdrawals,
      'tixiantime': instance.tixiantime,
      'withdrawalmin': instance.withdrawalmin,
      'tixianzhanghu': instance.tixianzhanghu,
      'bankcontent': instance.bankcontent,
      'mixzhuan': instance.mixzhuan,
      'ispay': instance.ispay,
      'usdt_type_list': instance.usdtTypeList,
      'cardlist': instance.cardlist,
      'usdt_kefu_url': instance.usdtKefuUrl,
    };

_$UsdtTypeListImpl _$$UsdtTypeListImplFromJson(Map<String, dynamic> json) =>
    _$UsdtTypeListImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$UsdtTypeListImplToJson(_$UsdtTypeListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };
