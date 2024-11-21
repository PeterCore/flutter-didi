// To parse this JSON data, do
//
//     final addressInfoListModel = addressInfoListModelFromJson(jsonString);

import 'dart:convert';

import 'package:dk_net_work/models/user_default_address_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_info_list_model.freezed.dart';
part 'address_info_list_model.g.dart';

AddressInfoListModel addressInfoListModelFromJson(String str) =>
    AddressInfoListModel.fromJson(json.decode(str));

String addressInfoListModelToJson(AddressInfoListModel data) =>
    json.encode(data.toJson());

@unfreezed
class AddressInfoListModel with _$AddressInfoListModel {
  factory AddressInfoListModel({
    int? status,
    List<AddressInfo>? list,
    String? pagesize,
  }) = _AddressInfoListModel;

  factory AddressInfoListModel.fromJson(Map<String, dynamic> json) =>
      _$AddressInfoListModelFromJson(json);
}
