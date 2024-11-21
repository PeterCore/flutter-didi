// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewUserInfoDataImpl _$$NewUserInfoDataImplFromJson(
        Map<String, dynamic> json) =>
    _$NewUserInfoDataImpl(
      mobile: json['mobile'] as String?,
      coupon: (json['coupon'] as num?)?.toInt(),
      voucher: (json['voucher'] as num?)?.toInt(),
      level: json['level'] as String?,
      touzimoney: json['touzimoney'] as String?,
      leijimoney: json['leijimoney'] as String?,
      message: (json['message'] as num?)?.toInt(),
      txmoney: json['txmoney'] as String?,
      usdtcn: json['usdtcn'] as String?,
      teams: json['teams'] as String?,
      agentname: json['agentname'] as String?,
      integral: (json['integral'] as num?)?.toInt(),
      isequity: (json['isequity'] as num?)?.toInt(),
      openzhuan: (json['openzhuan'] as num?)?.toInt(),
      withdrawSwitch: (json['withdraw_switch'] as num?)?.toInt(),
      teamLevelEntrySwitch: (json['team_level_entry_switch'] as num?)?.toInt(),
      isgroup: (json['isgroup'] as num?)?.toInt(),
      viewMiyaoSwitch: (json['view_miyao_switch'] as num?)?.toInt(),
      pwdmima: (json['pwdmima'] as num?)?.toInt(),
      marketSwitch: (json['market_switch'] as num?)?.toInt(),
      isdaikuan: (json['isdaikuan'] as num?)?.toInt(),
      shishiming: (json['shishiming'] as num?)?.toInt(),
      ispaypwd: (json['ispaypwd'] as num?)?.toInt(),
      zijinmingxi: json['zijinmingxi'] as String?,
      realname: json['realname'] as String?,
      isreal: (json['isreal'] as num?)?.toInt(),
      infolist: (json['infolist'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      appNewDownUrl: json['app_new_down_url'] as String?,
      appNewVersion: json['app_new_version'] as String?,
      waplogo: json['waplogo'] as String?,
      lockmoney: (json['lockmoney'] as num?)?.toInt(),
      clockcontent: json['clockcontent'] as String?,
      cnyusd: json['cnyusd'] as String?,
    );

Map<String, dynamic> _$$NewUserInfoDataImplToJson(
        _$NewUserInfoDataImpl instance) =>
    <String, dynamic>{
      'mobile': instance.mobile,
      'coupon': instance.coupon,
      'voucher': instance.voucher,
      'level': instance.level,
      'touzimoney': instance.touzimoney,
      'leijimoney': instance.leijimoney,
      'message': instance.message,
      'txmoney': instance.txmoney,
      'usdtcn': instance.usdtcn,
      'teams': instance.teams,
      'agentname': instance.agentname,
      'integral': instance.integral,
      'isequity': instance.isequity,
      'openzhuan': instance.openzhuan,
      'withdraw_switch': instance.withdrawSwitch,
      'team_level_entry_switch': instance.teamLevelEntrySwitch,
      'isgroup': instance.isgroup,
      'view_miyao_switch': instance.viewMiyaoSwitch,
      'pwdmima': instance.pwdmima,
      'market_switch': instance.marketSwitch,
      'isdaikuan': instance.isdaikuan,
      'shishiming': instance.shishiming,
      'ispaypwd': instance.ispaypwd,
      'zijinmingxi': instance.zijinmingxi,
      'realname': instance.realname,
      'isreal': instance.isreal,
      'infolist': instance.infolist,
      'app_new_down_url': instance.appNewDownUrl,
      'app_new_version': instance.appNewVersion,
      'waplogo': instance.waplogo,
      'lockmoney': instance.lockmoney,
      'clockcontent': instance.clockcontent,
      'cnyusd': instance.cnyusd,
    };
