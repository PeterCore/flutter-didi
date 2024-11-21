// To parse this JSON data, do
//
//     final homeResultModel = homeResultModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_result_model.freezed.dart';
part 'home_result_model.g.dart';

HomeResultModel homeResultModelFromJson(String str) =>
    HomeResultModel.fromJson(json.decode(str));

String homeResultModelToJson(HomeResultModel data) =>
    json.encode(data.toJson());

@freezed
class HomeResultModel with _$HomeResultModel {
  const factory HomeResultModel({
    int? isvideo,
    String? logo,
    String? videourl,
    String? voidpic,
    List<Banner>? banner,
    int? isggao,
    int? openzhuan,
    int? isequity,
    int? isschool,
    Gonggao? gonggao,
    Gujia? gujia,
    App? app,
  }) = _HomeResultModel;

  factory HomeResultModel.fromJson(Map<String, dynamic> json) =>
      _$HomeResultModelFromJson(json);
}

@freezed
class App with _$App {
  const factory App({
    String? appNewDownUrl,
    String? appNewVersion,
    String? hotUpDomain,
    int? forceUpdate,
  }) = _App;

  factory App.fromJson(Map<String, dynamic> json) => _$AppFromJson(json);
}

@freezed
class Banner with _$Banner {
  const factory Banner({
    int? id,
    String? name,
    int? adverid,
    @JsonKey(name: "thumb_url") String? thumbUrl,
    String? url,
    int? sort,
    String? title,
    String? description,
    String? code,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _Banner;

  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);
}

@freezed
class Gonggao with _$Gonggao {
  const factory Gonggao({
    String? title,
    String? ccontent,
  }) = _Gonggao;

  factory Gonggao.fromJson(Map<String, dynamic> json) =>
      _$GonggaoFromJson(json);
}

@freezed
class Gujia with _$Gujia {
  const factory Gujia({
    String? price,
    int? falg,
  }) = _Gujia;

  factory Gujia.fromJson(Map<String, dynamic> json) => _$GujiaFromJson(json);
}
