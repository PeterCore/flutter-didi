// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'captcha_config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CaptchaConfigModel _$CaptchaConfigModelFromJson(Map<String, dynamic> json) {
  return _CaptchaConfigModel.fromJson(json);
}

/// @nodoc
mixin _$CaptchaConfigModel {
  int? get status => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaptchaConfigModelCopyWith<CaptchaConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaptchaConfigModelCopyWith<$Res> {
  factory $CaptchaConfigModelCopyWith(
          CaptchaConfigModel value, $Res Function(CaptchaConfigModel) then) =
      _$CaptchaConfigModelCopyWithImpl<$Res, CaptchaConfigModel>;
  @useResult
  $Res call({int? status, String? msg, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CaptchaConfigModelCopyWithImpl<$Res, $Val extends CaptchaConfigModel>
    implements $CaptchaConfigModelCopyWith<$Res> {
  _$CaptchaConfigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CaptchaConfigModelImplCopyWith<$Res>
    implements $CaptchaConfigModelCopyWith<$Res> {
  factory _$$CaptchaConfigModelImplCopyWith(_$CaptchaConfigModelImpl value,
          $Res Function(_$CaptchaConfigModelImpl) then) =
      __$$CaptchaConfigModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? msg, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CaptchaConfigModelImplCopyWithImpl<$Res>
    extends _$CaptchaConfigModelCopyWithImpl<$Res, _$CaptchaConfigModelImpl>
    implements _$$CaptchaConfigModelImplCopyWith<$Res> {
  __$$CaptchaConfigModelImplCopyWithImpl(_$CaptchaConfigModelImpl _value,
      $Res Function(_$CaptchaConfigModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CaptchaConfigModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CaptchaConfigModelImpl implements _CaptchaConfigModel {
  const _$CaptchaConfigModelImpl({this.status, this.msg, this.data});

  factory _$CaptchaConfigModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CaptchaConfigModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? msg;
  @override
  final Data? data;

  @override
  String toString() {
    return 'CaptchaConfigModel(status: $status, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaptchaConfigModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, msg, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CaptchaConfigModelImplCopyWith<_$CaptchaConfigModelImpl> get copyWith =>
      __$$CaptchaConfigModelImplCopyWithImpl<_$CaptchaConfigModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CaptchaConfigModelImplToJson(
      this,
    );
  }
}

abstract class _CaptchaConfigModel implements CaptchaConfigModel {
  const factory _CaptchaConfigModel(
      {final int? status,
      final String? msg,
      final Data? data}) = _$CaptchaConfigModelImpl;

  factory _CaptchaConfigModel.fromJson(Map<String, dynamic> json) =
      _$CaptchaConfigModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get msg;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$CaptchaConfigModelImplCopyWith<_$CaptchaConfigModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  double? get x => throw _privateConstructorUsedError;
  double? get y => throw _privateConstructorUsedError;
  @JsonKey(name: "captcha_id")
  String? get captchaId => throw _privateConstructorUsedError;
  int? get time => throw _privateConstructorUsedError;
  int? get dataSwitch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {double? x,
      double? y,
      @JsonKey(name: "captcha_id") String? captchaId,
      int? time,
      int? dataSwitch});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
    Object? captchaId = freezed,
    Object? time = freezed,
    Object? dataSwitch = freezed,
  }) {
    return _then(_value.copyWith(
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double?,
      y: freezed == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double?,
      captchaId: freezed == captchaId
          ? _value.captchaId
          : captchaId // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      dataSwitch: freezed == dataSwitch
          ? _value.dataSwitch
          : dataSwitch // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? x,
      double? y,
      @JsonKey(name: "captcha_id") String? captchaId,
      int? time,
      int? dataSwitch});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
    Object? captchaId = freezed,
    Object? time = freezed,
    Object? dataSwitch = freezed,
  }) {
    return _then(_$DataImpl(
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double?,
      y: freezed == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double?,
      captchaId: freezed == captchaId
          ? _value.captchaId
          : captchaId // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      dataSwitch: freezed == dataSwitch
          ? _value.dataSwitch
          : dataSwitch // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.x,
      this.y,
      @JsonKey(name: "captcha_id") this.captchaId,
      this.time,
      this.dataSwitch});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final double? x;
  @override
  final double? y;
  @override
  @JsonKey(name: "captcha_id")
  final String? captchaId;
  @override
  final int? time;
  @override
  final int? dataSwitch;

  @override
  String toString() {
    return 'Data(x: $x, y: $y, captchaId: $captchaId, time: $time, dataSwitch: $dataSwitch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.captchaId, captchaId) ||
                other.captchaId == captchaId) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.dataSwitch, dataSwitch) ||
                other.dataSwitch == dataSwitch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, x, y, captchaId, time, dataSwitch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {final double? x,
      final double? y,
      @JsonKey(name: "captcha_id") final String? captchaId,
      final int? time,
      final int? dataSwitch}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  double? get x;
  @override
  double? get y;
  @override
  @JsonKey(name: "captcha_id")
  String? get captchaId;
  @override
  int? get time;
  @override
  int? get dataSwitch;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
