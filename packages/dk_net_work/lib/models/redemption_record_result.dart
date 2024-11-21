// To parse this JSON data, do
//
//     final redemptionRecordResult = redemptionRecordResultFromJson(jsonString);
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'redemption_record_result.freezed.dart';
part 'redemption_record_result.g.dart';

RedemptionRecordResult redemptionRecordResultFromJson(String str) =>
    RedemptionRecordResult.fromJson(json.decode(str));

String redemptionRecordResultToJson(RedemptionRecordResult data) =>
    json.encode(data.toJson());

@freezed
class RedemptionRecordResult with _$RedemptionRecordResult {
  const factory RedemptionRecordResult({
    int? status,
    ListClass? list,
    String? pagesize,
    int? integral,
    String? rules,
  }) = _RedemptionRecordResult;

  factory RedemptionRecordResult.fromJson(Map<String, dynamic> json) =>
      _$RedemptionRecordResultFromJson(json);
}

@freezed
class ListClass with _$ListClass {
  const factory ListClass({
    int? currentPage,
    List<Datum>? data,
    String? firstPageUrl,
    int? from,
    int? lastPage,
    String? lastPageUrl,
    List<Link>? links,
    dynamic nextPageUrl,
    String? path,
    int? perPage,
    dynamic prevPageUrl,
    int? to,
    int? total,
  }) = _ListClass;

  factory ListClass.fromJson(Map<String, dynamic> json) =>
      _$ListClassFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    int? id,
    dynamic ordernumber,
    int? userid,
    String? username,
    int? productid,
    String? productname,
    int? integral,
    dynamic memo,
    int? status,
    int? number,
    String? ip,
    String? name,
    String? phone,
    String? location,
    String? shouhuodizhi,
    int? sendsms,
    int? type,
    DateTime? createdAt,
    DateTime? updatedAt,
    dynamic expressOrder,
    dynamic expressName,
    String? image,
    String? date,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
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
