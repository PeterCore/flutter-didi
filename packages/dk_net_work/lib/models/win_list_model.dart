// To parse this JSON data, do
//
//     final winListModel = winListModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'win_list_model.freezed.dart';
part 'win_list_model.g.dart';

WinListModel winListModelFromJson(String str) =>
    WinListModel.fromJson(json.decode(str));

String winListModelToJson(WinListModel data) => json.encode(data.toJson());

@freezed
class WinListModel with _$WinListModel {
  const factory WinListModel({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "list1") List<List1>? list1,
    @JsonKey(name: "list2") String? list2,
    @JsonKey(name: "list3") String? list3,
    @JsonKey(name: "list4") String? list4,
    @JsonKey(name: "remain_count") int? remainCount,
  }) = _WinListModel;

  factory WinListModel.fromJson(Map<String, dynamic> json) =>
      _$WinListModelFromJson(json);
}

@freezed
class List1 with _$List1 {
  const factory List1({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "moneylog_userid") int? moneylogUserid,
    @JsonKey(name: "moneylog_user") String? moneylogUser,
    @JsonKey(name: "moneylog_money") double? moneylogMoney,
    @JsonKey(name: "danwei") String? danwei,
    @JsonKey(name: "moneylog_ip") String? moneylogIp,
    @JsonKey(name: "moneylog_status") String? moneylogStatus,
    @JsonKey(name: "moneylog_type") String? moneylogType,
    @JsonKey(name: "moneylog_notice") String? moneylogNotice,
    @JsonKey(name: "moneylog_ext") dynamic moneylogExt,
    @JsonKey(name: "moneylog_houamount") double? moneylogHouamount,
    @JsonKey(name: "moneylog_yuanamount") double? moneylogYuanamount,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _List1;

  factory List1.fromJson(Map<String, dynamic> json) => _$List1FromJson(json);
}
