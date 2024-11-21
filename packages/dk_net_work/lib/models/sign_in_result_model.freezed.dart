// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignInResultModel _$SignInResultModelFromJson(Map<String, dynamic> json) {
  return _SignInResultModel.fromJson(json);
}

/// @nodoc
mixin _$SignInResultModel {
  int get status => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  @JsonKey(name: "save_mi_yao")
  int? get saveMiYao => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignInResultModelCopyWith<SignInResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInResultModelCopyWith<$Res> {
  factory $SignInResultModelCopyWith(
          SignInResultModel value, $Res Function(SignInResultModel) then) =
      _$SignInResultModelCopyWithImpl<$Res, SignInResultModel>;
  @useResult
  $Res call(
      {int status,
      String? msg,
      @JsonKey(name: "save_mi_yao") int? saveMiYao,
      String? token});
}

/// @nodoc
class _$SignInResultModelCopyWithImpl<$Res, $Val extends SignInResultModel>
    implements $SignInResultModelCopyWith<$Res> {
  _$SignInResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? msg = freezed,
    Object? saveMiYao = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      saveMiYao: freezed == saveMiYao
          ? _value.saveMiYao
          : saveMiYao // ignore: cast_nullable_to_non_nullable
              as int?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInResultModelImplCopyWith<$Res>
    implements $SignInResultModelCopyWith<$Res> {
  factory _$$SignInResultModelImplCopyWith(_$SignInResultModelImpl value,
          $Res Function(_$SignInResultModelImpl) then) =
      __$$SignInResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int status,
      String? msg,
      @JsonKey(name: "save_mi_yao") int? saveMiYao,
      String? token});
}

/// @nodoc
class __$$SignInResultModelImplCopyWithImpl<$Res>
    extends _$SignInResultModelCopyWithImpl<$Res, _$SignInResultModelImpl>
    implements _$$SignInResultModelImplCopyWith<$Res> {
  __$$SignInResultModelImplCopyWithImpl(_$SignInResultModelImpl _value,
      $Res Function(_$SignInResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? msg = freezed,
    Object? saveMiYao = freezed,
    Object? token = freezed,
  }) {
    return _then(_$SignInResultModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      saveMiYao: freezed == saveMiYao
          ? _value.saveMiYao
          : saveMiYao // ignore: cast_nullable_to_non_nullable
              as int?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInResultModelImpl implements _SignInResultModel {
  const _$SignInResultModelImpl(
      {required this.status,
      this.msg,
      @JsonKey(name: "save_mi_yao") this.saveMiYao,
      this.token});

  factory _$SignInResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInResultModelImplFromJson(json);

  @override
  final int status;
  @override
  final String? msg;
  @override
  @JsonKey(name: "save_mi_yao")
  final int? saveMiYao;
  @override
  final String? token;

  @override
  String toString() {
    return 'SignInResultModel(status: $status, msg: $msg, saveMiYao: $saveMiYao, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInResultModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.saveMiYao, saveMiYao) ||
                other.saveMiYao == saveMiYao) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, msg, saveMiYao, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInResultModelImplCopyWith<_$SignInResultModelImpl> get copyWith =>
      __$$SignInResultModelImplCopyWithImpl<_$SignInResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInResultModelImplToJson(
      this,
    );
  }
}

abstract class _SignInResultModel implements SignInResultModel {
  const factory _SignInResultModel(
      {required final int status,
      final String? msg,
      @JsonKey(name: "save_mi_yao") final int? saveMiYao,
      final String? token}) = _$SignInResultModelImpl;

  factory _SignInResultModel.fromJson(Map<String, dynamic> json) =
      _$SignInResultModelImpl.fromJson;

  @override
  int get status;
  @override
  String? get msg;
  @override
  @JsonKey(name: "save_mi_yao")
  int? get saveMiYao;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$SignInResultModelImplCopyWith<_$SignInResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
