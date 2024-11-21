// To parse this JSON data, do
//
//     final loanStatusModel = loanStatusModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_status_model.freezed.dart';
part 'loan_status_model.g.dart';

LoanStatusModel loanStatusModelFromJson(String str) =>
    LoanStatusModel.fromJson(json.decode(str));

String loanStatusModelToJson(LoanStatusModel data) =>
    json.encode(data.toJson());

@freezed
class LoanStatusModel with _$LoanStatusModel {
  const factory LoanStatusModel({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "withdrawalmin") String? withdrawalmin,
    @JsonKey(name: "money") String? money,
    @JsonKey(name: "isdaikuan") int? isdaikuan,
    @JsonKey(name: "daikuancontent") String? daikuancontent,
    @JsonKey(name: "jiemoney") String? jiemoney,
    @JsonKey(name: "huanmoney") String? huanmoney,
    @JsonKey(name: "yidaimoney") String? yidaimoney,
    @JsonKey(name: "txmoney") String? txmoney,
    @JsonKey(name: "amount") String? amount,
    @JsonKey(name: "huankuan_tiqian_content") String? earlyRepayContent,
    int? esignature,
    @JsonKey(name: "huankuancontent") String? huankuancontent,
  }) = _LoanStatusModel;

  factory LoanStatusModel.fromJson(Map<String, dynamic> json) =>
      _$LoanStatusModelFromJson(json);
}
