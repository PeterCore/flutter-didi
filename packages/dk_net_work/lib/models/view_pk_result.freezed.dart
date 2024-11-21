// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_pk_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ViewPkResult _$ViewPkResultFromJson(Map<String, dynamic> json) {
  return _ViewPkResult.fromJson(json);
}

/// @nodoc
mixin _$ViewPkResult {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "miyao")
  String? get miyao => throw _privateConstructorUsedError;
  @JsonKey(name: "wx_ti_shi")
  String? get wxTiShi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViewPkResultCopyWith<ViewPkResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewPkResultCopyWith<$Res> {
  factory $ViewPkResultCopyWith(
          ViewPkResult value, $Res Function(ViewPkResult) then) =
      _$ViewPkResultCopyWithImpl<$Res, ViewPkResult>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "miyao") String? miyao,
      @JsonKey(name: "wx_ti_shi") String? wxTiShi});
}

/// @nodoc
class _$ViewPkResultCopyWithImpl<$Res, $Val extends ViewPkResult>
    implements $ViewPkResultCopyWith<$Res> {
  _$ViewPkResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? miyao = freezed,
    Object? wxTiShi = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      miyao: freezed == miyao
          ? _value.miyao
          : miyao // ignore: cast_nullable_to_non_nullable
              as String?,
      wxTiShi: freezed == wxTiShi
          ? _value.wxTiShi
          : wxTiShi // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ViewPkResultImplCopyWith<$Res>
    implements $ViewPkResultCopyWith<$Res> {
  factory _$$ViewPkResultImplCopyWith(
          _$ViewPkResultImpl value, $Res Function(_$ViewPkResultImpl) then) =
      __$$ViewPkResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "miyao") String? miyao,
      @JsonKey(name: "wx_ti_shi") String? wxTiShi});
}

/// @nodoc
class __$$ViewPkResultImplCopyWithImpl<$Res>
    extends _$ViewPkResultCopyWithImpl<$Res, _$ViewPkResultImpl>
    implements _$$ViewPkResultImplCopyWith<$Res> {
  __$$ViewPkResultImplCopyWithImpl(
      _$ViewPkResultImpl _value, $Res Function(_$ViewPkResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? miyao = freezed,
    Object? wxTiShi = freezed,
  }) {
    return _then(_$ViewPkResultImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      miyao: freezed == miyao
          ? _value.miyao
          : miyao // ignore: cast_nullable_to_non_nullable
              as String?,
      wxTiShi: freezed == wxTiShi
          ? _value.wxTiShi
          : wxTiShi // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ViewPkResultImpl implements _ViewPkResult {
  const _$ViewPkResultImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "miyao") this.miyao,
      @JsonKey(name: "wx_ti_shi") this.wxTiShi});

  factory _$ViewPkResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ViewPkResultImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "miyao")
  final String? miyao;
  @override
  @JsonKey(name: "wx_ti_shi")
  final String? wxTiShi;

  @override
  String toString() {
    return 'ViewPkResult(status: $status, miyao: $miyao, wxTiShi: $wxTiShi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewPkResultImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.miyao, miyao) || other.miyao == miyao) &&
            (identical(other.wxTiShi, wxTiShi) || other.wxTiShi == wxTiShi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, miyao, wxTiShi);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewPkResultImplCopyWith<_$ViewPkResultImpl> get copyWith =>
      __$$ViewPkResultImplCopyWithImpl<_$ViewPkResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ViewPkResultImplToJson(
      this,
    );
  }
}

abstract class _ViewPkResult implements ViewPkResult {
  const factory _ViewPkResult(
      {@JsonKey(name: "status") final int? status,
      @JsonKey(name: "miyao") final String? miyao,
      @JsonKey(name: "wx_ti_shi") final String? wxTiShi}) = _$ViewPkResultImpl;

  factory _ViewPkResult.fromJson(Map<String, dynamic> json) =
      _$ViewPkResultImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "miyao")
  String? get miyao;
  @override
  @JsonKey(name: "wx_ti_shi")
  String? get wxTiShi;
  @override
  @JsonKey(ignore: true)
  _$$ViewPkResultImplCopyWith<_$ViewPkResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
