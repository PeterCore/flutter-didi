// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'default_address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DefaultAddressModel _$DefaultAddressModelFromJson(Map<String, dynamic> json) {
  return _DefaultAddressModel.fromJson(json);
}

/// @nodoc
mixin _$DefaultAddressModel {
  int? get status => throw _privateConstructorUsedError;
  set status(int? value) => throw _privateConstructorUsedError;
  AddressInfo? get info => throw _privateConstructorUsedError;
  set info(AddressInfo? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefaultAddressModelCopyWith<DefaultAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultAddressModelCopyWith<$Res> {
  factory $DefaultAddressModelCopyWith(
          DefaultAddressModel value, $Res Function(DefaultAddressModel) then) =
      _$DefaultAddressModelCopyWithImpl<$Res, DefaultAddressModel>;
  @useResult
  $Res call({int? status, AddressInfo? info});

  $AddressInfoCopyWith<$Res>? get info;
}

/// @nodoc
class _$DefaultAddressModelCopyWithImpl<$Res, $Val extends DefaultAddressModel>
    implements $DefaultAddressModelCopyWith<$Res> {
  _$DefaultAddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AddressInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressInfoCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $AddressInfoCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DefaultAddressModelImplCopyWith<$Res>
    implements $DefaultAddressModelCopyWith<$Res> {
  factory _$$DefaultAddressModelImplCopyWith(_$DefaultAddressModelImpl value,
          $Res Function(_$DefaultAddressModelImpl) then) =
      __$$DefaultAddressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, AddressInfo? info});

  @override
  $AddressInfoCopyWith<$Res>? get info;
}

/// @nodoc
class __$$DefaultAddressModelImplCopyWithImpl<$Res>
    extends _$DefaultAddressModelCopyWithImpl<$Res, _$DefaultAddressModelImpl>
    implements _$$DefaultAddressModelImplCopyWith<$Res> {
  __$$DefaultAddressModelImplCopyWithImpl(_$DefaultAddressModelImpl _value,
      $Res Function(_$DefaultAddressModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? info = freezed,
  }) {
    return _then(_$DefaultAddressModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AddressInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DefaultAddressModelImpl implements _DefaultAddressModel {
  _$DefaultAddressModelImpl({this.status, this.info});

  factory _$DefaultAddressModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DefaultAddressModelImplFromJson(json);

  @override
  int? status;
  @override
  AddressInfo? info;

  @override
  String toString() {
    return 'DefaultAddressModel(status: $status, info: $info)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultAddressModelImplCopyWith<_$DefaultAddressModelImpl> get copyWith =>
      __$$DefaultAddressModelImplCopyWithImpl<_$DefaultAddressModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DefaultAddressModelImplToJson(
      this,
    );
  }
}

abstract class _DefaultAddressModel implements DefaultAddressModel {
  factory _DefaultAddressModel({int? status, AddressInfo? info}) =
      _$DefaultAddressModelImpl;

  factory _DefaultAddressModel.fromJson(Map<String, dynamic> json) =
      _$DefaultAddressModelImpl.fromJson;

  @override
  int? get status;
  set status(int? value);
  @override
  AddressInfo? get info;
  set info(AddressInfo? value);
  @override
  @JsonKey(ignore: true)
  _$$DefaultAddressModelImplCopyWith<_$DefaultAddressModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
