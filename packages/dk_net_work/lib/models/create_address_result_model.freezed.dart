// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_address_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateAddressResultModel _$CreateAddressResultModelFromJson(
    Map<String, dynamic> json) {
  return _CreateAddressResultModel.fromJson(json);
}

/// @nodoc
mixin _$CreateAddressResultModel {
  int? get status => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAddressResultModelCopyWith<CreateAddressResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAddressResultModelCopyWith<$Res> {
  factory $CreateAddressResultModelCopyWith(CreateAddressResultModel value,
          $Res Function(CreateAddressResultModel) then) =
      _$CreateAddressResultModelCopyWithImpl<$Res, CreateAddressResultModel>;
  @useResult
  $Res call({int? status, String? msg});
}

/// @nodoc
class _$CreateAddressResultModelCopyWithImpl<$Res,
        $Val extends CreateAddressResultModel>
    implements $CreateAddressResultModelCopyWith<$Res> {
  _$CreateAddressResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateAddressResultModelImplCopyWith<$Res>
    implements $CreateAddressResultModelCopyWith<$Res> {
  factory _$$CreateAddressResultModelImplCopyWith(
          _$CreateAddressResultModelImpl value,
          $Res Function(_$CreateAddressResultModelImpl) then) =
      __$$CreateAddressResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? msg});
}

/// @nodoc
class __$$CreateAddressResultModelImplCopyWithImpl<$Res>
    extends _$CreateAddressResultModelCopyWithImpl<$Res,
        _$CreateAddressResultModelImpl>
    implements _$$CreateAddressResultModelImplCopyWith<$Res> {
  __$$CreateAddressResultModelImplCopyWithImpl(
      _$CreateAddressResultModelImpl _value,
      $Res Function(_$CreateAddressResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$CreateAddressResultModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateAddressResultModelImpl implements _CreateAddressResultModel {
  const _$CreateAddressResultModelImpl({this.status, this.msg});

  factory _$CreateAddressResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAddressResultModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? msg;

  @override
  String toString() {
    return 'CreateAddressResultModel(status: $status, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAddressResultModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAddressResultModelImplCopyWith<_$CreateAddressResultModelImpl>
      get copyWith => __$$CreateAddressResultModelImplCopyWithImpl<
          _$CreateAddressResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAddressResultModelImplToJson(
      this,
    );
  }
}

abstract class _CreateAddressResultModel implements CreateAddressResultModel {
  const factory _CreateAddressResultModel(
      {final int? status, final String? msg}) = _$CreateAddressResultModelImpl;

  factory _CreateAddressResultModel.fromJson(Map<String, dynamic> json) =
      _$CreateAddressResultModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$CreateAddressResultModelImplCopyWith<_$CreateAddressResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
