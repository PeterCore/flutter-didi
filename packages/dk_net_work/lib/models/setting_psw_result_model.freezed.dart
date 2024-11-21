// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_psw_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SettingPswResultModel _$SettingPswResultModelFromJson(
    Map<String, dynamic> json) {
  return _SettingPswResultModel.fromJson(json);
}

/// @nodoc
mixin _$SettingPswResultModel {
  String? get msg => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  int? get smsverifi => throw _privateConstructorUsedError;
  String? get mima => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingPswResultModelCopyWith<SettingPswResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingPswResultModelCopyWith<$Res> {
  factory $SettingPswResultModelCopyWith(SettingPswResultModel value,
          $Res Function(SettingPswResultModel) then) =
      _$SettingPswResultModelCopyWithImpl<$Res, SettingPswResultModel>;
  @useResult
  $Res call({String? msg, int? status, int? smsverifi, String? mima});
}

/// @nodoc
class _$SettingPswResultModelCopyWithImpl<$Res,
        $Val extends SettingPswResultModel>
    implements $SettingPswResultModelCopyWith<$Res> {
  _$SettingPswResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
    Object? status = freezed,
    Object? smsverifi = freezed,
    Object? mima = freezed,
  }) {
    return _then(_value.copyWith(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      smsverifi: freezed == smsverifi
          ? _value.smsverifi
          : smsverifi // ignore: cast_nullable_to_non_nullable
              as int?,
      mima: freezed == mima
          ? _value.mima
          : mima // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingPswResultModelImplCopyWith<$Res>
    implements $SettingPswResultModelCopyWith<$Res> {
  factory _$$SettingPswResultModelImplCopyWith(
          _$SettingPswResultModelImpl value,
          $Res Function(_$SettingPswResultModelImpl) then) =
      __$$SettingPswResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? msg, int? status, int? smsverifi, String? mima});
}

/// @nodoc
class __$$SettingPswResultModelImplCopyWithImpl<$Res>
    extends _$SettingPswResultModelCopyWithImpl<$Res,
        _$SettingPswResultModelImpl>
    implements _$$SettingPswResultModelImplCopyWith<$Res> {
  __$$SettingPswResultModelImplCopyWithImpl(_$SettingPswResultModelImpl _value,
      $Res Function(_$SettingPswResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = freezed,
    Object? status = freezed,
    Object? smsverifi = freezed,
    Object? mima = freezed,
  }) {
    return _then(_$SettingPswResultModelImpl(
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      smsverifi: freezed == smsverifi
          ? _value.smsverifi
          : smsverifi // ignore: cast_nullable_to_non_nullable
              as int?,
      mima: freezed == mima
          ? _value.mima
          : mima // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingPswResultModelImpl implements _SettingPswResultModel {
  const _$SettingPswResultModelImpl(
      {this.msg, this.status, this.smsverifi, this.mima});

  factory _$SettingPswResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingPswResultModelImplFromJson(json);

  @override
  final String? msg;
  @override
  final int? status;
  @override
  final int? smsverifi;
  @override
  final String? mima;

  @override
  String toString() {
    return 'SettingPswResultModel(msg: $msg, status: $status, smsverifi: $smsverifi, mima: $mima)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingPswResultModelImpl &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.smsverifi, smsverifi) ||
                other.smsverifi == smsverifi) &&
            (identical(other.mima, mima) || other.mima == mima));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, msg, status, smsverifi, mima);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingPswResultModelImplCopyWith<_$SettingPswResultModelImpl>
      get copyWith => __$$SettingPswResultModelImplCopyWithImpl<
          _$SettingPswResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingPswResultModelImplToJson(
      this,
    );
  }
}

abstract class _SettingPswResultModel implements SettingPswResultModel {
  const factory _SettingPswResultModel(
      {final String? msg,
      final int? status,
      final int? smsverifi,
      final String? mima}) = _$SettingPswResultModelImpl;

  factory _SettingPswResultModel.fromJson(Map<String, dynamic> json) =
      _$SettingPswResultModelImpl.fromJson;

  @override
  String? get msg;
  @override
  int? get status;
  @override
  int? get smsverifi;
  @override
  String? get mima;
  @override
  @JsonKey(ignore: true)
  _$$SettingPswResultModelImplCopyWith<_$SettingPswResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
