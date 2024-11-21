// To parse this JSON data, do
//
//     final loanContractContentModel = loanContractContentModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_contract_content_model.freezed.dart';
part 'loan_contract_content_model.g.dart';

LoanContractContentModel loanContractContentModelFromJson(String str) =>
    LoanContractContentModel.fromJson(json.decode(str));

String loanContractContentModelToJson(LoanContractContentModel data) =>
    json.encode(data.toJson());

@freezed
class LoanContractContentModel with _$LoanContractContentModel {
  const factory LoanContractContentModel({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "msg") String? msg,
    @JsonKey(name: "data") LoanContractContentData? data,
  }) = _LoanContractContentModel;

  factory LoanContractContentModel.fromJson(Map<String, dynamic> json) =>
      _$LoanContractContentModelFromJson(json);
}

@freezed
class LoanContractContentData with _$LoanContractContentData {
  const factory LoanContractContentData({
    @JsonKey(name: "content") String? content,
    @JsonKey(name: "CompanyLong") String? companyLong,
    @JsonKey(name: "xm") String? xm,
    @JsonKey(name: "sfz") String? sfz,
    @JsonKey(name: "number") String? number,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "bianhao") String? bianhao,
    @JsonKey(name: "sign_img") dynamic signImg,
    @JsonKey(name: "hetong") String? hetong,
  }) = _LoanContractContentData;

  factory LoanContractContentData.fromJson(Map<String, dynamic> json) =>
      _$LoanContractContentDataFromJson(json);
}
