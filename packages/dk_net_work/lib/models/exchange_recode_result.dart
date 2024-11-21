// To parse this JSON data, do
//
//     final exchangeRecodeResult = exchangeRecodeResultFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_recode_result.freezed.dart';
part 'exchange_recode_result.g.dart';

ExchangeRecodeResult exchangeRecodeResultFromJson(String str) =>
    ExchangeRecodeResult.fromJson(json.decode(str));

String exchangeRecodeResultToJson(ExchangeRecodeResult data) =>
    json.encode(data.toJson());

@freezed
class ExchangeRecodeResult with _$ExchangeRecodeResult {
  const factory ExchangeRecodeResult({
    int? status,
    ExchangeRecode? list,
    String? pagesize,
    int? integral,
    String? rules,
  }) = _ExchangeRecodeResult;

  factory ExchangeRecodeResult.fromJson(Map<String, dynamic> json) =>
      _$ExchangeRecodeResultFromJson(json);
}

@freezed
class ExchangeRecode with _$ExchangeRecode {
  const factory ExchangeRecode({
    int? currentPage,
    List<ExchangeRecodeItem>? data,
    String? firstPageUrl,
    int? from,
    int? lastPage,
    @JsonKey(name: "last_page_url") String? lastPageUrl,
    List<Link>? links,
    @JsonKey(name: "next_page_url") String? nextPageUrl,
    String? path,
    int? perPage,
    @JsonKey(name: "prev_page_url") String? prevPageUrl,
    int? to,
    int? total,
  }) = _ExchangeRecode;

  factory ExchangeRecode.fromJson(Map<String, dynamic> json) =>
      _$ExchangeRecodeFromJson(json);
}

@freezed
class ExchangeRecodeItem with _$ExchangeRecodeItem {
  const factory ExchangeRecodeItem({
    int? id,
    String? ordernumber,
    int? userid,
    String? username,
    int? productid,
    String? productname,
    int? integral,
    String? memo,
    int? status,
    int? number,
    String? ip,
    String? name,
    String? phone,
    String? location,
    String? shouhuodizhi,
    int? sendsms,
    int? type,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    String? expressOrder,
    String? expressName,
    String? image,
    String? date,
  }) = _ExchangeRecodeItem;

  factory ExchangeRecodeItem.fromJson(Map<String, dynamic> json) =>
      _$ExchangeRecodeItemFromJson(json);
}

@freezed
class Link with _$Link {
  const factory Link({
    String? url,
    String? label,
    bool? active,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
