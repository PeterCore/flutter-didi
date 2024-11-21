// To parse this JSON data, do
//
//     final rechargeRecodeModel = rechargeRecodeModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'recharge_recode_model.freezed.dart';
part 'recharge_recode_model.g.dart';

RechargeRecodeModel rechargeRecodeModelFromJson(String str) =>
    RechargeRecodeModel.fromJson(json.decode(str));

String rechargeRecodeModelToJson(RechargeRecodeModel data) =>
    json.encode(data.toJson());

@freezed
class RechargeRecodeModel with _$RechargeRecodeModel {
  const factory RechargeRecodeModel({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "list") RechargeRecodeList? list,
    @JsonKey(name: "pagesize") String? pagesize,
    @JsonKey(name: "chenggong") String? chenggong,
    @JsonKey(name: "dendai") int? dendai,
    @JsonKey(name: "shibai") String? shibai,
  }) = _RechargeRecodeModel;

  factory RechargeRecodeModel.fromJson(Map<String, dynamic> json) =>
      _$RechargeRecodeModelFromJson(json);
}

@freezed
class RechargeRecodeList with _$RechargeRecodeList {
  const factory RechargeRecodeList({
    @JsonKey(name: "current_page") int? currentPage,
    @JsonKey(name: "data") List<RechargeRecodeItem>? data,
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
  }) = _RechargeRecodeList;

  factory RechargeRecodeList.fromJson(Map<String, dynamic> json) =>
      _$RechargeRecodeListFromJson(json);
}

@freezed
class RechargeRecodeItem with _$RechargeRecodeItem {
  const factory RechargeRecodeItem({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "ordernumber") String? ordernumber,
    @JsonKey(name: "userid") int? userid,
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "amount") int? amount,
    @JsonKey(name: "usdt") int? usdt,
    @JsonKey(name: "memo") String? memo,
    @JsonKey(name: "paymentid") int? paymentid,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "paytime") dynamic paytime,
    @JsonKey(name: "ip") String? ip,
    @JsonKey(name: "bank") dynamic bank,
    @JsonKey(name: "accNo") dynamic accNo,
    @JsonKey(name: "sendsms") int? sendsms,
    @JsonKey(name: "isone") int? isone,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "uppic") String? uppic,
    @JsonKey(name: "reason") dynamic reason,
    @JsonKey(name: "elmoney") int? elmoney,
    @JsonKey(name: "CNY") int? cny,
    @JsonKey(name: "date") String? date,
    @JsonKey(name: "recharge_amount") String? rechargeAmount,
    @JsonKey(name: "status_text") String? statusText,
  }) = _RechargeRecodeItem;

  factory RechargeRecodeItem.fromJson(Map<String, dynamic> json) =>
      _$RechargeRecodeItemFromJson(json);
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
