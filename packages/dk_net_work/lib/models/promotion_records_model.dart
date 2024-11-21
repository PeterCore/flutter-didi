// To parse this JSON data, do
//
//     final promotionRecordsModel = promotionRecordsModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotion_records_model.freezed.dart';
part 'promotion_records_model.g.dart';

PromotionRecordsModel promotionRecordsModelFromJson(String str) =>
    PromotionRecordsModel.fromJson(json.decode(str));

String promotionRecordsModelToJson(PromotionRecordsModel data) =>
    json.encode(data.toJson());

@freezed
class PromotionRecordsModel with _$PromotionRecordsModel {
  const factory PromotionRecordsModel({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "mtype") int? mtype,
    @JsonKey(name: "data") PromotionRecordData? data,
    @JsonKey(name: "list") String? list,
    @JsonKey(name: "pagesize") int? pagesize,
  }) = _PromotionRecordsModel;

  factory PromotionRecordsModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionRecordsModelFromJson(json);
}

@freezed
class PromotionRecordData with _$PromotionRecordData {
  const factory PromotionRecordData({
    @JsonKey(name: "onezrs") int? onezrs,
    @JsonKey(name: "weifanhuibenjin") int? weifanhuibenjin,
    @JsonKey(name: "daoqiguquan") int? daoqiguquan,
    @JsonKey(name: "yuebao") int? yuebao,
    @JsonKey(name: "ketixianjine") int? ketixianjine,
    @JsonKey(name: "qiandaorenshu") int? qiandaorenshu,
    @JsonKey(name: "team_total_withdraw") String? teamTotalWithdraw,
    @JsonKey(name: "onetzrs") int? onetzrs,
    @JsonKey(name: "onecz") String? onecz,
    @JsonKey(name: "twouzrs") int? twouzrs,
    @JsonKey(name: "twoucz") String? twoucz,
    @JsonKey(name: "threezrs") int? threezrs,
    @JsonKey(name: "threecz") String? threecz,
    @JsonKey(name: "hebizrs") String? hebizrs,
    @JsonKey(name: "hebicz") String? hebicz,
    @JsonKey(name: "totlusdttx") String? totlusdttx,
    @JsonKey(name: "totlusdtcz") String? totlusdtcz,
    @JsonKey(name: "totltx") String? totltx,
    @JsonKey(name: "totltzhuce") int? totltzhuce,
    @JsonKey(name: "totlcz") String? totlcz,
    @JsonKey(name: "totltzrs") int? totltzrs,
    @JsonKey(name: "totltz") String? totltz,
    @JsonKey(name: "tzone") int? tzone,
    @JsonKey(name: "tztwo") int? tztwo,
    @JsonKey(name: "tzthree") int? tzthree,
    @JsonKey(name: "tzfour") int? tzfour,
    @JsonKey(name: "tzfive") int? tzfive,
    @JsonKey(name: "vip") int? vip,
    @JsonKey(name: "totlejifen") int? totlejifen,
    @JsonKey(name: "virtual") int? virtual,
  }) = _PromotionRecordData;

  factory PromotionRecordData.fromJson(Map<String, dynamic> json) =>
      _$PromotionRecordDataFromJson(json);
}
