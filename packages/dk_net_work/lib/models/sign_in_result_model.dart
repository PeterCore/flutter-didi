// To parse this JSON data, do
//
//     final signInResultModel = signInResultModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_result_model.freezed.dart';
part 'sign_in_result_model.g.dart';

SignInResultModel signInResultModelFromJson(String str) =>
    SignInResultModel.fromJson(json.decode(str));

String signInResultModelToJson(SignInResultModel data) =>
    json.encode(data.toJson());

@freezed
class SignInResultModel with _$SignInResultModel {
  const factory SignInResultModel({
    required int status,
    String? msg,
    @JsonKey(name: "save_mi_yao") int? saveMiYao,
    String? token,
  }) = _SignInResultModel;

  factory SignInResultModel.fromJson(Map<String, dynamic> json) =>
      _$SignInResultModelFromJson(json);
}
