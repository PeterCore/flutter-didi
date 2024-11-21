// To parse this JSON data, do
//
//     final loanContractDetailInfoModel = loanContractDetailInfoModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_contract_detail_info_model.freezed.dart';
part 'loan_contract_detail_info_model.g.dart';

LoanContractDetailInfoModel loanContractDetailInfoModelFromJson(String str) =>
    LoanContractDetailInfoModel.fromJson(json.decode(str));

String loanContractDetailInfoModelToJson(LoanContractDetailInfoModel data) =>
    json.encode(data.toJson());

@freezed
class LoanContractDetailInfoModel with _$LoanContractDetailInfoModel {
  const factory LoanContractDetailInfoModel({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "msg") String? msg,
    @JsonKey(name: "data") LoanContractDetailData? data,
  }) = _LoanContractDetailInfoModel;

  factory LoanContractDetailInfoModel.fromJson(Map<String, dynamic> json) =>
      _$LoanContractDetailInfoModelFromJson(json);
}

@freezed
class LoanContractDetailData with _$LoanContractDetailData {
  const factory LoanContractDetailData({
    @JsonKey(name: "number_amount") double? numberAmount,
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "userid") int? userid,
    @JsonKey(name: "bianhao") String? bianhao,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "number") String? number,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "mark") String? mark,
    @JsonKey(name: "rate") int? rate,
    @JsonKey(name: "sign_img") String? signImg,
    @JsonKey(name: "CompanyLong") String? companyLong,
    @JsonKey(name: "xm") String? xm,
    @JsonKey(name: "sfz") String? sfz,
    @JsonKey(name: "hetong") String? hetong,
    @JsonKey(name: "content") String? content,
  }) = _LoanContractDetailData;

  factory LoanContractDetailData.fromJson(Map<String, dynamic> json) =>
      _$LoanContractDetailDataFromJson(json);
}
