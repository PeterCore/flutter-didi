// To parse this JSON data, do
//
//     final grouplistModel = grouplistModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'grouplist_model.freezed.dart';
part 'grouplist_model.g.dart';

GrouplistModel grouplistModelFromJson(String str) => GrouplistModel.fromJson(json.decode(str));

String grouplistModelToJson(GrouplistModel data) => json.encode(data.toJson());

@freezed
class GrouplistModel with _$GrouplistModel {
    const factory GrouplistModel({
        @JsonKey(name: "status")
        int? status,
        @JsonKey(name: "list")
        ListClass? list,
        @JsonKey(name: "grouprules")
        String? grouprules,
    }) = _GrouplistModel;

    factory GrouplistModel.fromJson(Map<String, dynamic> json) => _$GrouplistModelFromJson(json);
}

@freezed
class ListClass with _$ListClass {
    const factory ListClass({
        @JsonKey(name: "current_page")
        int? currentPage,
        @JsonKey(name: "data")
        List<Datum>? data,
        @JsonKey(name: "first_page_url")
        String? firstPageUrl,
        @JsonKey(name: "from")
        int? from,
        @JsonKey(name: "last_page")
        int? lastPage,
        @JsonKey(name: "last_page_url")
        String? lastPageUrl,
        @JsonKey(name: "links")
        List<Link>? links,
        @JsonKey(name: "next_page_url")
        dynamic nextPageUrl,
        @JsonKey(name: "path")
        String? path,
        @JsonKey(name: "per_page")
        int? perPage,
        @JsonKey(name: "prev_page_url")
        dynamic prevPageUrl,
        @JsonKey(name: "to")
        int? to,
        @JsonKey(name: "total")
        int? total,
    }) = _ListClass;

    factory ListClass.fromJson(Map<String, dynamic> json) => _$ListClassFromJson(json);
}

@freezed
class Datum with _$Datum {
    const factory Datum({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "userid")
        int? userid,
        @JsonKey(name: "username")
        String? username,
        @JsonKey(name: "productid")
        int? productid,
        @JsonKey(name: "money")
        int? money,
        @JsonKey(name: "status")
        int? status,
        @JsonKey(name: "group_buy_code")
        String? groupBuyCode,
        @JsonKey(name: "participant_limit")
        int? participantLimit,
        @JsonKey(name: "bugnumber")
        int? bugnumber,
        @JsonKey(name: "created_at")
        DateTime? createdAt,
        @JsonKey(name: "updated_at")
        DateTime? updatedAt,
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "selfmoney")
        int? selfmoney,
        @JsonKey(name: "relaname")
        String? relaname,
        @JsonKey(name: "tele")
        String? tele,
        @JsonKey(name: "orderid")
        String? orderid,
        @JsonKey(name: "allmoney")
        int? allmoney,
        @JsonKey(name: "renshu")
        int? renshu,
        @JsonKey(name: "renshu2")
        int? renshu2,
        @JsonKey(name: "joinlist")
        List<Joinlist>? joinlist,
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class Joinlist with _$Joinlist {
    const factory Joinlist({
        @JsonKey(name: "id")
        int? id,
        @JsonKey(name: "userid")
        int? userid,
        @JsonKey(name: "username")
        String? username,
        @JsonKey(name: "group_buy_id")
        int? groupBuyId,
        @JsonKey(name: "money")
        int? money,
        @JsonKey(name: "status")
        int? status,
        @JsonKey(name: "bugnumber")
        int? bugnumber,
        @JsonKey(name: "created_at")
        DateTime? createdAt,
        @JsonKey(name: "updated_at")
        DateTime? updatedAt,
        @JsonKey(name: "relaname")
        String? relaname,
        @JsonKey(name: "tele")
        String? tele,
    }) = _Joinlist;

    factory Joinlist.fromJson(Map<String, dynamic> json) => _$JoinlistFromJson(json);
}

@freezed
class Link with _$Link {
    const factory Link({
        @JsonKey(name: "url")
        String? url,
        @JsonKey(name: "label")
        String? label,
        @JsonKey(name: "active")
        bool? active,
    }) = _Link;

    factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
