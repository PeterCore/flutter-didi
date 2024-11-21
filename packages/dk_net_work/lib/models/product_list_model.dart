// To parse this JSON data, do
//
//     final productListModel = productListModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'product_list_model.freezed.dart';
part 'product_list_model.g.dart';

ProductListModel productListModelFromJson(String str) => ProductListModel.fromJson(json.decode(str));

String productListModelToJson(ProductListModel data) => json.encode(data.toJson());

@freezed
class ProductListModel with _$ProductListModel {
    const factory ProductListModel({
        @JsonKey(name: "status") int? status,
        @JsonKey(name: "msg") String? msg,
        @JsonKey(name: "list") ListClass? list,
        @JsonKey(name: "pagesize") int? pagesize,
    }) = _ProductListModel;

    factory ProductListModel.fromJson(Map<String, dynamic> json) => _$ProductListModelFromJson(json);
}

@freezed
class ListClass with _$ListClass {
    const factory ListClass({
        @JsonKey(name: "current_page") int? currentPage,
        @JsonKey(name: "data") List<Datum>? data,
        @JsonKey(name: "first_page_url") String? firstPageUrl,
        @JsonKey(name: "from") int? from,
        @JsonKey(name: "last_page") int? lastPage,
        @JsonKey(name: "last_page_url") String? lastPageUrl,
        @JsonKey(name: "links") List<Link>? links,
        @JsonKey(name: "next_page_url") dynamic nextPageUrl,
        @JsonKey(name: "path") String? path,
        @JsonKey(name: "per_page") int? perPage,
        @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
        @JsonKey(name: "to") int? to,
        @JsonKey(name: "total") int? total,
    }) = _ListClass;

    factory ListClass.fromJson(Map<String, dynamic> json) => _$ListClassFromJson(json);
}

@freezed
class Datum with _$Datum {
    const factory Datum({
        @JsonKey(name: "id") int? id,
        @JsonKey(name: "category_id") int? categoryId,
        @JsonKey(name: "category_name") String? categoryName,
        @JsonKey(name: "title") String? title,
        @JsonKey(name: "bljg") String? bljg,
        @JsonKey(name: "xmgm") int? xmgm,
        @JsonKey(name: "xmjd") int? xmjd,
        @JsonKey(name: "qtje") int? qtje,
        @JsonKey(name: "zgje") String? zgje,
        @JsonKey(name: "isgao") int? isgao,
        @JsonKey(name: "ktje") dynamic ktje,
        @JsonKey(name: "jyrsy") String? jyrsy,
        @JsonKey(name: "tqsyyj") String? tqsyyj,
        @JsonKey(name: "shijian") String? shijian,
        @JsonKey(name: "pic") String? pic,
        @JsonKey(name: "content") String? content,
        @JsonKey(name: "qxdw") String? qxdw,
        @JsonKey(name: "hkfs") int? hkfs,
        @JsonKey(name: "cishu") dynamic cishu,
        @JsonKey(name: "tzzt") int? tzzt,
        @JsonKey(name: "isft") int? isft,
        @JsonKey(name: "ftjl") int? ftjl,
        @JsonKey(name: "level") int? level,
        @JsonKey(name: "issy") int? issy,
        @JsonKey(name: "issj") int? issj,
        @JsonKey(name: "isdt") int? isdt,
        @JsonKey(name: "iswj") int? iswj,
        @JsonKey(name: "sort") int? sort,
        @JsonKey(name: "tzyq") int? tzyq,
        @JsonKey(name: "created_at") String? createdAt,
        @JsonKey(name: "updated_at") String? updatedAt,
        @JsonKey(name: "cycle") int? cycle,
        @JsonKey(name: "istzbug") int? istzbug,
        @JsonKey(name: "isnew") int? isnew,
        @JsonKey(name: "doubled") int? doubled,
        @JsonKey(name: "countequity") int? countequity,
        @JsonKey(name: "bugunmber") int? bugunmber,
        @JsonKey(name: "ismake") int? ismake,
        @JsonKey(name: "endingtime") String? endingtime,
        @JsonKey(name: "isaouttm") int? isaouttm,
        @JsonKey(name: "interval_time") int? intervalTime,
        @JsonKey(name: "rise_time") String? riseTime,
        @JsonKey(name: "frequency") int? frequency,
        @JsonKey(name: "rise_settings") String? riseSettings,
        @JsonKey(name: "rise") double? rise,
        @JsonKey(name: "coupon") String? coupon,
        @JsonKey(name: "givecoupon") String? givecoupon,
        @JsonKey(name: "oldmoney") String? oldmoney,
        @JsonKey(name: "daikuan") String? daikuan,
        @JsonKey(name: "equity") String? equity,
        @JsonKey(name: "integralgive") String? integralgive,
        @JsonKey(name: "nextintegralgive") int? nextintegralgive,
        @JsonKey(name: "ticket") int? ticket,
        @JsonKey(name: "beans") int? beans,
        @JsonKey(name: "xxtcbl") String? xxtcbl,
        @JsonKey(name: "xxtcbll") String? xxtcbll,
        @JsonKey(name: "xxtcblll") String? xxtcblll,
        @JsonKey(name: "xxtcbllll") String? xxtcbllll,
        @JsonKey(name: "jiechuhetong") int? jiechuhetong,
        @JsonKey(name: "discount") int? discount,
        @JsonKey(name: "discountlist") String? discountlist,
        @JsonKey(name: "capital") int? capital,
        @JsonKey(name: "specialbenefits") String? specialbenefits,
        @JsonKey(name: "bjzk") int? bjzk,
        @JsonKey(name: "endtime") String? endtime,
        @JsonKey(name: "zengsongid") int? zengsongid,
        @JsonKey(name: "nextpid") int? nextpid,
        @JsonKey(name: "jfpid") int? jfpid,
        @JsonKey(name: "joining") int? joining,
        @JsonKey(name: "organizer") int? organizer,
        @JsonKey(name: "isgroup") int? isgroup,
        @JsonKey(name: "is_group_lerver") int? isGroupLerver,
        @JsonKey(name: "extmoney") int? extmoney,
        @JsonKey(name: "extday") int? extday,
        @JsonKey(name: "groupcbl") String? groupcbl,
        @JsonKey(name: "isnorate") int? isnorate,
        @JsonKey(name: "presale") int? presale,
        @JsonKey(name: "firstbuy") int? firstbuy,
        @JsonKey(name: "insurance") int? insurance,
        @JsonKey(name: "ft_after_success") int? ftAfterSuccess,
        @JsonKey(name: "present_level") int? presentLevel,
        @JsonKey(name: "return_dividends") int? returnDividends,
        @JsonKey(name: "return_capital") int? returnCapital,
        @JsonKey(name: "is_aggregated_amount") int? isAggregatedAmount,
        @JsonKey(name: "firstbuy_text") String? firstbuyText,
        @JsonKey(name: "invite_only") int? inviteOnly,
        @JsonKey(name: "dividend_method") String? dividendMethod,
        @JsonKey(name: "ismake2") int? ismake2,
        @JsonKey(name: "supportuse") List<String>? supportuse,
        @JsonKey(name: "investgift") List<String>? investgift,
        @JsonKey(name: "allreward") List<String>? allreward,
        @JsonKey(name: "demand_tag_list") List<dynamic>? demandTagList,
        @JsonKey(name: "attention_tag_list") List<String>? attentionTagList,
        @JsonKey(name: "group_demand_tag_list") List<dynamic>? groupDemandTagList,
        @JsonKey(name: "present_level_name") String? presentLevelName,
        @JsonKey(name: "present_level_text") String? presentLevelText,
        @JsonKey(name: "special_tag_list") List<dynamic>? specialTagList,
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
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
