import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'product_info_model.freezed.dart';
part 'product_info_model.g.dart';

ProductInfoModel productInfoModelFromJson(String str) => ProductInfoModel.fromJson(json.decode(str));

String productInfoModelToJson(ProductInfoModel data) => json.encode(data.toJson());

@freezed
class ProductInfoModel with _$ProductInfoModel {
  const factory ProductInfoModel({
    @JsonKey(name: "productid") String? productid,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "productview") Productview? productview,
    @JsonKey(name: "Memberamount") String? memberamount,
    @JsonKey(name: "couponlist") List<dynamic>? couponlist,
    @JsonKey(name: "makelist") List<dynamic>? makelist,
    @JsonKey(name: "levelname") String? levelname,
    @JsonKey(name: "Memberlevels") List<Memberlevel>? memberlevels,
    @JsonKey(name: "content") String? content,
    @JsonKey(name: "grouprules") String? grouprules,
    @JsonKey(name: "groupmin") String? groupmin,
    @JsonKey(name: "groupmax") String? groupmax,
    @JsonKey(name: "jfproduct") Jfproduct? jfproduct,
    @JsonKey(name: "insurance") int? insurance,
    @JsonKey(name: "is_insurance") int? isInsurance,
    @JsonKey(name: "esignature") int? esignature,
    @JsonKey(name: "insurance_agreement") String? insuranceAgreement,
  }) = _ProductInfoModel;

  factory ProductInfoModel.fromJson(Map<String, dynamic> json) => _$ProductInfoModelFromJson(json);
}

@freezed
class Jfproduct with _$Jfproduct {
  const factory Jfproduct({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "category_id") int? categoryId,
    @JsonKey(name: "category_name") String? categoryName,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "integral") int? integral,
  }) = _Jfproduct;

  factory Jfproduct.fromJson(Map<String, dynamic> json) => _$JfproductFromJson(json);
}

@freezed
class Memberlevel with _$Memberlevel {
  const factory Memberlevel({
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "rate") double? rate,
  }) = _Memberlevel;

  factory Memberlevel.fromJson(Map<String, dynamic> json) => _$MemberlevelFromJson(json);
}

@freezed
class Productview with _$Productview {
  const factory Productview({
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
    @JsonKey(name: "endingtime") String? endingtime,
    @JsonKey(name: "isaouttm") int? isaouttm,
    @JsonKey(name: "interval_time") int? intervalTime,
    @JsonKey(name: "rise_time") dynamic riseTime,
    @JsonKey(name: "frequency") int? frequency,
    @JsonKey(name: "rise_settings") dynamic riseSettings,
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
    @JsonKey(name: "endtime") dynamic endtime,
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
    @JsonKey(name: "links") String? links,
    @JsonKey(name: "hd_sel") bool? hdSel,
    @JsonKey(name: "hd_info") String? hdInfo,
    @JsonKey(name: "text_6") String? text6,
    @JsonKey(name: "text_7") String? text7,
    @JsonKey(name: "text_5") String? text5,
    @JsonKey(name: "settlement") String? settlement,
    @JsonKey(name: "profit_term") String? profitTerm,
    @JsonKey(name: "ismake2") int? ismake2,
    @JsonKey(name: "dividend_method") String? dividendMethod,
    @JsonKey(name: "present_level_name") String? presentLevelName,
    @JsonKey(name: "present_level_text") String? presentLevelText,
    @JsonKey(name: "can_create_group") int? canCreateGroup,
    @JsonKey(name: "keshouyi") int? keshouyi,
    @JsonKey(name: "invite_only") int? inviteOnly,
  }) = _Productview;

  factory Productview.fromJson(Map<String, dynamic> json) =>
      _$ProductviewFromJson(json);
}
