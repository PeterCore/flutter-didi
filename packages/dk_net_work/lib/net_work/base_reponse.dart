import 'package:json_annotation/json_annotation.dart';

part 'base_reponse.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  @JsonKey(name: 'msg')
  String? message;

  @JsonKey(name: 'code')
  int? code;

  @JsonKey(name: 'data')
  final T? result;

  BaseResponse(this.message, this.code, this.result);

  factory BaseResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$BaseResponseFromJson<T>(json, fromJsonT);
}
