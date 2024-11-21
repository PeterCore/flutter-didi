// To parse this JSON data, do
//
//     final kycCertification = kycCertificationFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'kyc_certification.freezed.dart';
part 'kyc_certification.g.dart';

KycCertification kycCertificationFromJson(String str) =>
    KycCertification.fromJson(json.decode(str));

String kycCertificationToJson(KycCertification data) =>
    json.encode(data.toJson());

@freezed
class KycCertification with _$KycCertification {
  const factory KycCertification({
    int? status,
    String? realname,
    String? card,
    int? stats,
    int? sjnum,
    dynamic pic1,
    dynamic pic2,
    String? pic3,
    dynamic mark,
    String? msg,
    String? sancishibai,
    @JsonKey(name: "is_card_image") int? isCardImage,
    int? ishandheld,
    int? ispay,
  }) = _KycCertification;

  factory KycCertification.fromJson(Map<String, dynamic> json) =>
      _$KycCertificationFromJson(json);
}
