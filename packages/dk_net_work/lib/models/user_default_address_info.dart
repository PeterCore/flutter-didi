// To parse this JSON data, do
//
//     final userDefaultAddressInfo = userDefaultAddressInfoFromJson(jsonString);
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_default_address_info.freezed.dart';
part 'user_default_address_info.g.dart';

UserDefaultAddressInfo userDefaultAddressInfoFromJson(String str) =>
    UserDefaultAddressInfo.fromJson(json.decode(str));

String userDefaultAddressInfoToJson(UserDefaultAddressInfo data) =>
    json.encode(data.toJson());

@unfreezed
class UserDefaultAddressInfo with _$UserDefaultAddressInfo {
  factory UserDefaultAddressInfo({
    int? status,
    AddressInfo? info,
  }) = _UserDefaultAddressInfo;

  factory UserDefaultAddressInfo.fromJson(Map<String, dynamic> json) =>
      _$UserDefaultAddressInfoFromJson(json);
}

@unfreezed
class AddressInfo with _$AddressInfo {
  factory AddressInfo({
    int? id,
    int? userid,
    String? name,
    String? phone,
    String? location,
    @JsonKey(name: "is_default") int? isDefault,
    String? address,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
    @JsonKey(name: "name_mask") String? nameMask,
    @JsonKey(name: "phone_mask") String? phoneMask,
    @JsonKey(name: "address_mask") String? addressMask,
  }) = _AddressInfo;

  factory AddressInfo.fromJson(Map<String, dynamic> json) =>
      _$AddressInfoFromJson(json);
}
