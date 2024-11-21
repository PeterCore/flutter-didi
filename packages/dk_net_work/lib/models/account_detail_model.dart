// To parse this JSON data, do
//
//     final accountDetailModel = accountDetailModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_detail_model.freezed.dart';
part 'account_detail_model.g.dart';

AccountDetailModel accountDetailModelFromJson(String str) =>
    AccountDetailModel.fromJson(json.decode(str));

String accountDetailModelToJson(AccountDetailModel data) =>
    json.encode(data.toJson());

@freezed
class AccountDetailModel with _$AccountDetailModel {
  const factory AccountDetailModel({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "data") AccountDetailData? data,
  }) = _AccountDetailModel;

  factory AccountDetailModel.fromJson(Map<String, dynamic> json) =>
      _$AccountDetailModelFromJson(json);
}

@freezed
class AccountDetailData with _$AccountDetailData {
  const factory AccountDetailData({
    @JsonKey(name: "amount") String? amount,
    @JsonKey(name: "txmoney") String? txmoney,
    @JsonKey(name: "Dmoneys") String? dmoneys,
    @JsonKey(name: "Ymoneys") String? ymoneys,
    @JsonKey(name: "buyjsamounts") String? buyjsamounts,
    @JsonKey(name: "withdrawals") String? withdrawals,
    @JsonKey(name: "mark") String? mark,
  }) = _AccountDetailData;

  factory AccountDetailData.fromJson(Map<String, dynamic> json) =>
      _$AccountDetailDataFromJson(json);
}
