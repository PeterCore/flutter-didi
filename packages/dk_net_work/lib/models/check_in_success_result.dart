// To parse this JSON data, do
//
//     final checkInSuccessResult = checkInSuccessResultFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_in_success_result.freezed.dart';
part 'check_in_success_result.g.dart';

CheckInSuccessResult checkInSuccessResultFromJson(String str) =>
    CheckInSuccessResult.fromJson(json.decode(str));

String checkInSuccessResultToJson(CheckInSuccessResult data) =>
    json.encode(data.toJson());

@freezed
class CheckInSuccessResult with _$CheckInSuccessResult {
  const factory CheckInSuccessResult({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "msg") String? msg,
    @JsonKey(name: "msg2") String? msg2,
  }) = _CheckInSuccessResult;

  factory CheckInSuccessResult.fromJson(Map<String, dynamic> json) =>
      _$CheckInSuccessResultFromJson(json);
}
