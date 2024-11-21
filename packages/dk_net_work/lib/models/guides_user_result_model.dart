// To parse this JSON data, do
//
//     final guidesUserResultModel = guidesUserResultModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'guides_user_result_model.freezed.dart';
part 'guides_user_result_model.g.dart';

GuidesUserResultModel guidesUserResultModelFromJson(String str) =>
    GuidesUserResultModel.fromJson(json.decode(str));

String guidesUserResultModelToJson(GuidesUserResultModel data) =>
    json.encode(data.toJson());

@freezed
class GuidesUserResultModel with _$GuidesUserResultModel {
  const factory GuidesUserResultModel({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "msg") String? msg,
    @JsonKey(name: "data") Data? data,
  }) = _GuidesUserResultModel;

  factory GuidesUserResultModel.fromJson(Map<String, dynamic> json) =>
      _$GuidesUserResultModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "list") List<GuideItemList>? list,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class GuideItemList with _$GuideItemList {
  const factory GuideItemList({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "arr") List<GuideItem>? arr,
  }) = _GuideItemList;

  factory GuideItemList.fromJson(Map<String, dynamic> json) =>
      _$GuideItemListFromJson(json);
}

@freezed
class GuideItem with _$GuideItem {
  const factory GuideItem({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "adverid") int? adverid,
    @JsonKey(name: "thumb_url") String? thumbUrl,
    @JsonKey(name: "url") String? url,
    @JsonKey(name: "sort") int? sort,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "description") dynamic description,
    @JsonKey(name: "code") dynamic code,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _GuideItem;

  factory GuideItem.fromJson(Map<String, dynamic> json) =>
      _$GuideItemFromJson(json);
}
