// To parse this JSON data, do
//
//     final transferWithdrawsRecordList = transferWithdrawsRecordListFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer_withdraws_record_list.freezed.dart';
part 'transfer_withdraws_record_list.g.dart';

TransferWithdrawsRecordList transferWithdrawsRecordListFromJson(String str) =>
    TransferWithdrawsRecordList.fromJson(json.decode(str));

String transferWithdrawsRecordListToJson(TransferWithdrawsRecordList data) =>
    json.encode(data.toJson());

@freezed
class TransferWithdrawsRecordList with _$TransferWithdrawsRecordList {
  const factory TransferWithdrawsRecordList({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "list") TransferWithdrawsRecords? list,
    @JsonKey(name: "pagesize") String? pagesize,
    @JsonKey(name: "chenggong") String? chenggong,
    @JsonKey(name: "dendai") String? dendai,
    @JsonKey(name: "shibai") String? shibai,
  }) = _TransferWithdrawsRecordList;

  factory TransferWithdrawsRecordList.fromJson(Map<String, dynamic> json) =>
      _$TransferWithdrawsRecordListFromJson(json);
}

@freezed
class TransferWithdrawsRecords with _$TransferWithdrawsRecords {
  const factory TransferWithdrawsRecords({
    @JsonKey(name: "current_page") int? currentPage,
    @JsonKey(name: "data") List<TransferWithdrawsRecordItem>? data,
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
  }) = _TransferWithdrawsRecords;

  factory TransferWithdrawsRecords.fromJson(Map<String, dynamic> json) =>
      _$TransferWithdrawsRecordsFromJson(json);
}

@freezed
class TransferWithdrawsRecordItem with _$TransferWithdrawsRecordItem {
  const factory TransferWithdrawsRecordItem({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "userid") int? userid,
    @JsonKey(name: "amount") int? amount,
    @JsonKey(name: "memo") String? memo,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "istype") int? istype,
    @JsonKey(name: "ip") String? ip,
    @JsonKey(name: "uuid") int? uuid,
    @JsonKey(name: "sendsms") int? sendsms,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "isdao") int? isdao,
    @JsonKey(name: "CNY") double? cny,
    @JsonKey(name: "zhuanuserid") int? zhuanuserid,
    @JsonKey(name: "backtype") int? backtype,
    @JsonKey(name: "reason") String? reason,
    @JsonKey(name: "qd") String? qd,
    @JsonKey(name: "date") String? date,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "withdraw_amount") String? withdrawAmount,
    @JsonKey(name: "status_text") String? statusText,
  }) = _TransferWithdrawsRecordItem;

  factory TransferWithdrawsRecordItem.fromJson(Map<String, dynamic> json) =>
      _$TransferWithdrawsRecordItemFromJson(json);
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
