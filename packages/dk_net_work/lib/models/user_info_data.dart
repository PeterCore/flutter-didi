// To parse this JSON data, do
//
//     final userInfoData = userInfoDataFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_data.freezed.dart';
part 'user_info_data.g.dart';

UserInfoData userInfoDataFromJson(String str) =>
    UserInfoData.fromJson(json.decode(str));

String userInfoDataToJson(UserInfoData data) => json.encode(data.toJson());

@unfreezed
class UserInfoData with _$UserInfoData {
  factory UserInfoData({
    int? status,
    String? mobile,
    String? realname,
    int? isreal,
    int? isbank,
    String? bankname,
    String? bankcode,
    String? txmoney,
    String? amount,
    String? invicode,
    String? oldmoney,
    int? isold,
    int? iszfb,
    int? isyhk,
    bool? pwdmima,
    int? isduodeli,
    int? isgroup,
    int? istxusdt,
    int? isusdt,
    String? usdtlian,
    String? usdtadr,
    int? isalipay,
    String? email,
    String? weixin,
    String? qq,
    String? oldcontent,
    String? equitycontent,
    String? zhuancontent,
    String? daywithdrawals,
    String? tixiantime,
    String? withdrawalmin,
    String? tixianzhanghu,
    String? bankcontent,
    String? mixzhuan,
    int? ispay,
    @JsonKey(name: "usdt_type_list") List<UsdtTypeList>? usdtTypeList,
    List<String>? cardlist,
    @JsonKey(name: "usdt_kefu_url") String? usdtKefuUrl,
  }) = _UserInfoData;

  factory UserInfoData.fromJson(Map<String, dynamic> json) =>
      _$UserInfoDataFromJson(json);
}

@unfreezed
class UsdtTypeList with _$UsdtTypeList {
  factory UsdtTypeList({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "title") String? title,
  }) = _UsdtTypeList;

  factory UsdtTypeList.fromJson(Map<String, dynamic> json) =>
      _$UsdtTypeListFromJson(json);
}
