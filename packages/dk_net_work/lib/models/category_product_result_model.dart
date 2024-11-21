// To parse this JSON data, do
//
//     final categoryProductResultModel = categoryProductResultModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_product_result_model.freezed.dart';
part 'category_product_result_model.g.dart';

CategoryProductResultModel categoryProductResultModelFromJson(String str) =>
    CategoryProductResultModel.fromJson(json.decode(str));

String categoryProductResultModelToJson(CategoryProductResultModel data) =>
    json.encode(data.toJson());

@freezed
class CategoryProductResultModel with _$CategoryProductResultModel {
  const factory CategoryProductResultModel({
    List<ListElement>? list,
  }) = _CategoryProductResultModel;

  factory CategoryProductResultModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryProductResultModelFromJson(json);
}

@freezed
class ListElement with _$ListElement {
  const factory ListElement({
    int? id,
    int? parent,
    String? name,
    int? sort,
    @JsonKey(name: "thumb_url") String? thumbUrl,
    String? model,
    String? color,
    String? ctitle,
    String? links,
    String? ckeywords,
    String? cdescription,
    String? ccontent,
    int? atindex,
    int? atfoot,
    int? ismenus,
    String? classname,
    @JsonKey(name: "click_count") int? clickCount,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    int? islist,
  }) = _ListElement;

  factory ListElement.fromJson(Map<String, dynamic> json) =>
      _$ListElementFromJson(json);
}
