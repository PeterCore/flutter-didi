// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_p_keys_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyPKeysResultModel _$VerifyPKeysResultModelFromJson(
    Map<String, dynamic> json) {
  return _VerifyPKeysResultModel.fromJson(json);
}

/// @nodoc
mixin _$VerifyPKeysResultModel {
  int get status => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyPKeysResultModelCopyWith<VerifyPKeysResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPKeysResultModelCopyWith<$Res> {
  factory $VerifyPKeysResultModelCopyWith(VerifyPKeysResultModel value,
          $Res Function(VerifyPKeysResultModel) then) =
      _$VerifyPKeysResultModelCopyWithImpl<$Res, VerifyPKeysResultModel>;
  @useResult
  $Res call({int status, String msg});
}

/// @nodoc
class _$VerifyPKeysResultModelCopyWithImpl<$Res,
        $Val extends VerifyPKeysResultModel>
    implements $VerifyPKeysResultModelCopyWith<$Res> {
  _$VerifyPKeysResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyPKeysResultModelImplCopyWith<$Res>
    implements $VerifyPKeysResultModelCopyWith<$Res> {
  factory _$$VerifyPKeysResultModelImplCopyWith(
          _$VerifyPKeysResultModelImpl value,
          $Res Function(_$VerifyPKeysResultModelImpl) then) =
      __$$VerifyPKeysResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String msg});
}

/// @nodoc
class __$$VerifyPKeysResultModelImplCopyWithImpl<$Res>
    extends _$VerifyPKeysResultModelCopyWithImpl<$Res,
        _$VerifyPKeysResultModelImpl>
    implements _$$VerifyPKeysResultModelImplCopyWith<$Res> {
  __$$VerifyPKeysResultModelImplCopyWithImpl(
      _$VerifyPKeysResultModelImpl _value,
      $Res Function(_$VerifyPKeysResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? msg = null,
  }) {
    return _then(_$VerifyPKeysResultModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyPKeysResultModelImpl implements _VerifyPKeysResultModel {
  const _$VerifyPKeysResultModelImpl({required this.status, required this.msg});

  factory _$VerifyPKeysResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyPKeysResultModelImplFromJson(json);

  @override
  final int status;
  @override
  final String msg;

  @override
  String toString() {
    return 'VerifyPKeysResultModel(status: $status, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPKeysResultModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyPKeysResultModelImplCopyWith<_$VerifyPKeysResultModelImpl>
      get copyWith => __$$VerifyPKeysResultModelImplCopyWithImpl<
          _$VerifyPKeysResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyPKeysResultModelImplToJson(
      this,
    );
  }
}

abstract class _VerifyPKeysResultModel implements VerifyPKeysResultModel {
  const factory _VerifyPKeysResultModel(
      {required final int status,
      required final String msg}) = _$VerifyPKeysResultModelImpl;

  factory _VerifyPKeysResultModel.fromJson(Map<String, dynamic> json) =
      _$VerifyPKeysResultModelImpl.fromJson;

  @override
  int get status;
  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$VerifyPKeysResultModelImplCopyWith<_$VerifyPKeysResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
