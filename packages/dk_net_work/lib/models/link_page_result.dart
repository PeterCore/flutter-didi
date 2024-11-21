// To parse this JSON data, do
//
//     final companyProfileResult = companyProfileResultFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'link_page_result.freezed.dart';
part 'link_page_result.g.dart';

LinkPageResult LinkPageResultFromJson(String str) =>
    LinkPageResult.fromJson(json.decode(str));

String linkPageResultToJson(LinkPageResult data) => json.encode(data.toJson());

@freezed
class LinkPageResult with _$LinkPageResult {
  const factory LinkPageResult({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "msg") String? msg,
    @JsonKey(name: "data") ProfileData? data,
  }) = _LinkPageResult;

  factory LinkPageResult.fromJson(Map<String, dynamic> json) =>
      _$LinkPageResultFromJson(json);
}

@freezed
class ProfileData with _$ProfileData {
  const factory ProfileData({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "parent") int? parent,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "sort") int? sort,
    @JsonKey(name: "thumb_url") String? thumbUrl,
    @JsonKey(name: "model") String? model,
    @JsonKey(name: "color") String? color,
    @JsonKey(name: "ctitle") String? ctitle,
    @JsonKey(name: "links") String? links,
    @JsonKey(name: "ckeywords") String? ckeywords,
    @JsonKey(name: "cdescription") String? cdescription,
    @JsonKey(name: "ccontent") String? ccontent,
    @JsonKey(name: "atindex") int? atindex,
    @JsonKey(name: "atfoot") int? atfoot,
    @JsonKey(name: "ismenus") int? ismenus,
    @JsonKey(name: "classname") dynamic classname,
    @JsonKey(name: "click_count") int? clickCount,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "islist") int? islist,
  }) = _ProfileData;

  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);
}
