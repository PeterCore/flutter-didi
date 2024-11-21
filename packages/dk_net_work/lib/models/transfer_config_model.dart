// To parse this JSON data, do
//
//     final transferConfigModel = transferConfigModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer_config_model.freezed.dart';
part 'transfer_config_model.g.dart';

TransferConfigModel transferConfigModelFromJson(String str) =>
    TransferConfigModel.fromJson(json.decode(str));

String transferConfigModelToJson(TransferConfigModel data) =>
    json.encode(data.toJson());

@freezed
class TransferConfigModel with _$TransferConfigModel {
  const factory TransferConfigModel({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "msg") String? msg,
    @JsonKey(name: "data") Data? data,
  }) = _TransferConfigModel;

  factory TransferConfigModel.fromJson(Map<String, dynamic> json) =>
      _$TransferConfigModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "txmoney") String? txmoney,
    @JsonKey(name: "amount") String? amount,
    @JsonKey(name: "invicode") String? invicode,
    @JsonKey(name: "in_method") List<InMethod>? inMethod,
    @JsonKey(name: "out_method") List<OutMethod>? outMethod,
    @JsonKey(name: "zhuantixianyue") int? zhuantixianyue,
    @JsonKey(name: "zhuantouzi") int? zhuantouzi,
    @JsonKey(name: "tixianzhanghu") int? tixianzhanghu,
    String? tip,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class InMethod with _$InMethod {
  const factory InMethod({
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "id") int? id,
  }) = _InMethod;

  factory InMethod.fromJson(Map<String, dynamic> json) =>
      _$InMethodFromJson(json);
}

@freezed
class OutMethod with _$OutMethod {
  const factory OutMethod({
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "amount") String? amount,
    @JsonKey(name: "id") int? id,
  }) = _OutMethod;

  factory OutMethod.fromJson(Map<String, dynamic> json) =>
      _$OutMethodFromJson(json);
}
