// To parse this JSON data, do
//
//     final productProviewContractModel = productProviewContractModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'product_proview_contract_model.freezed.dart';
part 'product_proview_contract_model.g.dart';

ProductProviewContractModel productProviewContractModelFromJson(String str) =>
    ProductProviewContractModel.fromJson(json.decode(str));

String productProviewContractModelToJson(ProductProviewContractModel data) =>
    json.encode(data.toJson());

@freezed
class ProductProviewContractModel with _$ProductProviewContractModel {
  const factory ProductProviewContractModel({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "msg") String? msg,
    @JsonKey(name: "date") Date? date,
    @JsonKey(name: "Mb") Mb? mb,
    @JsonKey(name: "Pro") Pro? pro,
    @JsonKey(name: "ProBuy") ProBuy? proBuy,
    @JsonKey(name: "content") String? content,
  }) = _ProductProviewContractModel;

  factory ProductProviewContractModel.fromJson(Map<String, dynamic> json) =>
      _$ProductProviewContractModelFromJson(json);
}

@freezed
class Date with _$Date {
  const factory Date({
    @JsonKey(name: "data_shortCompany") String? dataShortCompany,
    @JsonKey(name: "Company") String? company,
    @JsonKey(name: "xmdata") String? xmdata,
    @JsonKey(name: "zhouqi") String? zhouqi,
    @JsonKey(name: "endshouyi") String? endshouyi,
    @JsonKey(name: "elseMoney") String? elseMoney,
    @JsonKey(name: "bugcoupon") String? bugcoupon,
    @JsonKey(name: "endbenjin") int? endbenjin,
    @JsonKey(name: "endMoney") String? endMoney,
    @JsonKey(name: "dblogo") String? dblogo,
    @JsonKey(name: "offiseal") String? offiseal,
    @JsonKey(name: "picsign") String? picsign,
    @JsonKey(name: "issign") int? issign,
    @JsonKey(name: "iscertificate") int? iscertificate,
  }) = _Date;

  factory Date.fromJson(Map<String, dynamic> json) => _$DateFromJson(json);
}

@freezed
class Mb with _$Mb {
  const factory Mb({
    @JsonKey(name: "username") String? username,
    @JsonKey(name: "realname") String? realname,
    @JsonKey(name: "card") String? card,
    @JsonKey(name: "bankrealname") String? bankrealname,
    @JsonKey(name: "bankcode") String? bankcode,
  }) = _Mb;

  factory Mb.fromJson(Map<String, dynamic> json) => _$MbFromJson(json);
}

@freezed
class Pro with _$Pro {
  const factory Pro({
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
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
    @JsonKey(name: "cycle") int? cycle,
    @JsonKey(name: "istzbug") int? istzbug,
    @JsonKey(name: "isnew") int? isnew,
    @JsonKey(name: "doubled") int? doubled,
    @JsonKey(name: "countequity") int? countequity,
    @JsonKey(name: "bugunmber") int? bugunmber,
    @JsonKey(name: "ismake") int? ismake,
    @JsonKey(name: "endingtime") DateTime? endingtime,
    @JsonKey(name: "isaouttm") int? isaouttm,
    @JsonKey(name: "interval_time") int? intervalTime,
    @JsonKey(name: "rise_time") DateTime? riseTime,
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
    @JsonKey(name: "endtime") DateTime? endtime,
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
    @JsonKey(name: "hd_sel") bool? hdSel,
    @JsonKey(name: "hd_info") String? hdInfo,
  }) = _Pro;

  factory Pro.fromJson(Map<String, dynamic> json) => _$ProFromJson(json);
}

@freezed
class ProBuy with _$ProBuy {
  const factory ProBuy({
    @JsonKey(name: "amount") int? amount,
    @JsonKey(name: "bugcoupon") int? bugcoupon,
    @JsonKey(name: "sign_img") String? signImg,
    @JsonKey(name: "is_insurance") int? isInsurance,
  }) = _ProBuy;

  factory ProBuy.fromJson(Map<String, dynamic> json) => _$ProBuyFromJson(json);
}
