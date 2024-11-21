// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_in_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckInResult _$CheckInResultFromJson(Map<String, dynamic> json) {
  return _CheckInResult.fromJson(json);
}

/// @nodoc
mixin _$CheckInResult {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  List<int>? get msg => throw _privateConstructorUsedError;
  @JsonKey(name: "rewards")
  List<Reward>? get rewards => throw _privateConstructorUsedError;
  @JsonKey(name: "days")
  int? get days => throw _privateConstructorUsedError;
  @JsonKey(name: "lxqiandao")
  int? get lxqiandao => throw _privateConstructorUsedError;
  @JsonKey(name: "lxqday")
  String? get lxqday => throw _privateConstructorUsedError;
  @JsonKey(name: "resign_times")
  int? get resignTimes => throw _privateConstructorUsedError;
  @JsonKey(name: "resign_from_day")
  int? get resignFromDay => throw _privateConstructorUsedError;
  @JsonKey(name: "member_resign_switch")
  int? get resignSwitch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckInResultCopyWith<CheckInResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInResultCopyWith<$Res> {
  factory $CheckInResultCopyWith(
          CheckInResult value, $Res Function(CheckInResult) then) =
      _$CheckInResultCopyWithImpl<$Res, CheckInResult>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") List<int>? msg,
      @JsonKey(name: "rewards") List<Reward>? rewards,
      @JsonKey(name: "days") int? days,
      @JsonKey(name: "lxqiandao") int? lxqiandao,
      @JsonKey(name: "lxqday") String? lxqday,
      @JsonKey(name: "resign_times") int? resignTimes,
      @JsonKey(name: "resign_from_day") int? resignFromDay,
      @JsonKey(name: "member_resign_switch") int? resignSwitch});
}

/// @nodoc
class _$CheckInResultCopyWithImpl<$Res, $Val extends CheckInResult>
    implements $CheckInResultCopyWith<$Res> {
  _$CheckInResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? rewards = freezed,
    Object? days = freezed,
    Object? lxqiandao = freezed,
    Object? lxqday = freezed,
    Object? resignTimes = freezed,
    Object? resignFromDay = freezed,
    Object? resignSwitch = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      rewards: freezed == rewards
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<Reward>?,
      days: freezed == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int?,
      lxqiandao: freezed == lxqiandao
          ? _value.lxqiandao
          : lxqiandao // ignore: cast_nullable_to_non_nullable
              as int?,
      lxqday: freezed == lxqday
          ? _value.lxqday
          : lxqday // ignore: cast_nullable_to_non_nullable
              as String?,
      resignTimes: freezed == resignTimes
          ? _value.resignTimes
          : resignTimes // ignore: cast_nullable_to_non_nullable
              as int?,
      resignFromDay: freezed == resignFromDay
          ? _value.resignFromDay
          : resignFromDay // ignore: cast_nullable_to_non_nullable
              as int?,
      resignSwitch: freezed == resignSwitch
          ? _value.resignSwitch
          : resignSwitch // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckInResultImplCopyWith<$Res>
    implements $CheckInResultCopyWith<$Res> {
  factory _$$CheckInResultImplCopyWith(
          _$CheckInResultImpl value, $Res Function(_$CheckInResultImpl) then) =
      __$$CheckInResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") List<int>? msg,
      @JsonKey(name: "rewards") List<Reward>? rewards,
      @JsonKey(name: "days") int? days,
      @JsonKey(name: "lxqiandao") int? lxqiandao,
      @JsonKey(name: "lxqday") String? lxqday,
      @JsonKey(name: "resign_times") int? resignTimes,
      @JsonKey(name: "resign_from_day") int? resignFromDay,
      @JsonKey(name: "member_resign_switch") int? resignSwitch});
}

/// @nodoc
class __$$CheckInResultImplCopyWithImpl<$Res>
    extends _$CheckInResultCopyWithImpl<$Res, _$CheckInResultImpl>
    implements _$$CheckInResultImplCopyWith<$Res> {
  __$$CheckInResultImplCopyWithImpl(
      _$CheckInResultImpl _value, $Res Function(_$CheckInResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? rewards = freezed,
    Object? days = freezed,
    Object? lxqiandao = freezed,
    Object? lxqday = freezed,
    Object? resignTimes = freezed,
    Object? resignFromDay = freezed,
    Object? resignSwitch = freezed,
  }) {
    return _then(_$CheckInResultImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value._msg
          : msg // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      rewards: freezed == rewards
          ? _value._rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<Reward>?,
      days: freezed == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int?,
      lxqiandao: freezed == lxqiandao
          ? _value.lxqiandao
          : lxqiandao // ignore: cast_nullable_to_non_nullable
              as int?,
      lxqday: freezed == lxqday
          ? _value.lxqday
          : lxqday // ignore: cast_nullable_to_non_nullable
              as String?,
      resignTimes: freezed == resignTimes
          ? _value.resignTimes
          : resignTimes // ignore: cast_nullable_to_non_nullable
              as int?,
      resignFromDay: freezed == resignFromDay
          ? _value.resignFromDay
          : resignFromDay // ignore: cast_nullable_to_non_nullable
              as int?,
      resignSwitch: freezed == resignSwitch
          ? _value.resignSwitch
          : resignSwitch // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckInResultImpl implements _CheckInResult {
  const _$CheckInResultImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "msg") final List<int>? msg,
      @JsonKey(name: "rewards") final List<Reward>? rewards,
      @JsonKey(name: "days") this.days,
      @JsonKey(name: "lxqiandao") this.lxqiandao,
      @JsonKey(name: "lxqday") this.lxqday,
      @JsonKey(name: "resign_times") this.resignTimes,
      @JsonKey(name: "resign_from_day") this.resignFromDay,
      @JsonKey(name: "member_resign_switch") this.resignSwitch})
      : _msg = msg,
        _rewards = rewards;

  factory _$CheckInResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckInResultImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  final List<int>? _msg;
  @override
  @JsonKey(name: "msg")
  List<int>? get msg {
    final value = _msg;
    if (value == null) return null;
    if (_msg is EqualUnmodifiableListView) return _msg;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Reward>? _rewards;
  @override
  @JsonKey(name: "rewards")
  List<Reward>? get rewards {
    final value = _rewards;
    if (value == null) return null;
    if (_rewards is EqualUnmodifiableListView) return _rewards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "days")
  final int? days;
  @override
  @JsonKey(name: "lxqiandao")
  final int? lxqiandao;
  @override
  @JsonKey(name: "lxqday")
  final String? lxqday;
  @override
  @JsonKey(name: "resign_times")
  final int? resignTimes;
  @override
  @JsonKey(name: "resign_from_day")
  final int? resignFromDay;
  @override
  @JsonKey(name: "member_resign_switch")
  final int? resignSwitch;

  @override
  String toString() {
    return 'CheckInResult(status: $status, msg: $msg, rewards: $rewards, days: $days, lxqiandao: $lxqiandao, lxqday: $lxqday, resignTimes: $resignTimes, resignFromDay: $resignFromDay, resignSwitch: $resignSwitch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckInResultImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._msg, _msg) &&
            const DeepCollectionEquality().equals(other._rewards, _rewards) &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.lxqiandao, lxqiandao) ||
                other.lxqiandao == lxqiandao) &&
            (identical(other.lxqday, lxqday) || other.lxqday == lxqday) &&
            (identical(other.resignTimes, resignTimes) ||
                other.resignTimes == resignTimes) &&
            (identical(other.resignFromDay, resignFromDay) ||
                other.resignFromDay == resignFromDay) &&
            (identical(other.resignSwitch, resignSwitch) ||
                other.resignSwitch == resignSwitch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_msg),
      const DeepCollectionEquality().hash(_rewards),
      days,
      lxqiandao,
      lxqday,
      resignTimes,
      resignFromDay,
      resignSwitch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckInResultImplCopyWith<_$CheckInResultImpl> get copyWith =>
      __$$CheckInResultImplCopyWithImpl<_$CheckInResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckInResultImplToJson(
      this,
    );
  }
}

abstract class _CheckInResult implements CheckInResult {
  const factory _CheckInResult(
          {@JsonKey(name: "status") final int? status,
          @JsonKey(name: "msg") final List<int>? msg,
          @JsonKey(name: "rewards") final List<Reward>? rewards,
          @JsonKey(name: "days") final int? days,
          @JsonKey(name: "lxqiandao") final int? lxqiandao,
          @JsonKey(name: "lxqday") final String? lxqday,
          @JsonKey(name: "resign_times") final int? resignTimes,
          @JsonKey(name: "resign_from_day") final int? resignFromDay,
          @JsonKey(name: "member_resign_switch") final int? resignSwitch}) =
      _$CheckInResultImpl;

  factory _CheckInResult.fromJson(Map<String, dynamic> json) =
      _$CheckInResultImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "msg")
  List<int>? get msg;
  @override
  @JsonKey(name: "rewards")
  List<Reward>? get rewards;
  @override
  @JsonKey(name: "days")
  int? get days;
  @override
  @JsonKey(name: "lxqiandao")
  int? get lxqiandao;
  @override
  @JsonKey(name: "lxqday")
  String? get lxqday;
  @override
  @JsonKey(name: "resign_times")
  int? get resignTimes;
  @override
  @JsonKey(name: "resign_from_day")
  int? get resignFromDay;
  @override
  @JsonKey(name: "member_resign_switch")
  int? get resignSwitch;
  @override
  @JsonKey(ignore: true)
  _$$CheckInResultImplCopyWith<_$CheckInResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Reward _$RewardFromJson(Map<String, dynamic> json) {
  return _Reward.fromJson(json);
}

/// @nodoc
mixin _$Reward {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "days")
  int? get days => throw _privateConstructorUsedError;
  @JsonKey(name: "reward")
  int? get reward => throw _privateConstructorUsedError;
  @JsonKey(name: "sort")
  int? get sort => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardCopyWith<Reward> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardCopyWith<$Res> {
  factory $RewardCopyWith(Reward value, $Res Function(Reward) then) =
      _$RewardCopyWithImpl<$Res, Reward>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "days") int? days,
      @JsonKey(name: "reward") int? reward,
      @JsonKey(name: "sort") int? sort,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$RewardCopyWithImpl<$Res, $Val extends Reward>
    implements $RewardCopyWith<$Res> {
  _$RewardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? days = freezed,
    Object? reward = freezed,
    Object? sort = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      days: freezed == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int?,
      reward: freezed == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RewardImplCopyWith<$Res> implements $RewardCopyWith<$Res> {
  factory _$$RewardImplCopyWith(
          _$RewardImpl value, $Res Function(_$RewardImpl) then) =
      __$$RewardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "days") int? days,
      @JsonKey(name: "reward") int? reward,
      @JsonKey(name: "sort") int? sort,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$$RewardImplCopyWithImpl<$Res>
    extends _$RewardCopyWithImpl<$Res, _$RewardImpl>
    implements _$$RewardImplCopyWith<$Res> {
  __$$RewardImplCopyWithImpl(
      _$RewardImpl _value, $Res Function(_$RewardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? days = freezed,
    Object? reward = freezed,
    Object? sort = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$RewardImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      days: freezed == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int?,
      reward: freezed == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RewardImpl implements _Reward {
  const _$RewardImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "days") this.days,
      @JsonKey(name: "reward") this.reward,
      @JsonKey(name: "sort") this.sort,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$RewardImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "days")
  final int? days;
  @override
  @JsonKey(name: "reward")
  final int? reward;
  @override
  @JsonKey(name: "sort")
  final int? sort;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString() {
    return 'Reward(id: $id, days: $days, reward: $reward, sort: $sort, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.reward, reward) || other.reward == reward) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, days, reward, sort, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardImplCopyWith<_$RewardImpl> get copyWith =>
      __$$RewardImplCopyWithImpl<_$RewardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardImplToJson(
      this,
    );
  }
}

abstract class _Reward implements Reward {
  const factory _Reward(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "days") final int? days,
      @JsonKey(name: "reward") final int? reward,
      @JsonKey(name: "sort") final int? sort,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt}) = _$RewardImpl;

  factory _Reward.fromJson(Map<String, dynamic> json) = _$RewardImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "days")
  int? get days;
  @override
  @JsonKey(name: "reward")
  int? get reward;
  @override
  @JsonKey(name: "sort")
  int? get sort;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$RewardImplCopyWith<_$RewardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
