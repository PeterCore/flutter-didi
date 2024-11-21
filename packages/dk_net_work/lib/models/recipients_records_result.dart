// To parse this JSON data, do
//
//     final recipientsRecordsResult = recipientsRecordsResultFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipients_records_result.freezed.dart';
part 'recipients_records_result.g.dart';

RecipientsRecordsResult recipientsRecordsResultFromJson(String str) =>
    RecipientsRecordsResult.fromJson(json.decode(str));

String recipientsRecordsResultToJson(RecipientsRecordsResult data) =>
    json.encode(data.toJson());

@freezed
class RecipientsRecordsResult with _$RecipientsRecordsResult {
  const factory RecipientsRecordsResult({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "list") List<RecipientsListElement>? list,
    @JsonKey(name: "pagesize") String? pagesize,
  }) = _RecipientsRecordsResult;

  factory RecipientsRecordsResult.fromJson(Map<String, dynamic> json) =>
      _$RecipientsRecordsResultFromJson(json);
}

@freezed
class RecipientsListElement with _$RecipientsListElement {
  const factory RecipientsListElement({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "account") String? account,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "created_at") String? createdAt,
  }) = _RecipientsListElement;

  factory RecipientsListElement.fromJson(Map<String, dynamic> json) =>
      _$RecipientsListElementFromJson(json);
}
