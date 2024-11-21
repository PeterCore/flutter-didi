// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommonConfig _$CommonConfigFromJson(Map<String, dynamic> json) {
  return _CommonConfig.fromJson(json);
}

/// @nodoc
mixin _$CommonConfig {
  int? get status => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonConfigCopyWith<CommonConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonConfigCopyWith<$Res> {
  factory $CommonConfigCopyWith(
          CommonConfig value, $Res Function(CommonConfig) then) =
      _$CommonConfigCopyWithImpl<$Res, CommonConfig>;
  @useResult
  $Res call({int? status, String? msg, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CommonConfigCopyWithImpl<$Res, $Val extends CommonConfig>
    implements $CommonConfigCopyWith<$Res> {
  _$CommonConfigCopyWithImpl(this._value, this._then);

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
abstract class _$$CommonConfigImplCopyWith<$Res>
    implements $CommonConfigCopyWith<$Res> {
  factory _$$CommonConfigImplCopyWith(
          _$CommonConfigImpl value, $Res Function(_$CommonConfigImpl) then) =
      __$$CommonConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? msg, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CommonConfigImplCopyWithImpl<$Res>
    extends _$CommonConfigCopyWithImpl<$Res, _$CommonConfigImpl>
    implements _$$CommonConfigImplCopyWith<$Res> {
  __$$CommonConfigImplCopyWithImpl(
      _$CommonConfigImpl _value, $Res Function(_$CommonConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CommonConfigImpl(
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
class _$CommonConfigImpl implements _CommonConfig {
  const _$CommonConfigImpl({this.status, this.msg, this.data});

  factory _$CommonConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommonConfigImplFromJson(json);

  @override
  final int? status;
  @override
  final String? msg;
  @override
  final Data? data;

  @override
  String toString() {
    return 'CommonConfig(status: $status, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonConfigImpl &&
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
  _$$CommonConfigImplCopyWith<_$CommonConfigImpl> get copyWith =>
      __$$CommonConfigImplCopyWithImpl<_$CommonConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommonConfigImplToJson(
      this,
    );
  }
}

abstract class _CommonConfig implements CommonConfig {
  const factory _CommonConfig(
      {final int? status,
      final String? msg,
      final Data? data}) = _$CommonConfigImpl;

  factory _CommonConfig.fromJson(Map<String, dynamic> json) =
      _$CommonConfigImpl.fromJson;

  @override
  int? get status;
  @override
  String? get msg;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$CommonConfigImplCopyWith<_$CommonConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "www_url")
  String? get wwwUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "captcha_switch")
  int? get captchaSwitch => throw _privateConstructorUsedError;
  @JsonKey(name: "miyao_switch")
  int? get miyaoSwitch => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "www_url") String? wwwUrl,
      @JsonKey(name: "captcha_switch") int? captchaSwitch,
      @JsonKey(name: "miyao_switch") int? miyaoSwitch});
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
    Object? wwwUrl = freezed,
    Object? captchaSwitch = freezed,
    Object? miyaoSwitch = freezed,
  }) {
    return _then(_value.copyWith(
      wwwUrl: freezed == wwwUrl
          ? _value.wwwUrl
          : wwwUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      captchaSwitch: freezed == captchaSwitch
          ? _value.captchaSwitch
          : captchaSwitch // ignore: cast_nullable_to_non_nullable
              as int?,
      miyaoSwitch: freezed == miyaoSwitch
          ? _value.miyaoSwitch
          : miyaoSwitch // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "www_url") String? wwwUrl,
      @JsonKey(name: "captcha_switch") int? captchaSwitch,
      @JsonKey(name: "miyao_switch") int? miyaoSwitch});
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
    Object? wwwUrl = freezed,
    Object? captchaSwitch = freezed,
    Object? miyaoSwitch = freezed,
  }) {
    return _then(_$DataImpl(
      wwwUrl: freezed == wwwUrl
          ? _value.wwwUrl
          : wwwUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      captchaSwitch: freezed == captchaSwitch
          ? _value.captchaSwitch
          : captchaSwitch // ignore: cast_nullable_to_non_nullable
              as int?,
      miyaoSwitch: freezed == miyaoSwitch
          ? _value.miyaoSwitch
          : miyaoSwitch // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "www_url") this.wwwUrl,
      @JsonKey(name: "captcha_switch") this.captchaSwitch,
      @JsonKey(name: "miyao_switch") this.miyaoSwitch});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "www_url")
  final String? wwwUrl;
  @override
  @JsonKey(name: "captcha_switch")
  final int? captchaSwitch;
  @override
  @JsonKey(name: "miyao_switch")
  final int? miyaoSwitch;

  @override
  String toString() {
    return 'Data(wwwUrl: $wwwUrl, captchaSwitch: $captchaSwitch, miyaoSwitch: $miyaoSwitch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.wwwUrl, wwwUrl) || other.wwwUrl == wwwUrl) &&
            (identical(other.captchaSwitch, captchaSwitch) ||
                other.captchaSwitch == captchaSwitch) &&
            (identical(other.miyaoSwitch, miyaoSwitch) ||
                other.miyaoSwitch == miyaoSwitch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, wwwUrl, captchaSwitch, miyaoSwitch);

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
      {@JsonKey(name: "www_url") final String? wwwUrl,
      @JsonKey(name: "captcha_switch") final int? captchaSwitch,
      @JsonKey(name: "miyao_switch") final int? miyaoSwitch}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "www_url")
  String? get wwwUrl;
  @override
  @JsonKey(name: "captcha_switch")
  int? get captchaSwitch;
  @override
  @JsonKey(name: "miyao_switch")
  int? get miyaoSwitch;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
