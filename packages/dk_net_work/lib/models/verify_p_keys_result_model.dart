// To parse this JSON data, do
//
//     final verifyPKeysResultModel = verifyPKeysResultModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_p_keys_result_model.freezed.dart';
part 'verify_p_keys_result_model.g.dart';

VerifyPKeysResultModel verifyPKeysResultModelFromJson(String str) =>
    VerifyPKeysResultModel.fromJson(json.decode(str));

String verifyPKeysResultModelToJson(VerifyPKeysResultModel data) =>
    json.encode(data.toJson());

@freezed
class VerifyPKeysResultModel with _$VerifyPKeysResultModel {
  const factory VerifyPKeysResultModel({
    required int status,
    required String msg,
  }) = _VerifyPKeysResultModel;

  factory VerifyPKeysResultModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyPKeysResultModelFromJson(json);
}
