// To parse this JSON data, do
//
//     final yueBaoTransactionsModel = yueBaoTransactionsModelFromJson(jsonString);
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'yu_e_bao_transactions_model.freezed.dart';
part 'yu_e_bao_transactions_model.g.dart';

YueBaoTransactionsModel yueBaoTransactionsModelFromJson(String str) =>
    YueBaoTransactionsModel.fromJson(json.decode(str));

String yueBaoTransactionsModelToJson(YueBaoTransactionsModel data) =>
    json.encode(data.toJson());

@freezed
class YueBaoTransactionsModel with _$YueBaoTransactionsModel {
  const factory YueBaoTransactionsModel({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "isequity") int? isequity,
    @JsonKey(name: "list") YuEBaoTransactionsList? list,
    @JsonKey(name: "pagesize") int? pagesize,
  }) = _YueBaoTransactionsModel;

  factory YueBaoTransactionsModel.fromJson(Map<String, dynamic> json) =>
      _$YueBaoTransactionsModelFromJson(json);
}

@freezed
class YuEBaoTransactionsList with _$YuEBaoTransactionsList {
  const factory YuEBaoTransactionsList({
    @JsonKey(name: "current_page") int? currentPage,
    @JsonKey(name: "data") List<YuEBaoTransactionsItem>? data,
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
  }) = _YuEBaoTransactionsList;

  factory YuEBaoTransactionsList.fromJson(Map<String, dynamic> json) =>
      _$YuEBaoTransactionsListFromJson(json);
}

@freezed
class YuEBaoTransactionsItem with _$YuEBaoTransactionsItem {
  const factory YuEBaoTransactionsItem({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "moneylog_userid") int? moneylogUserid,
    @JsonKey(name: "moneylog_money") int? moneylogMoney,
    @JsonKey(name: "danwei") String? danwei,
    @JsonKey(name: "moneylog_ip") String? moneylogIp,
    @JsonKey(name: "moneylog_status") String? moneylogStatus,
    @JsonKey(name: "moneylog_type") String? moneylogType,
    @JsonKey(name: "moneylog_notice") String? moneylogNotice,
    @JsonKey(name: "moneylog_ext") String? moneylogExt,
    @JsonKey(name: "moneylog_houamount") int? moneylogHouamount,
    @JsonKey(name: "moneylog_yuanamount") int? moneylogYuanamount,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "isext") int? isext,
    @JsonKey(name: "date") String? date,
  }) = _YuEBaoTransactionsItem;

  factory YuEBaoTransactionsItem.fromJson(Map<String, dynamic> json) =>
      _$YuEBaoTransactionsItemFromJson(json);
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
