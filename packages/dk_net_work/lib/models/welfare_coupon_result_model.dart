// To parse this JSON data, do
//
//     final welfareCouponResultModel = welfareCouponResultModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'welfare_coupon_result_model.freezed.dart';
part 'welfare_coupon_result_model.g.dart';

WelfareCouponResultModel welfareCouponResultModelFromJson(String str) =>
    WelfareCouponResultModel.fromJson(json.decode(str));

String welfareCouponResultModelToJson(WelfareCouponResultModel data) =>
    json.encode(data.toJson());

@freezed
class WelfareCouponResultModel with _$WelfareCouponResultModel {
  const factory WelfareCouponResultModel({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "list") WelfareList? list,
  }) = _WelfareCouponResultModel;

  factory WelfareCouponResultModel.fromJson(Map<String, dynamic> json) =>
      _$WelfareCouponResultModelFromJson(json);
}

@freezed
class WelfareList with _$WelfareList {
  const factory WelfareList({
    @JsonKey(name: "current_page") int? currentPage,
    @JsonKey(name: "data") List<WelfareItem>? data,
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
  }) = _WelfareList;

  factory WelfareList.fromJson(Map<String, dynamic> json) =>
      _$WelfareListFromJson(json);
}

@freezed
class WelfareItem with _$WelfareItem {
  const factory WelfareItem({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "uid") int? uid,
    @JsonKey(name: "uname") String? uname,
    @JsonKey(name: "channel") int? channel,
    @JsonKey(name: "couponsid") int? couponsid,
    @JsonKey(name: "usebuyid") int? usebuyid,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "type") int? type,
    @JsonKey(name: "money") int? money,
    @JsonKey(name: "time") DateTime? time,
    @JsonKey(name: "exptime") DateTime? exptime,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "channelName") dynamic channelName,
    @JsonKey(name: "statusName") dynamic statusName,
    @JsonKey(name: "content") dynamic content,
    @JsonKey(name: "date") DateTime? date,
  }) = _WelfareItem;

  factory WelfareItem.fromJson(Map<String, dynamic> json) =>
      _$WelfareItemFromJson(json);
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
