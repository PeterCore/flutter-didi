// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_in_success_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckInSuccessResult _$CheckInSuccessResultFromJson(Map<String, dynamic> json) {
  return _CheckInSuccessResult.fromJson(json);
}

/// @nodoc
mixin _$CheckInSuccessResult {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  String? get msg => throw _privateConstructorUsedError;
  @JsonKey(name: "msg2")
  String? get msg2 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckInSuccessResultCopyWith<CheckInSuccessResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInSuccessResultCopyWith<$Res> {
  factory $CheckInSuccessResultCopyWith(CheckInSuccessResult value,
          $Res Function(CheckInSuccessResult) then) =
      _$CheckInSuccessResultCopyWithImpl<$Res, CheckInSuccessResult>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "msg2") String? msg2});
}

/// @nodoc
class _$CheckInSuccessResultCopyWithImpl<$Res,
        $Val extends CheckInSuccessResult>
    implements $CheckInSuccessResultCopyWith<$Res> {
  _$CheckInSuccessResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? msg2 = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      msg2: freezed == msg2
          ? _value.msg2
          : msg2 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckInSuccessResultImplCopyWith<$Res>
    implements $CheckInSuccessResultCopyWith<$Res> {
  factory _$$CheckInSuccessResultImplCopyWith(_$CheckInSuccessResultImpl value,
          $Res Function(_$CheckInSuccessResultImpl) then) =
      __$$CheckInSuccessResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "msg2") String? msg2});
}

/// @nodoc
class __$$CheckInSuccessResultImplCopyWithImpl<$Res>
    extends _$CheckInSuccessResultCopyWithImpl<$Res, _$CheckInSuccessResultImpl>
    implements _$$CheckInSuccessResultImplCopyWith<$Res> {
  __$$CheckInSuccessResultImplCopyWithImpl(_$CheckInSuccessResultImpl _value,
      $Res Function(_$CheckInSuccessResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? msg2 = freezed,
  }) {
    return _then(_$CheckInSuccessResultImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      msg2: freezed == msg2
          ? _value.msg2
          : msg2 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckInSuccessResultImpl implements _CheckInSuccessResult {
  const _$CheckInSuccessResultImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "msg") this.msg,
      @JsonKey(name: "msg2") this.msg2});

  factory _$CheckInSuccessResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckInSuccessResultImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "msg")
  final String? msg;
  @override
  @JsonKey(name: "msg2")
  final String? msg2;

  @override
  String toString() {
    return 'CheckInSuccessResult(status: $status, msg: $msg, msg2: $msg2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckInSuccessResultImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.msg2, msg2) || other.msg2 == msg2));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, msg, msg2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckInSuccessResultImplCopyWith<_$CheckInSuccessResultImpl>
      get copyWith =>
          __$$CheckInSuccessResultImplCopyWithImpl<_$CheckInSuccessResultImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckInSuccessResultImplToJson(
      this,
    );
  }
}

abstract class _CheckInSuccessResult implements CheckInSuccessResult {
  const factory _CheckInSuccessResult(
      {@JsonKey(name: "status") final int? status,
      @JsonKey(name: "msg") final String? msg,
      @JsonKey(name: "msg2") final String? msg2}) = _$CheckInSuccessResultImpl;

  factory _CheckInSuccessResult.fromJson(Map<String, dynamic> json) =
      _$CheckInSuccessResultImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "msg")
  String? get msg;
  @override
  @JsonKey(name: "msg2")
  String? get msg2;
  @override
  @JsonKey(ignore: true)
  _$$CheckInSuccessResultImplCopyWith<_$CheckInSuccessResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
