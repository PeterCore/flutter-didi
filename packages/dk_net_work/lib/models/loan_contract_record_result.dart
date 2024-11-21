// To parse this JSON data, do
//
//     final loanContractRecordResult = loanContractRecordResultFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_contract_record_result.freezed.dart';
part 'loan_contract_record_result.g.dart';

LoanContractRecordResult loanContractRecordResultFromJson(String str) =>
    LoanContractRecordResult.fromJson(json.decode(str));

String loanContractRecordResultToJson(LoanContractRecordResult data) =>
    json.encode(data.toJson());

@freezed
class LoanContractRecordResult with _$LoanContractRecordResult {
  const factory LoanContractRecordResult({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "list") LoanContractRecordList? list,
    @JsonKey(name: "pagesize") String? pagesize,
    @JsonKey(name: "download_switch") int? downloadSwitch,
  }) = _LoanContractRecordResult;

  factory LoanContractRecordResult.fromJson(Map<String, dynamic> json) =>
      _$LoanContractRecordResultFromJson(json);
}

@freezed
class LoanContractRecordList with _$LoanContractRecordList {
  const factory LoanContractRecordList({
    @JsonKey(name: "current_page") int? currentPage,
    @JsonKey(name: "data") List<LoanContractRecordItem>? data,
    @JsonKey(name: "first_page_url") String? firstPageUrl,
    @JsonKey(name: "from") int? from,
    @JsonKey(name: "last_page") int? lastPage,
    @JsonKey(name: "last_page_url") String? lastPageUrl,
    @JsonKey(name: "links") List<Link>? links,
    @JsonKey(name: "next_page_url") dynamic nextPageUrl,
    @JsonKey(name: "path") String? path,
    @JsonKey(name: "per_page") int? perPage,
    @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
    @JsonKey(name: "to") int? to,
    @JsonKey(name: "total") int? total,
  }) = _LoanContractRecordList;

  factory LoanContractRecordList.fromJson(Map<String, dynamic> json) =>
      _$LoanContractRecordListFromJson(json);
}

@freezed
class LoanContractRecordItem with _$LoanContractRecordItem {
  const factory LoanContractRecordItem({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "userid") int? userid,
    @JsonKey(name: "bianhao") String? bianhao,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "number") int? number,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "mark") String? mark,
    @JsonKey(name: "rate") int? rate,
    @JsonKey(name: "sign_img") String? signImg,
    @JsonKey(name: "remain_download") int? remainDownload,
  }) = _LoanContractRecordItem;

  factory LoanContractRecordItem.fromJson(Map<String, dynamic> json) =>
      _$LoanContractRecordItemFromJson(json);
}

@freezed
class Link with _$Link {
  const factory Link({
    @JsonKey(name: "url") String? url,
    @JsonKey(name: "label") String? label,
    @JsonKey(name: "active") bool? active,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
