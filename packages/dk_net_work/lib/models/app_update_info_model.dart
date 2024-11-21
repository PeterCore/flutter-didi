// To parse this JSON data, do
//
//     final appUpdateInfoModel = appUpdateInfoModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'app_update_info_model.freezed.dart';
part 'app_update_info_model.g.dart';

AppUpdateInfoModel appUpdateInfoModelFromJson(String str) => AppUpdateInfoModel.fromJson(json.decode(str));

String appUpdateInfoModelToJson(AppUpdateInfoModel data) => json.encode(data.toJson());

@freezed
class AppUpdateInfoModel with _$AppUpdateInfoModel {
    const factory AppUpdateInfoModel({
        @JsonKey(name: "status")
        int? status,
        @JsonKey(name: "app")
        App? app,
        @JsonKey(name: "list")
        List<ListElement>? list,
    }) = _AppUpdateInfoModel;

    factory AppUpdateInfoModel.fromJson(Map<String, dynamic> json) => _$AppUpdateInfoModelFromJson(json);
}

@freezed
class App with _$App {
    const factory App({
        @JsonKey(name: "app_new_down_url")
        String? appNewDownUrl,
        @JsonKey(name: "app_new_version")
        String? appNewVersion,
        @JsonKey(name: "hot_up_domain")
        String? hotUpDomain,
        @JsonKey(name: "forceUpdate")
        int? forceUpdate,
        @JsonKey(name: "hot_up_content")
        String? hotUpContent,
    }) = _App;

    factory App.fromJson(Map<String, dynamic> json) => _$AppFromJson(json);
}

@freezed
class ListElement with _$ListElement {
    const factory ListElement({
        @JsonKey(name: "os")
        String? os,
        @JsonKey(name: "url")
        String? url,
    }) = _ListElement;

    factory ListElement.fromJson(Map<String, dynamic> json) => _$ListElementFromJson(json);
}
