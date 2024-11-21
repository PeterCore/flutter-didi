// To parse this JSON data, do
//
//     final resigsterResultModel = resigsterResultModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'resigster_result_model.freezed.dart';
part 'resigster_result_model.g.dart';

ResigsterResultModel resigsterResultModelFromJson(String str) =>
    ResigsterResultModel.fromJson(json.decode(str));

String resigsterResultModelToJson(ResigsterResultModel data) =>
    json.encode(data.toJson());

@freezed
class ResigsterResultModel with _$ResigsterResultModel {
  factory ResigsterResultModel({
    required int status,
    String? msg,
    String? url,
    String? token,
    String? miyao,
  }) = _ResigsterResultModel;

  factory ResigsterResultModel.fromJson(Map<String, dynamic> json) =>
      _$ResigsterResultModelFromJson(json);
}
