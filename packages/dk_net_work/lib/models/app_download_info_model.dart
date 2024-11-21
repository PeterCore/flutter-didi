// To parse this JSON data, do
//
//     final appDownloadInfoModel = appDownloadInfoModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'app_download_info_model.freezed.dart';
part 'app_download_info_model.g.dart';

AppDownloadInfoModel appDownloadInfoModelFromJson(String str) => AppDownloadInfoModel.fromJson(json.decode(str));

String appDownloadInfoModelToJson(AppDownloadInfoModel data) => json.encode(data.toJson());

@freezed
class AppDownloadInfoModel with _$AppDownloadInfoModel {
    const factory AppDownloadInfoModel({
        @JsonKey(name: "status")
        int? status,
        @JsonKey(name: "list")
        List<String>? list,
        @JsonKey(name: "list2")
        List<List2>? list2,
    }) = _AppDownloadInfoModel;

    factory AppDownloadInfoModel.fromJson(Map<String, dynamic> json) => _$AppDownloadInfoModelFromJson(json);
}

@freezed
class List2 with _$List2 {
    const factory List2({
        @JsonKey(name: "os")
        String? os,
        @JsonKey(name: "url")
        String? url,
    }) = _List2;

    factory List2.fromJson(Map<String, dynamic> json) => _$List2FromJson(json);
}
