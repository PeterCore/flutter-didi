// To parse this JSON data, do
//
//     final productCategoryResultModel = productCategoryResultModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'product_category_result_model.freezed.dart';
part 'product_category_result_model.g.dart';

ProductCategoryResultModel productCategoryResultModelFromJson(String str) => ProductCategoryResultModel.fromJson(json.decode(str));

String productCategoryResultModelToJson(ProductCategoryResultModel data) => json.encode(data.toJson());

@freezed
class ProductCategoryResultModel with _$ProductCategoryResultModel {
    const factory ProductCategoryResultModel({
        @JsonKey(name: "ProductsCategory")
        List<ProductsCategory>? productsCategory,
    }) = _ProductCategoryResultModel;

    factory ProductCategoryResultModel.fromJson(Map<String, dynamic> json) => _$ProductCategoryResultModelFromJson(json);
}

@freezed
class ProductsCategory with _$ProductsCategory {
    const factory ProductsCategory({
        int? id,
        int? status,
        String? msg,
        String? name,
        @JsonKey(name: "NextCategoryList")
        List<ProductsCategory>? nextCategoryList,
    }) = _ProductsCategory;

    factory ProductsCategory.fromJson(Map<String, dynamic> json) => _$ProductsCategoryFromJson(json);
}
