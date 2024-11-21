// To parse this JSON data, do
//
//     final contentDetailResult = contentDetailResultFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_detail_result.freezed.dart';
part 'content_detail_result.g.dart';

ContentDetailResult contentDetailResultFromJson(String str) =>
    ContentDetailResult.fromJson(json.decode(str));

String contentDetailResultToJson(ContentDetailResult data) =>
    json.encode(data.toJson());

@freezed
class ContentDetailResult with _$ContentDetailResult {
  const factory ContentDetailResult({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "msg") String? msg,
    @JsonKey(name: "data") ContentDetailData? data,
  }) = _ContentDetailResult;

  factory ContentDetailResult.fromJson(Map<String, dynamic> json) =>
      _$ContentDetailResultFromJson(json);
}

@freezed
class ContentDetailData with _$ContentDetailData {
  const factory ContentDetailData({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "category_id") int? categoryId,
    @JsonKey(name: "category_name") String? categoryName,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "author") String? author,
    @JsonKey(name: "keyinfo") String? keyinfo,
    @JsonKey(name: "descr") String? descr,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "photos") String? photos,
    @JsonKey(name: "content") String? content,
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "click_count") int? clickCount,
    @JsonKey(name: "pop_count") int? popCount,
    @JsonKey(name: "top_status") int? topStatus,
    @JsonKey(name: "top_time") DateTime? topTime,
    @JsonKey(name: "extend") dynamic extend,
    @JsonKey(name: "sort") int? sort,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "top_sort") int? topSort,
  }) = _ContentDetailData;

  factory ContentDetailData.fromJson(Map<String, dynamic> json) =>
      _$ContentDetailDataFromJson(json);
}
