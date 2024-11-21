// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_image_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadImageResultModel _$UploadImageResultModelFromJson(
    Map<String, dynamic> json) {
  return _UploadImageResultModel.fromJson(json);
}

/// @nodoc
mixin _$UploadImageResultModel {
  int? get status => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  String? get src => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadImageResultModelCopyWith<UploadImageResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadImageResultModelCopyWith<$Res> {
  factory $UploadImageResultModelCopyWith(UploadImageResultModel value,
          $Res Function(UploadImageResultModel) then) =
      _$UploadImageResultModelCopyWithImpl<$Res, UploadImageResultModel>;
  @useResult
  $Res call({int? status, String? msg, String? src});
}

/// @nodoc
class _$UploadImageResultModelCopyWithImpl<$Res,
        $Val extends UploadImageResultModel>
    implements $UploadImageResultModelCopyWith<$Res> {
  _$UploadImageResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? src = freezed,
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
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadImageResultModelImplCopyWith<$Res>
    implements $UploadImageResultModelCopyWith<$Res> {
  factory _$$UploadImageResultModelImplCopyWith(
          _$UploadImageResultModelImpl value,
          $Res Function(_$UploadImageResultModelImpl) then) =
      __$$UploadImageResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? msg, String? src});
}

/// @nodoc
class __$$UploadImageResultModelImplCopyWithImpl<$Res>
    extends _$UploadImageResultModelCopyWithImpl<$Res,
        _$UploadImageResultModelImpl>
    implements _$$UploadImageResultModelImplCopyWith<$Res> {
  __$$UploadImageResultModelImplCopyWithImpl(
      _$UploadImageResultModelImpl _value,
      $Res Function(_$UploadImageResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? src = freezed,
  }) {
    return _then(_$UploadImageResultModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadImageResultModelImpl implements _UploadImageResultModel {
  const _$UploadImageResultModelImpl({this.status, this.msg, this.src});

  factory _$UploadImageResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadImageResultModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? msg;
  @override
  final String? src;

  @override
  String toString() {
    return 'UploadImageResultModel(status: $status, msg: $msg, src: $src)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImageResultModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.src, src) || other.src == src));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, msg, src);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImageResultModelImplCopyWith<_$UploadImageResultModelImpl>
      get copyWith => __$$UploadImageResultModelImplCopyWithImpl<
          _$UploadImageResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadImageResultModelImplToJson(
      this,
    );
  }
}

abstract class _UploadImageResultModel implements UploadImageResultModel {
  const factory _UploadImageResultModel(
      {final int? status,
      final String? msg,
      final String? src}) = _$UploadImageResultModelImpl;

  factory _UploadImageResultModel.fromJson(Map<String, dynamic> json) =
      _$UploadImageResultModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get msg;
  @override
  String? get src;
  @override
  @JsonKey(ignore: true)
  _$$UploadImageResultModelImplCopyWith<_$UploadImageResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
