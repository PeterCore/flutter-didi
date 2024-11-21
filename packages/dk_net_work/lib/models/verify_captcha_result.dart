// To parse this JSON data, do
//
//     final verifyCaptchaResult = verifyCaptchaResultFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_captcha_result.freezed.dart';
part 'verify_captcha_result.g.dart';

VerifyCaptchaResult verifyCaptchaResultFromJson(String str) =>
    VerifyCaptchaResult.fromJson(json.decode(str));

String verifyCaptchaResultToJson(VerifyCaptchaResult data) =>
    json.encode(data.toJson());

@freezed
class VerifyCaptchaResult with _$VerifyCaptchaResult {
  const factory VerifyCaptchaResult({
    int? status,
    String? msg,
  }) = _VerifyCaptchaResult;

  factory VerifyCaptchaResult.fromJson(Map<String, dynamic> json) =>
      _$VerifyCaptchaResultFromJson(json);
}
