// To parse this JSON data, do
//
//     final newListResultModel = newListResultModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_list_result_model.freezed.dart';
part 'new_list_result_model.g.dart';

NewListResultModel newListResultModelFromJson(String str) =>
    NewListResultModel.fromJson(json.decode(str));

String newListResultModelToJson(NewListResultModel data) =>
    json.encode(data.toJson());

@freezed
class NewListResultModel with _$NewListResultModel {
  const factory NewListResultModel({
    List<Articlescategory>? data,
  }) = _NewListResultModel;

  factory NewListResultModel.fromJson(Map<String, dynamic> json) =>
      _$NewListResultModelFromJson(json);
}

@freezed
class Articlescategory with _$Articlescategory {
  const factory Articlescategory({
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
    @JsonKey(name: "top_status") int? topStatus,
    @JsonKey(name: "top_time") String? topTime,
    dynamic extend,
    int? sort,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "top_sort") int? topSort,
  }) = _Articlescategory;

  factory Articlescategory.fromJson(Map<String, dynamic> json) =>
      _$ArticlescategoryFromJson(json);
}
