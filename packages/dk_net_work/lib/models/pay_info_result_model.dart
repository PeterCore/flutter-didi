// To parse this JSON data, do
//
//     final payInfoResultModel = payInfoResultModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pay_info_result_model.freezed.dart';
part 'pay_info_result_model.g.dart';

PayInfoResultModel payInfoResultModelFromJson(String str) =>
    PayInfoResultModel.fromJson(json.decode(str));

String payInfoResultModelToJson(PayInfoResultModel data) =>
    json.encode(data.toJson());

@freezed
class PayInfoResultModel with _$PayInfoResultModel {
  const factory PayInfoResultModel({
    int? status,
    String? msg,
    String? mobile,
    int? isreal,
    String? realname,
    int? isbank,
    dynamic bankname,
    String? bankcode,
    String? txmoney,
    String? amount,
    String? invicode,
    String? oldmoney,
    int? isold,
    int? iszfb,
    int? isyhk,
    bool? pwdmima, //是否使用密钥功能
    int? isduodeli,
    int? isgroup,
    int? istxusdt,
    int? isusdt,
    dynamic usdtlian,
    String? usdtadr,
    int? isalipay,
    String? email,
    String? oldcontent,
    String? equitycontent,
    String? zhuancontent,
    @JsonKey(name: "Daywithdrawals") String? daywithdrawals,
    String? tixiantime,
    String? withdrawalmin,
    String? tixianzhanghu,
    String? bankcontent,
    String? mixzhuan,
    int? ispay,
    List<String>? cardlist,
    @JsonKey(name: "usdt_kefu_url") String? usdtKefuUrl,
  }) = _PayInfoResultModel;

  factory PayInfoResultModel.fromJson(Map<String, dynamic> json) =>
      _$PayInfoResultModelFromJson(json);
}
