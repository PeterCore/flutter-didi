// To parse this JSON data, do
//
//     final withdrawsConfigModel = withdrawsConfigModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'withdraws_config_model.freezed.dart';
part 'withdraws_config_model.g.dart';

WithdrawsConfigModel withdrawsConfigModelFromJson(String str) =>
    WithdrawsConfigModel.fromJson(json.decode(str));

String withdrawsConfigModelToJson(WithdrawsConfigModel data) =>
    json.encode(data.toJson());

@freezed
class WithdrawsConfigModel with _$WithdrawsConfigModel {
  const factory WithdrawsConfigModel({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "msg") String? msg,
    @JsonKey(name: "tixinmoney") String? tixinmoney,
    @JsonKey(name: "realname") String? realname,
    @JsonKey(name: "bankname") dynamic bankname,
    @JsonKey(name: "bankcode") String? bankcode,
    @JsonKey(name: "isalipay") int? isalipay,
    @JsonKey(name: "iszfb") int? iszfb,
    @JsonKey(name: "isduodeli") int? isduodeli,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "withdrawalmin") String? withdrawalmin,
    @JsonKey(name: "Daywithdrawals") String? daywithdrawals,
    @JsonKey(name: "tixiantime") String? tixiantime,
    @JsonKey(name: "tixianzhanghu") String? tixianzhanghu,
    @JsonKey(name: "tixianimoney") String? tixianimoney,
    @JsonKey(name: "wenxintishi") String? wenxintishi,
    @JsonKey(name: "istxusdt") int? istxusdt,
    @JsonKey(name: "isbank") int? isbank,
    @JsonKey(name: "isuserbank") int? isuserbank,
    @JsonKey(name: "TXCNYUSD") String? txcnyusd,
    @JsonKey(name: "CNYUSD") String? cnyusd,
    @JsonKey(name: "isusdt") int? isusdt,
    @JsonKey(name: "usdtlian") String? usdtlian,
    @JsonKey(name: "usdtadr") String? usdtadr,
    @JsonKey(name: "exchange_rate_status") int? exchangeRateStatus,
    @JsonKey(name: "is_withdraw_hide_rmb") int? isWithdrawHideRmb,
    @JsonKey(name: "method_list") List<MethodList>? methodList,
  }) = _WithdrawsConfigModel;

  factory WithdrawsConfigModel.fromJson(Map<String, dynamic> json) =>
      _$WithdrawsConfigModelFromJson(json);
}

@freezed
class MethodList with _$MethodList {
  const factory MethodList({
    @JsonKey(name: "text") String? text,
    @JsonKey(name: "cardid") int? cardId,
  }) = _MethodList;

  factory MethodList.fromJson(Map<String, dynamic> json) =>
      _$MethodListFromJson(json);
}
