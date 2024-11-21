// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commit_id_card_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommitIdCardResultModel _$CommitIdCardResultModelFromJson(
    Map<String, dynamic> json) {
  return _CommitIdCardResultModel.fromJson(json);
}

/// @nodoc
mixin _$CommitIdCardResultModel {
  int? get status => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommitIdCardResultModelCopyWith<CommitIdCardResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitIdCardResultModelCopyWith<$Res> {
  factory $CommitIdCardResultModelCopyWith(CommitIdCardResultModel value,
          $Res Function(CommitIdCardResultModel) then) =
      _$CommitIdCardResultModelCopyWithImpl<$Res, CommitIdCardResultModel>;
  @useResult
  $Res call({int? status, String? msg});
}

/// @nodoc
class _$CommitIdCardResultModelCopyWithImpl<$Res,
        $Val extends CommitIdCardResultModel>
    implements $CommitIdCardResultModelCopyWith<$Res> {
  _$CommitIdCardResultModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CommitIdCardResultModelImplCopyWith<$Res>
    implements $CommitIdCardResultModelCopyWith<$Res> {
  factory _$$CommitIdCardResultModelImplCopyWith(
          _$CommitIdCardResultModelImpl value,
          $Res Function(_$CommitIdCardResultModelImpl) then) =
      __$$CommitIdCardResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? msg});
}

/// @nodoc
class __$$CommitIdCardResultModelImplCopyWithImpl<$Res>
    extends _$CommitIdCardResultModelCopyWithImpl<$Res,
        _$CommitIdCardResultModelImpl>
    implements _$$CommitIdCardResultModelImplCopyWith<$Res> {
  __$$CommitIdCardResultModelImplCopyWithImpl(
      _$CommitIdCardResultModelImpl _value,
      $Res Function(_$CommitIdCardResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$CommitIdCardResultModelImpl(
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
class _$CommitIdCardResultModelImpl implements _CommitIdCardResultModel {
  const _$CommitIdCardResultModelImpl({this.status, this.msg});

  factory _$CommitIdCardResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommitIdCardResultModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? msg;

  @override
  String toString() {
    return 'CommitIdCardResultModel(status: $status, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommitIdCardResultModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommitIdCardResultModelImplCopyWith<_$CommitIdCardResultModelImpl>
      get copyWith => __$$CommitIdCardResultModelImplCopyWithImpl<
          _$CommitIdCardResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommitIdCardResultModelImplToJson(
      this,
    );
  }
}

abstract class _CommitIdCardResultModel implements CommitIdCardResultModel {
  const factory _CommitIdCardResultModel(
      {final int? status, final String? msg}) = _$CommitIdCardResultModelImpl;

  factory _CommitIdCardResultModel.fromJson(Map<String, dynamic> json) =
      _$CommitIdCardResultModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$CommitIdCardResultModelImplCopyWith<_$CommitIdCardResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
