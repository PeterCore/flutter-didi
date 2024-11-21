// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResultModel _$BaseResultModelFromJson(Map<String, dynamic> json) {
  return _BaseResultModel.fromJson(json);
}

/// @nodoc
mixin _$BaseResultModel {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  String? get msg => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseResultModelCopyWith<BaseResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResultModelCopyWith<$Res> {
  factory $BaseResultModelCopyWith(
          BaseResultModel value, $Res Function(BaseResultModel) then) =
      _$BaseResultModelCopyWithImpl<$Res, BaseResultModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "data") Map<String, dynamic>? data});
}

/// @nodoc
class _$BaseResultModelCopyWithImpl<$Res, $Val extends BaseResultModel>
    implements $BaseResultModelCopyWith<$Res> {
  _$BaseResultModelCopyWithImpl(this._value, this._then);

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
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResultModelImplCopyWith<$Res>
    implements $BaseResultModelCopyWith<$Res> {
  factory _$$BaseResultModelImplCopyWith(_$BaseResultModelImpl value,
          $Res Function(_$BaseResultModelImpl) then) =
      __$$BaseResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "data") Map<String, dynamic>? data});
}

/// @nodoc
class __$$BaseResultModelImplCopyWithImpl<$Res>
    extends _$BaseResultModelCopyWithImpl<$Res, _$BaseResultModelImpl>
    implements _$$BaseResultModelImplCopyWith<$Res> {
  __$$BaseResultModelImplCopyWithImpl(
      _$BaseResultModelImpl _value, $Res Function(_$BaseResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResultModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseResultModelImpl implements _BaseResultModel {
  const _$BaseResultModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "msg") this.msg,
      @JsonKey(name: "data") final Map<String, dynamic>? data})
      : _data = data;

  factory _$BaseResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseResultModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "msg")
  final String? msg;
  final Map<String, dynamic>? _data;
  @override
  @JsonKey(name: "data")
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'BaseResultModel(status: $status, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResultModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, msg, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResultModelImplCopyWith<_$BaseResultModelImpl> get copyWith =>
      __$$BaseResultModelImplCopyWithImpl<_$BaseResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResultModelImplToJson(
      this,
    );
  }
}

abstract class _BaseResultModel implements BaseResultModel {
  const factory _BaseResultModel(
          {@JsonKey(name: "status") final int? status,
          @JsonKey(name: "msg") final String? msg,
          @JsonKey(name: "data") final Map<String, dynamic>? data}) =
      _$BaseResultModelImpl;

  factory _BaseResultModel.fromJson(Map<String, dynamic> json) =
      _$BaseResultModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "msg")
  String? get msg;
  @override
  @JsonKey(name: "data")
  Map<String, dynamic>? get data;
  @override
  @JsonKey(ignore: true)
  _$$BaseResultModelImplCopyWith<_$BaseResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
