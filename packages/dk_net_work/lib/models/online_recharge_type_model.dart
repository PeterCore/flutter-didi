// To parse this JSON data, do
//
//     final onlineRechargeTypeModel = onlineRechargeTypeModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'online_recharge_type_model.freezed.dart';
part 'online_recharge_type_model.g.dart';

OnlineRechargeTypeModel onlineRechargeTypeModelFromJson(String str) =>
    OnlineRechargeTypeModel.fromJson(json.decode(str));

String onlineRechargeTypeModelToJson(OnlineRechargeTypeModel data) =>
    json.encode(data.toJson());

@freezed
class OnlineRechargeTypeModel with _$OnlineRechargeTypeModel {
  const factory OnlineRechargeTypeModel({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "txmoney") String? txmoney,
    @JsonKey(name: "zhamount") String? zhamount,
    @JsonKey(name: "wycznr") String? wycznr,
    @JsonKey(name: "tishi") String? tishi,
    @JsonKey(name: "CNYUSD") String? cnyusd,
    @JsonKey(name: "mincash") String? mincash,
    @JsonKey(name: "maxcash") int? maxcash,
    @JsonKey(name: "userid") int? userid,
    @JsonKey(name: "paypic") int? paypic,
    @JsonKey(name: "exchange_rate_status") int? exchangeRateStatus,
    @JsonKey(name: "recharge_must_bind_wallet") int? rechargeMustBindWallet,
    @JsonKey(name: "usdtorder") int? usdtorder,
    @JsonKey(name: "zhuantixianyue") int? zhuantixianyue,
    @JsonKey(name: "zhuantouzi") int? zhuantouzi,
    @JsonKey(name: "Payments") List<Payment>? payments,
  }) = _OnlineRechargeTypeModel;

  factory OnlineRechargeTypeModel.fromJson(Map<String, dynamic> json) =>
      _$OnlineRechargeTypeModelFromJson(json);
}

@freezed
class Payment with _$Payment {
  const factory Payment({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "pay_code") String? payCode,
    @JsonKey(name: "pay_name") String? payName,
    @JsonKey(name: "pay_bank") String? payBank,
    @JsonKey(name: "pay_pic") String? payPic,
    @JsonKey(name: "pay_desc") String? payDesc,
    @JsonKey(name: "maxmoney") int? maxmoney,
    @JsonKey(name: "minmoney") int? minmoney,
    @JsonKey(name: "enabled") int? enabled,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "orderby") int? orderby,
    @JsonKey(name: "links") String? links,
    @JsonKey(name: "cardtname") String? cardtname,
    @JsonKey(name: "cardnumber") String? cardnumber,
    @JsonKey(name: "cardbank") String? cardbank,
    @JsonKey(name: "zhuanpic") int? zhuanpic,
    @JsonKey(name: "wyczkg") int? wyczkg,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);
}
