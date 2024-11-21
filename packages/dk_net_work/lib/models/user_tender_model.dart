// To parse this JSON data, do
//
//     final userTenderModel = userTenderModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_tender_model.freezed.dart';
part 'user_tender_model.g.dart';

UserTenderModel userTenderModelFromJson(String str) => UserTenderModel.fromJson(json.decode(str));

String userTenderModelToJson(UserTenderModel data) => json.encode(data.toJson());

@freezed
class UserTenderModel with _$UserTenderModel {
    const factory UserTenderModel({
        @JsonKey(name: "status")
        int? status,
        @JsonKey(name: "list")
        ListClass? list,
        @JsonKey(name: "pagesize")
        String? pagesize,
        @JsonKey(name: "ys")
        String? ys,
        @JsonKey(name: "ds")
        String? ds,
        @JsonKey(name: "isshow")
        int? isshow,
        @JsonKey(name: "integral")
        int? integral,
        @JsonKey(name: "esignature")
        int? esignature,
        @JsonKey(name: "insurance_switch")
        int? insuranceSwitch,
        @JsonKey(name: "download_switch")
        int? downloadSwitch,
    }) = _UserTenderModel;

    factory UserTenderModel.fromJson(Map<String, dynamic> json) => _$UserTenderModelFromJson(json);
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
        @JsonKey(name: "contract_no")
        String? contractNo,
        @JsonKey(name: "userid")
        int? userid,
        @JsonKey(name: "username")
        String? username,
        @JsonKey(name: "productid")
        int? productid,
        @JsonKey(name: "amount")
        int? amount,
        @JsonKey(name: "benefit")
        int? benefit,
        @JsonKey(name: "ip")
        String? ip,
        @JsonKey(name: "useritem_time")
        DateTime? useritemTime,
        @JsonKey(name: "useritem_time1")
        dynamic useritemTime1,
        @JsonKey(name: "useritem_time2")
        DateTime? useritemTime2,
        @JsonKey(name: "useritem_count")
        int? useritemCount,
        @JsonKey(name: "status")
        int? status,
        @JsonKey(name: "sendday_count")
        int? senddayCount,
        @JsonKey(name: "level")
        int? level,
        @JsonKey(name: "created_at")
        DateTime? createdAt,
        @JsonKey(name: "updated_at")
        DateTime? updatedAt,
        @JsonKey(name: "bugcoupon")
        String? bugcoupon,
        @JsonKey(name: "issort")
        int? issort,
        @JsonKey(name: "daymoney")
        int? daymoney,
        @JsonKey(name: "iszengsong_only")
        int? iszengsongOnly,
        @JsonKey(name: "iszengsong")
        int? iszengsong,
        @JsonKey(name: "insurance_amount")
        String? insuranceAmount,
        @JsonKey(name: "is_insurance")
        int? isInsurance,
        @JsonKey(name: "sign_img")
        String? signImg,
        @JsonKey(name: "is_aggregated_amount")
        int? isAggregatedAmount,
        @JsonKey(name: "title")
        String? title,
        @JsonKey(name: "jyrsy")
        String? jyrsy,
        @JsonKey(name: "shijian")
        String? shijian,
        @JsonKey(name: "qxdw")
        String? qxdw,
        @JsonKey(name: "equity")
        int? equity,
        @JsonKey(name: "rate")
        int? rate,
        @JsonKey(name: "levelname")
        String? levelname,
        @JsonKey(name: "moneyCount")
        String? moneyCount,
        @JsonKey(name: "elseMoney")
        String? elseMoney,
        @JsonKey(name: "shouyis")
        String? shouyis,
        @JsonKey(name: "url")
        int? url,
        @JsonKey(name: "remain_download")
        int? remainDownload,
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
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
