// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lottery_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LotteryResultModel _$LotteryResultModelFromJson(Map<String, dynamic> json) {
  return _LotteryResultModel.fromJson(json);
}

/// @nodoc
mixin _$LotteryResultModel {
  @JsonKey(name: "state")
  int? get state => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  String? get msg => throw _privateConstructorUsedError;
  @JsonKey(name: "index")
  int? get index => throw _privateConstructorUsedError;
  @JsonKey(name: "levelwheels")
  int? get levelwheels => throw _privateConstructorUsedError;
  @JsonKey(name: "clicks")
  int? get clicks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LotteryResultModelCopyWith<LotteryResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotteryResultModelCopyWith<$Res> {
  factory $LotteryResultModelCopyWith(
          LotteryResultModel value, $Res Function(LotteryResultModel) then) =
      _$LotteryResultModelCopyWithImpl<$Res, LotteryResultModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "state") int? state,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "index") int? index,
      @JsonKey(name: "levelwheels") int? levelwheels,
      @JsonKey(name: "clicks") int? clicks});
}

/// @nodoc
class _$LotteryResultModelCopyWithImpl<$Res, $Val extends LotteryResultModel>
    implements $LotteryResultModelCopyWith<$Res> {
  _$LotteryResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? status = freezed,
    Object? msg = freezed,
    Object? index = freezed,
    Object? levelwheels = freezed,
    Object? clicks = freezed,
  }) {
    return _then(_value.copyWith(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      levelwheels: freezed == levelwheels
          ? _value.levelwheels
          : levelwheels // ignore: cast_nullable_to_non_nullable
              as int?,
      clicks: freezed == clicks
          ? _value.clicks
          : clicks // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LotteryResultModelImplCopyWith<$Res>
    implements $LotteryResultModelCopyWith<$Res> {
  factory _$$LotteryResultModelImplCopyWith(_$LotteryResultModelImpl value,
          $Res Function(_$LotteryResultModelImpl) then) =
      __$$LotteryResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "state") int? state,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "index") int? index,
      @JsonKey(name: "levelwheels") int? levelwheels,
      @JsonKey(name: "clicks") int? clicks});
}

/// @nodoc
class __$$LotteryResultModelImplCopyWithImpl<$Res>
    extends _$LotteryResultModelCopyWithImpl<$Res, _$LotteryResultModelImpl>
    implements _$$LotteryResultModelImplCopyWith<$Res> {
  __$$LotteryResultModelImplCopyWithImpl(_$LotteryResultModelImpl _value,
      $Res Function(_$LotteryResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? status = freezed,
    Object? msg = freezed,
    Object? index = freezed,
    Object? levelwheels = freezed,
    Object? clicks = freezed,
  }) {
    return _then(_$LotteryResultModelImpl(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
      levelwheels: freezed == levelwheels
          ? _value.levelwheels
          : levelwheels // ignore: cast_nullable_to_non_nullable
              as int?,
      clicks: freezed == clicks
          ? _value.clicks
          : clicks // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LotteryResultModelImpl implements _LotteryResultModel {
  const _$LotteryResultModelImpl(
      {@JsonKey(name: "state") this.state,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "msg") this.msg,
      @JsonKey(name: "index") this.index,
      @JsonKey(name: "levelwheels") this.levelwheels,
      @JsonKey(name: "clicks") this.clicks});

  factory _$LotteryResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotteryResultModelImplFromJson(json);

  @override
  @JsonKey(name: "state")
  final int? state;
  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "msg")
  final String? msg;
  @override
  @JsonKey(name: "index")
  final int? index;
  @override
  @JsonKey(name: "levelwheels")
  final int? levelwheels;
  @override
  @JsonKey(name: "clicks")
  final int? clicks;

  @override
  String toString() {
    return 'LotteryResultModel(state: $state, status: $status, msg: $msg, index: $index, levelwheels: $levelwheels, clicks: $clicks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotteryResultModelImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.levelwheels, levelwheels) ||
                other.levelwheels == levelwheels) &&
            (identical(other.clicks, clicks) || other.clicks == clicks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, state, status, msg, index, levelwheels, clicks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotteryResultModelImplCopyWith<_$LotteryResultModelImpl> get copyWith =>
      __$$LotteryResultModelImplCopyWithImpl<_$LotteryResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotteryResultModelImplToJson(
      this,
    );
  }
}

abstract class _LotteryResultModel implements LotteryResultModel {
  const factory _LotteryResultModel(
      {@JsonKey(name: "state") final int? state,
      @JsonKey(name: "status") final int? status,
      @JsonKey(name: "msg") final String? msg,
      @JsonKey(name: "index") final int? index,
      @JsonKey(name: "levelwheels") final int? levelwheels,
      @JsonKey(name: "clicks") final int? clicks}) = _$LotteryResultModelImpl;

  factory _LotteryResultModel.fromJson(Map<String, dynamic> json) =
      _$LotteryResultModelImpl.fromJson;

  @override
  @JsonKey(name: "state")
  int? get state;
  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "msg")
  String? get msg;
  @override
  @JsonKey(name: "index")
  int? get index;
  @override
  @JsonKey(name: "levelwheels")
  int? get levelwheels;
  @override
  @JsonKey(name: "clicks")
  int? get clicks;
  @override
  @JsonKey(ignore: true)
  _$$LotteryResultModelImplCopyWith<_$LotteryResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
