import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_user_info.freezed.dart';
part 'new_user_info.g.dart';

NewUserInfoData newUserInfoFromJson(String str) =>
    NewUserInfoData.fromJson(json.decode(str));

String newUserInfoDataToJson(NewUserInfoData data) =>
    json.encode(data.toJson());

@unfreezed
class NewUserInfoData with _$NewUserInfoData {
  factory NewUserInfoData({
    String? mobile,
    int? coupon,
    int? voucher,
    String? level,
    String? touzimoney,
    String? leijimoney,
    int? message,
    String? txmoney,
    String? usdtcn,
    String? teams,
    String? agentname,
    int? integral,
    int? isequity,
    int? openzhuan,
    @JsonKey(name: "withdraw_switch") int? withdrawSwitch,
    @JsonKey(name: "team_level_entry_switch") int? teamLevelEntrySwitch,
    int? isgroup,
    @JsonKey(name: "view_miyao_switch") int? viewMiyaoSwitch,
    int? pwdmima,
    @JsonKey(name: "market_switch") int? marketSwitch,
    int? isdaikuan,
    int? shishiming,
    int? ispaypwd,
    String? zijinmingxi,
    String? realname,
    int? isreal,
    List<String?>? infolist,
    @JsonKey(name: "app_new_down_url") String? appNewDownUrl,
    @JsonKey(name: "app_new_version") String? appNewVersion,
    String? waplogo,
    int? lockmoney,
    String? clockcontent,
    String? cnyusd,
  }) = _NewUserInfoData;

  factory NewUserInfoData.fromJson(Map<String, dynamic> json) =>
      _$NewUserInfoDataFromJson(json);
}
