// To parse this JSON data, do
//
//     final pointProductDetailModel = pointProductDetailModelFromJson(jsonString);
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'point_product_detail_model.freezed.dart';
part 'point_product_detail_model.g.dart';

PointProductDetailModel pointProductDetailModelFromJson(String str) =>
    PointProductDetailModel.fromJson(json.decode(str));

String pointProductDetailModelToJson(PointProductDetailModel data) =>
    json.encode(data.toJson());

@freezed
class PointProductDetailModel with _$PointProductDetailModel {
  const factory PointProductDetailModel({
    int? status,
    String? title,
    Product? product,
    String? ruleArea,
  }) = _PointProductDetailModel;

  factory PointProductDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PointProductDetailModelFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    int? id,
    int? categoryId,
    String? categoryName,
    String? title,
    String? author,
    String? keyinfo,
    String? descr,
    String? image,
    List<String>? photos,
    String? content,
    int? status,
    int? clickCount,
    int? integral,
    int? topStatus,
    dynamic topTime,
    dynamic extend,
    int? sort,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? ispoto,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
