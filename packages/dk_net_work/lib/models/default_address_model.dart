// To parse this JSON data, do
//
//     final defaultAddressModel = defaultAddressModelFromJson(jsonString);

import 'dart:convert';

import 'package:dk_net_work/models/user_default_address_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'default_address_model.freezed.dart';
part 'default_address_model.g.dart';

DefaultAddressModel defaultAddressModelFromJson(String str) =>
    DefaultAddressModel.fromJson(json.decode(str));

String defaultAddressModelToJson(DefaultAddressModel data) =>
    json.encode(data.toJson());

@unfreezed
class DefaultAddressModel with _$DefaultAddressModel {
  factory DefaultAddressModel({
    int? status,
    AddressInfo? info,
  }) = _DefaultAddressModel;

  factory DefaultAddressModel.fromJson(Map<String, dynamic> json) =>
      _$DefaultAddressModelFromJson(json);
}
