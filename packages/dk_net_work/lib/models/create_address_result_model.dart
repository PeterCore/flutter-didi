// To parse this JSON data, do
//
//     final createAddressResultModel = createAddressResultModelFromJson(jsonString);
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_address_result_model.freezed.dart';
part 'create_address_result_model.g.dart';

CreateAddressResultModel createAddressResultModelFromJson(String str) =>
    CreateAddressResultModel.fromJson(json.decode(str));

String createAddressResultModelToJson(CreateAddressResultModel data) =>
    json.encode(data.toJson());

@freezed
class CreateAddressResultModel with _$CreateAddressResultModel {
  const factory CreateAddressResultModel({
    int? status,
    String? msg,
  }) = _CreateAddressResultModel;

  factory CreateAddressResultModel.fromJson(Map<String, dynamic> json) =>
      _$CreateAddressResultModelFromJson(json);
}
