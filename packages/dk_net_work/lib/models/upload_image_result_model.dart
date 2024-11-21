// To parse this JSON data, do
//
//     final uploadImageResultModel = uploadImageResultModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_image_result_model.freezed.dart';
part 'upload_image_result_model.g.dart';

UploadImageResultModel uploadImageResultModelFromJson(String str) =>
    UploadImageResultModel.fromJson(json.decode(str));

String uploadImageResultModelToJson(UploadImageResultModel data) =>
    json.encode(data.toJson());

@freezed
class UploadImageResultModel with _$UploadImageResultModel {
  const factory UploadImageResultModel({
    int? status,
    String? msg,
    String? src,
  }) = _UploadImageResultModel;

  factory UploadImageResultModel.fromJson(Map<String, dynamic> json) =>
      _$UploadImageResultModelFromJson(json);
}
