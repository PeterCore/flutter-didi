// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ip_config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IpConfigModel _$IpConfigModelFromJson(Map<String, dynamic> json) {
  return _IpConfigModel.fromJson(json);
}

/// @nodoc
mixin _$IpConfigModel {
  @JsonKey(name: 'switch')
  int get ipConfigModelSwitch => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IpConfigModelCopyWith<IpConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IpConfigModelCopyWith<$Res> {
  factory $IpConfigModelCopyWith(
          IpConfigModel value, $Res Function(IpConfigModel) then) =
      _$IpConfigModelCopyWithImpl<$Res, IpConfigModel>;
  @useResult
  $Res call({@JsonKey(name: 'switch') int ipConfigModelSwitch, String key});
}

/// @nodoc
class _$IpConfigModelCopyWithImpl<$Res, $Val extends IpConfigModel>
    implements $IpConfigModelCopyWith<$Res> {
  _$IpConfigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ipConfigModelSwitch = null,
    Object? key = null,
  }) {
    return _then(_value.copyWith(
      ipConfigModelSwitch: null == ipConfigModelSwitch
          ? _value.ipConfigModelSwitch
          : ipConfigModelSwitch // ignore: cast_nullable_to_non_nullable
              as int,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IpConfigModelImplCopyWith<$Res>
    implements $IpConfigModelCopyWith<$Res> {
  factory _$$IpConfigModelImplCopyWith(
          _$IpConfigModelImpl value, $Res Function(_$IpConfigModelImpl) then) =
      __$$IpConfigModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'switch') int ipConfigModelSwitch, String key});
}

/// @nodoc
class __$$IpConfigModelImplCopyWithImpl<$Res>
    extends _$IpConfigModelCopyWithImpl<$Res, _$IpConfigModelImpl>
    implements _$$IpConfigModelImplCopyWith<$Res> {
  __$$IpConfigModelImplCopyWithImpl(
      _$IpConfigModelImpl _value, $Res Function(_$IpConfigModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ipConfigModelSwitch = null,
    Object? key = null,
  }) {
    return _then(_$IpConfigModelImpl(
      ipConfigModelSwitch: null == ipConfigModelSwitch
          ? _value.ipConfigModelSwitch
          : ipConfigModelSwitch // ignore: cast_nullable_to_non_nullable
              as int,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IpConfigModelImpl implements _IpConfigModel {
  const _$IpConfigModelImpl(
      {@JsonKey(name: 'switch') required this.ipConfigModelSwitch,
      required this.key});

  factory _$IpConfigModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IpConfigModelImplFromJson(json);

  @override
  @JsonKey(name: 'switch')
  final int ipConfigModelSwitch;
  @override
  final String key;

  @override
  String toString() {
    return 'IpConfigModel(ipConfigModelSwitch: $ipConfigModelSwitch, key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IpConfigModelImpl &&
            (identical(other.ipConfigModelSwitch, ipConfigModelSwitch) ||
                other.ipConfigModelSwitch == ipConfigModelSwitch) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ipConfigModelSwitch, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IpConfigModelImplCopyWith<_$IpConfigModelImpl> get copyWith =>
      __$$IpConfigModelImplCopyWithImpl<_$IpConfigModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IpConfigModelImplToJson(
      this,
    );
  }
}

abstract class _IpConfigModel implements IpConfigModel {
  const factory _IpConfigModel(
      {@JsonKey(name: 'switch') required final int ipConfigModelSwitch,
      required final String key}) = _$IpConfigModelImpl;

  factory _IpConfigModel.fromJson(Map<String, dynamic> json) =
      _$IpConfigModelImpl.fromJson;

  @override
  @JsonKey(name: 'switch')
  int get ipConfigModelSwitch;
  @override
  String get key;
  @override
  @JsonKey(ignore: true)
  _$$IpConfigModelImplCopyWith<_$IpConfigModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
