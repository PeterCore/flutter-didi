// To parse this JSON data, do
//
//     final viewPkResult = viewPkResultFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_pk_result.freezed.dart';
part 'view_pk_result.g.dart';

ViewPkResult viewPkResultFromJson(String str) =>
    ViewPkResult.fromJson(json.decode(str));

String viewPkResultToJson(ViewPkResult data) => json.encode(data.toJson());

@freezed
class ViewPkResult with _$ViewPkResult {
  const factory ViewPkResult({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "miyao") String? miyao,
    @JsonKey(name: "wx_ti_shi") String? wxTiShi,
  }) = _ViewPkResult;

  factory ViewPkResult.fromJson(Map<String, dynamic> json) =>
      _$ViewPkResultFromJson(json);
}
