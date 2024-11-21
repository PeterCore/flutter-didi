// To parse this JSON data, do
//
//     final transactionDetailModel = transactionDetailModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_detail_model.freezed.dart';
part 'transaction_detail_model.g.dart';

TransactionDetailModel transactionDetailModelFromJson(String str) =>
    TransactionDetailModel.fromJson(json.decode(str));

String transactionDetailModelToJson(TransactionDetailModel data) =>
    json.encode(data.toJson());

@freezed
class TransactionDetailModel with _$TransactionDetailModel {
  const factory TransactionDetailModel({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "Ymoneys") String? ymoneys,
    @JsonKey(name: "list") TransactionDetailList? list,
    @JsonKey(name: "pagesize") int? pagesize,
  }) = _TransactionDetailModel;

  factory TransactionDetailModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionDetailModelFromJson(json);
}

@freezed
class TransactionDetailList with _$TransactionDetailList {
  const factory TransactionDetailList({
    @JsonKey(name: "current_page") int? currentPage,
    @JsonKey(name: "data") List<TransactionDetailItem>? data,
    @JsonKey(name: "first_page_url") String? firstPageUrl,
    @JsonKey(name: "from") int? from,
    @JsonKey(name: "last_page") int? lastPage,
    @JsonKey(name: "last_page_url") String? lastPageUrl,
    @JsonKey(name: "next_page_url") String? nextPageUrl,
    @JsonKey(name: "path") String? path,
    @JsonKey(name: "per_page") int? perPage,
    @JsonKey(name: "prev_page_url") String? prevPageUrl,
    @JsonKey(name: "to") int? to,
    @JsonKey(name: "total") int? total,
  }) = _ListClass;

  factory TransactionDetailList.fromJson(Map<String, dynamic> json) =>
      _$TransactionDetailListFromJson(json);
}

@freezed
class TransactionDetailItem with _$TransactionDetailItem {
  const factory TransactionDetailItem({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "moneylog_userid") int? moneylogUserid,
    @JsonKey(name: "moneylog_user") String? moneylogUser,
    @JsonKey(name: "moneylog_money") int? moneylogMoney,
    @JsonKey(name: "danwei") String? danwei,
    @JsonKey(name: "moneylog_ip") String? moneylogIp,
    @JsonKey(name: "moneylog_status") String? moneylogStatus,
    @JsonKey(name: "moneylog_type") String? moneylogType,
    @JsonKey(name: "moneylog_notice") String? moneylogNotice,
    @JsonKey(name: "moneylog_ext") dynamic moneylogExt,
    @JsonKey(name: "moneylog_houamount") int? moneylogHouamount,
    @JsonKey(name: "moneylog_yuanamount") int? moneylogYuanamount,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "date") String? date,
  }) = _TransactionDetailItem;

  factory TransactionDetailItem.fromJson(Map<String, dynamic> json) =>
      _$TransactionDetailItemFromJson(json);
}
