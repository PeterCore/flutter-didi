// To parse this JSON data, do
//
//     final pointProductModel = pointProductModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'point_product_model.freezed.dart';
part 'point_product_model.g.dart';

PointProductModel pointProductModelFromJson(String str) =>
    PointProductModel.fromJson(json.decode(str));

String pointProductModelToJson(PointProductModel data) =>
    json.encode(data.toJson());

@freezed
class PointProductModel with _$PointProductModel {
  const factory PointProductModel({
    int? status,
    ListClass? list,
    int? isPoint,
    String? pagesize,
  }) = _PointProductModel;

  factory PointProductModel.fromJson(Map<String, dynamic> json) =>
      _$PointProductModelFromJson(json);
}

@freezed
class ListClass with _$ListClass {
  const factory ListClass({
    @JsonKey(name: "current_page") int? currentPage,
    List<ProductItem>? data,
    @JsonKey(name: "first_page_url") String? firstPageUrl,
    int? from,
    @JsonKey(name: "last_page") int? lastPage,
    @JsonKey(name: "last_page_url") String? lastPageUrl,
    List<Link>? links,
    @JsonKey(name: "next_page_url") String? nextPageUrl,
    String? path,
    @JsonKey(name: "per_page") int? perPage,
    @JsonKey(name: "prev_page_url") String? prevPageUrl,
    int? to,
    int? total,
  }) = _ListClass;

  factory ListClass.fromJson(Map<String, dynamic> json) =>
      _$ListClassFromJson(json);
}

@freezed
class ProductItem with _$ProductItem {
  const factory ProductItem({
    int? id,
    @JsonKey(name: "category_id") int? categoryId,
    @JsonKey(name: "category_name") String? categoryName,
    String? title,
    String? author,
    String? keyinfo,
    String? descr,
    String? image,
    String? photos,
    String? content,
    int? status,
    @JsonKey(name: "click_count") int? clickCount,
    int? integral,
    int? topStatus,
    dynamic topTime,
    dynamic extend,
    int? sort,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updateed_at") String? updatedAt,
    String? date,
  }) = _ProductItem;

  factory ProductItem.fromJson(Map<String, dynamic> json) =>
      _$ProductItemFromJson(json);
}

@freezed
class Link with _$Link {
  const factory Link({
    String? url,
    String? label,
    bool? active,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
