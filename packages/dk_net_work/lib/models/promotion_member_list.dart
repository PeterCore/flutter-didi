// To parse this JSON data, do
//
//     final promotionMemberList = promotionMemberListFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotion_member_list.freezed.dart';
part 'promotion_member_list.g.dart';

PromotionMemberList promotionMemberListFromJson(String str) =>
    PromotionMemberList.fromJson(json.decode(str));

String promotionMemberListToJson(PromotionMemberList data) =>
    json.encode(data.toJson());

@freezed
class PromotionMemberList with _$PromotionMemberList {
  const factory PromotionMemberList({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "mtype") int? mtype,
    @JsonKey(name: "list") MemberList? list,
    @JsonKey(name: "pagesize") int? pagesize,
  }) = _PromotionMemberList;

  factory PromotionMemberList.fromJson(Map<String, dynamic> json) =>
      _$PromotionMemberListFromJson(json);
}

@freezed
class MemberList with _$MemberList {
  const factory MemberList({
    @JsonKey(name: "current_page") int? currentPage,
    @JsonKey(name: "data") List<MemberItem>? data,
    @JsonKey(name: "first_page_url") String? firstPageUrl,
    @JsonKey(name: "from") int? from,
    @JsonKey(name: "last_page") int? lastPage,
    @JsonKey(name: "last_page_url") String? lastPageUrl,
    @JsonKey(name: "next_page_url") dynamic nextPageUrl,
    @JsonKey(name: "path") String? path,
    @JsonKey(name: "per_page") int? perPage,
    @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
    @JsonKey(name: "to") int? to,
    @JsonKey(name: "total") int? total,
  }) = _MemberList;

  factory MemberList.fromJson(Map<String, dynamic> json) =>
      _$MemberListFromJson(json);
}

@freezed
class MemberItem with _$MemberItem {
  const factory MemberItem({
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "realname") String? realname,
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "txmoney") String? txmoney,
    @JsonKey(name: "duodeli") int? duodeli,
    @JsonKey(name: "amount") String? amount,
    @JsonKey(name: "invicode") String? invicode,
    @JsonKey(name: "date") DateTime? date,
    @JsonKey(name: "nextnunber") int? nextnunber,
    @JsonKey(name: "nextwithdrawals") String? nextwithdrawals,
    @JsonKey(name: "nextrecharges") String? nextrecharges,
    @JsonKey(name: "touzi") String? touzi,
    @JsonKey(name: "tixian") String? tixian,
    @JsonKey(name: "yuebao") String? yuebao,
  }) = _MemberItem;

  factory MemberItem.fromJson(Map<String, dynamic> json) =>
      _$MemberItemFromJson(json);
}
