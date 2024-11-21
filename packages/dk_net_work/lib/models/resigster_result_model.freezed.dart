// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resigster_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResigsterResultModel _$ResigsterResultModelFromJson(Map<String, dynamic> json) {
  return _ResigsterResultModel.fromJson(json);
}

/// @nodoc
mixin _$ResigsterResultModel {
  int get status => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get miyao => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResigsterResultModelCopyWith<ResigsterResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResigsterResultModelCopyWith<$Res> {
  factory $ResigsterResultModelCopyWith(ResigsterResultModel value,
          $Res Function(ResigsterResultModel) then) =
      _$ResigsterResultModelCopyWithImpl<$Res, ResigsterResultModel>;
  @useResult
  $Res call(
      {int status, String? msg, String? url, String? token, String? miyao});
}

/// @nodoc
class _$ResigsterResultModelCopyWithImpl<$Res,
        $Val extends ResigsterResultModel>
    implements $ResigsterResultModelCopyWith<$Res> {
  _$ResigsterResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? msg = freezed,
    Object? url = freezed,
    Object? token = freezed,
    Object? miyao = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      miyao: freezed == miyao
          ? _value.miyao
          : miyao // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResigsterResultModelImplCopyWith<$Res>
    implements $ResigsterResultModelCopyWith<$Res> {
  factory _$$ResigsterResultModelImplCopyWith(_$ResigsterResultModelImpl value,
          $Res Function(_$ResigsterResultModelImpl) then) =
      __$$ResigsterResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status, String? msg, String? url, String? token, String? miyao});
}

/// @nodoc
class __$$ResigsterResultModelImplCopyWithImpl<$Res>
    extends _$ResigsterResultModelCopyWithImpl<$Res, _$ResigsterResultModelImpl>
    implements _$$ResigsterResultModelImplCopyWith<$Res> {
  __$$ResigsterResultModelImplCopyWithImpl(_$ResigsterResultModelImpl _value,
      $Res Function(_$ResigsterResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? msg = freezed,
    Object? url = freezed,
    Object? token = freezed,
    Object? miyao = freezed,
  }) {
    return _then(_$ResigsterResultModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      miyao: freezed == miyao
          ? _value.miyao
          : miyao // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResigsterResultModelImpl implements _ResigsterResultModel {
  _$ResigsterResultModelImpl(
      {required this.status, this.msg, this.url, this.token, this.miyao});

  factory _$ResigsterResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResigsterResultModelImplFromJson(json);

  @override
  final int status;
  @override
  final String? msg;
  @override
  final String? url;
  @override
  final String? token;
  @override
  final String? miyao;

  @override
  String toString() {
    return 'ResigsterResultModel(status: $status, msg: $msg, url: $url, token: $token, miyao: $miyao)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResigsterResultModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.miyao, miyao) || other.miyao == miyao));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, msg, url, token, miyao);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResigsterResultModelImplCopyWith<_$ResigsterResultModelImpl>
      get copyWith =>
          __$$ResigsterResultModelImplCopyWithImpl<_$ResigsterResultModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResigsterResultModelImplToJson(
      this,
    );
  }
}

abstract class _ResigsterResultModel implements ResigsterResultModel {
  factory _ResigsterResultModel(
      {required final int status,
      final String? msg,
      final String? url,
      final String? token,
      final String? miyao}) = _$ResigsterResultModelImpl;

  factory _ResigsterResultModel.fromJson(Map<String, dynamic> json) =
      _$ResigsterResultModelImpl.fromJson;

  @override
  int get status;
  @override
  String? get msg;
  @override
  String? get url;
  @override
  String? get token;
  @override
  String? get miyao;
  @override
  @JsonKey(ignore: true)
  _$$ResigsterResultModelImplCopyWith<_$ResigsterResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
