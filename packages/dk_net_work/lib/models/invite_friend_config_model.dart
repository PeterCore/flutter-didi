// To parse this JSON data, do
//
//     final inviteFriendConfigModel = inviteFriendConfigModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'invite_friend_config_model.freezed.dart';
part 'invite_friend_config_model.g.dart';

InviteFriendConfigModel inviteFriendConfigModelFromJson(String str) =>
    InviteFriendConfigModel.fromJson(json.decode(str));

String inviteFriendConfigModelToJson(InviteFriendConfigModel data) =>
    json.encode(data.toJson());

@freezed
class InviteFriendConfigModel with _$InviteFriendConfigModel {
  const factory InviteFriendConfigModel({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "logo") String? logo,
    @JsonKey(name: "invicode") String? invicode,
    @JsonKey(name: "yaoqinconte") String? yaoqinconte,
    @JsonKey(name: "tuihaomaid") String? tuihaomaid,
  }) = _InviteFriendConfigModel;

  factory InviteFriendConfigModel.fromJson(Map<String, dynamic> json) =>
      _$InviteFriendConfigModelFromJson(json);
}
