// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HttpResult _$HttpResultFromJson(Map<String, dynamic> json) {
  return _HttpResult.fromJson(json);
}

/// @nodoc
mixin _$HttpResult {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  dynamic get msg => throw _privateConstructorUsedError;
  @JsonKey(name: "t")
  String? get t => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HttpResultCopyWith<HttpResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpResultCopyWith<$Res> {
  factory $HttpResultCopyWith(
          HttpResult value, $Res Function(HttpResult) then) =
      _$HttpResultCopyWithImpl<$Res, HttpResult>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") dynamic msg,
      @JsonKey(name: "t") String? t});
}

/// @nodoc
class _$HttpResultCopyWithImpl<$Res, $Val extends HttpResult>
    implements $HttpResultCopyWith<$Res> {
  _$HttpResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? t = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as dynamic,
      t: freezed == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HttpResultImplCopyWith<$Res>
    implements $HttpResultCopyWith<$Res> {
  factory _$$HttpResultImplCopyWith(
          _$HttpResultImpl value, $Res Function(_$HttpResultImpl) then) =
      __$$HttpResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") dynamic msg,
      @JsonKey(name: "t") String? t});
}

/// @nodoc
class __$$HttpResultImplCopyWithImpl<$Res>
    extends _$HttpResultCopyWithImpl<$Res, _$HttpResultImpl>
    implements _$$HttpResultImplCopyWith<$Res> {
  __$$HttpResultImplCopyWithImpl(
      _$HttpResultImpl _value, $Res Function(_$HttpResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? t = freezed,
  }) {
    return _then(_$HttpResultImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as dynamic,
      t: freezed == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HttpResultImpl implements _HttpResult {
  _$HttpResultImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "msg") this.msg,
      @JsonKey(name: "t") this.t});

  factory _$HttpResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$HttpResultImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "msg")
  final dynamic msg;
  @override
  @JsonKey(name: "t")
  final String? t;

  @override
  String toString() {
    return 'HttpResult(status: $status, msg: $msg, t: $t)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HttpResultImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.msg, msg) &&
            (identical(other.t, t) || other.t == t));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(msg), t);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HttpResultImplCopyWith<_$HttpResultImpl> get copyWith =>
      __$$HttpResultImplCopyWithImpl<_$HttpResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HttpResultImplToJson(
      this,
    );
  }
}

abstract class _HttpResult implements HttpResult {
  factory _HttpResult(
      {@JsonKey(name: "status") final int? status,
      @JsonKey(name: "msg") final dynamic msg,
      @JsonKey(name: "t") final String? t}) = _$HttpResultImpl;

  factory _HttpResult.fromJson(Map<String, dynamic> json) =
      _$HttpResultImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "msg")
  dynamic get msg;
  @override
  @JsonKey(name: "t")
  String? get t;
  @override
  @JsonKey(ignore: true)
  _$$HttpResultImplCopyWith<_$HttpResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
