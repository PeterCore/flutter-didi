// To parse this JSON data, do
//
//     final commitIdCardResultModel = commitIdCardResultModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'commit_id_card_result_model.freezed.dart';
part 'commit_id_card_result_model.g.dart';

CommitIdCardResultModel commitIdCardResultModelFromJson(String str) =>
    CommitIdCardResultModel.fromJson(json.decode(str));

String commitIdCardResultModelToJson(CommitIdCardResultModel data) =>
    json.encode(data.toJson());

@freezed
class CommitIdCardResultModel with _$CommitIdCardResultModel {
  const factory CommitIdCardResultModel({
    int? status,
    String? msg,
  }) = _CommitIdCardResultModel;

  factory CommitIdCardResultModel.fromJson(Map<String, dynamic> json) =>
      _$CommitIdCardResultModelFromJson(json);
}
