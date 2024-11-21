// To parse this JSON data, do
//
//     final lotteryRecordList = lotteryRecordListFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'lottery_record_list.freezed.dart';
part 'lottery_record_list.g.dart';

LotteryRecordList lotteryRecordListFromJson(String str) =>
    LotteryRecordList.fromJson(json.decode(str));

String lotteryRecordListToJson(LotteryRecordList data) =>
    json.encode(data.toJson());

@freezed
class LotteryRecordList with _$LotteryRecordList {
  const factory LotteryRecordList({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "list") LotteryRecord? list,
  }) = _LotteryRecordList;

  factory LotteryRecordList.fromJson(Map<String, dynamic> json) =>
      _$LotteryRecordListFromJson(json);
}

@freezed
class LotteryRecord with _$LotteryRecord {
  const factory LotteryRecord({
    @JsonKey(name: "current_page") int? currentPage,
    @JsonKey(name: "data") List<LotteryRecordItem>? data,
    @JsonKey(name: "first_page_url") String? firstPageUrl,
    @JsonKey(name: "from") int? from,
    @JsonKey(name: "last_page") int? lastPage,
    @JsonKey(name: "last_page_url") String? lastPageUrl,
    @JsonKey(name: "links") List<Link>? links,
    @JsonKey(name: "next_page_url") String? nextPageUrl,
    @JsonKey(name: "path") String? path,
    @JsonKey(name: "per_page") int? perPage,
    @JsonKey(name: "prev_page_url") String? prevPageUrl,
    @JsonKey(name: "to") int? to,
    @JsonKey(name: "total") int? total,
  }) = _LotteryRecord;

  factory LotteryRecord.fromJson(Map<String, dynamic> json) =>
      _$LotteryRecordFromJson(json);
}

@freezed
class LotteryRecordItem with _$LotteryRecordItem {
  const factory LotteryRecordItem({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "type") int? type,
    @JsonKey(name: "type_name") String? typeName,
    @JsonKey(name: "prize_name") String? prizeName,
    @JsonKey(name: "money") dynamic money,
    @JsonKey(name: "expdate") String? expdate,
    @JsonKey(name: "image") String? image,
  }) = _LotteryRecordItem;

  factory LotteryRecordItem.fromJson(Map<String, dynamic> json) =>
      _$LotteryRecordItemFromJson(json);
}

@freezed
class Link with _$Link {
  const factory Link({
    @JsonKey(name: "url") String? url,
    @JsonKey(name: "label") String? label,
    @JsonKey(name: "active") bool? active,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
