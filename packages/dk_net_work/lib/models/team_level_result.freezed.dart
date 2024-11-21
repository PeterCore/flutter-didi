// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_level_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TeamLevelResult _$TeamLevelResultFromJson(Map<String, dynamic> json) {
  return _TeamLevelResult.fromJson(json);
}

/// @nodoc
mixin _$TeamLevelResult {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  List<Nextlevel>? get list => throw _privateConstructorUsedError;
  @JsonKey(name: "lastteams")
  int? get lastteams => throw _privateConstructorUsedError;
  @JsonKey(name: "Currentlevel")
  Currentlevel? get currentlevel => throw _privateConstructorUsedError;
  @JsonKey(name: "nextlevel")
  Nextlevel? get nextlevel => throw _privateConstructorUsedError;
  @JsonKey(name: "config")
  TeamLevelConfig? get config => throw _privateConstructorUsedError;
  @JsonKey(name: "teamshuoming")
  String? get teamshuoming => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamLevelResultCopyWith<TeamLevelResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamLevelResultCopyWith<$Res> {
  factory $TeamLevelResultCopyWith(
          TeamLevelResult value, $Res Function(TeamLevelResult) then) =
      _$TeamLevelResultCopyWithImpl<$Res, TeamLevelResult>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "list") List<Nextlevel>? list,
      @JsonKey(name: "lastteams") int? lastteams,
      @JsonKey(name: "Currentlevel") Currentlevel? currentlevel,
      @JsonKey(name: "nextlevel") Nextlevel? nextlevel,
      @JsonKey(name: "config") TeamLevelConfig? config,
      @JsonKey(name: "teamshuoming") String? teamshuoming});

  $CurrentlevelCopyWith<$Res>? get currentlevel;
  $NextlevelCopyWith<$Res>? get nextlevel;
  $TeamLevelConfigCopyWith<$Res>? get config;
}

/// @nodoc
class _$TeamLevelResultCopyWithImpl<$Res, $Val extends TeamLevelResult>
    implements $TeamLevelResultCopyWith<$Res> {
  _$TeamLevelResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
    Object? lastteams = freezed,
    Object? currentlevel = freezed,
    Object? nextlevel = freezed,
    Object? config = freezed,
    Object? teamshuoming = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Nextlevel>?,
      lastteams: freezed == lastteams
          ? _value.lastteams
          : lastteams // ignore: cast_nullable_to_non_nullable
              as int?,
      currentlevel: freezed == currentlevel
          ? _value.currentlevel
          : currentlevel // ignore: cast_nullable_to_non_nullable
              as Currentlevel?,
      nextlevel: freezed == nextlevel
          ? _value.nextlevel
          : nextlevel // ignore: cast_nullable_to_non_nullable
              as Nextlevel?,
      config: freezed == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as TeamLevelConfig?,
      teamshuoming: freezed == teamshuoming
          ? _value.teamshuoming
          : teamshuoming // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentlevelCopyWith<$Res>? get currentlevel {
    if (_value.currentlevel == null) {
      return null;
    }

    return $CurrentlevelCopyWith<$Res>(_value.currentlevel!, (value) {
      return _then(_value.copyWith(currentlevel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NextlevelCopyWith<$Res>? get nextlevel {
    if (_value.nextlevel == null) {
      return null;
    }

    return $NextlevelCopyWith<$Res>(_value.nextlevel!, (value) {
      return _then(_value.copyWith(nextlevel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamLevelConfigCopyWith<$Res>? get config {
    if (_value.config == null) {
      return null;
    }

    return $TeamLevelConfigCopyWith<$Res>(_value.config!, (value) {
      return _then(_value.copyWith(config: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TeamLevelResultImplCopyWith<$Res>
    implements $TeamLevelResultCopyWith<$Res> {
  factory _$$TeamLevelResultImplCopyWith(_$TeamLevelResultImpl value,
          $Res Function(_$TeamLevelResultImpl) then) =
      __$$TeamLevelResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "list") List<Nextlevel>? list,
      @JsonKey(name: "lastteams") int? lastteams,
      @JsonKey(name: "Currentlevel") Currentlevel? currentlevel,
      @JsonKey(name: "nextlevel") Nextlevel? nextlevel,
      @JsonKey(name: "config") TeamLevelConfig? config,
      @JsonKey(name: "teamshuoming") String? teamshuoming});

  @override
  $CurrentlevelCopyWith<$Res>? get currentlevel;
  @override
  $NextlevelCopyWith<$Res>? get nextlevel;
  @override
  $TeamLevelConfigCopyWith<$Res>? get config;
}

/// @nodoc
class __$$TeamLevelResultImplCopyWithImpl<$Res>
    extends _$TeamLevelResultCopyWithImpl<$Res, _$TeamLevelResultImpl>
    implements _$$TeamLevelResultImplCopyWith<$Res> {
  __$$TeamLevelResultImplCopyWithImpl(
      _$TeamLevelResultImpl _value, $Res Function(_$TeamLevelResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
    Object? lastteams = freezed,
    Object? currentlevel = freezed,
    Object? nextlevel = freezed,
    Object? config = freezed,
    Object? teamshuoming = freezed,
  }) {
    return _then(_$TeamLevelResultImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Nextlevel>?,
      lastteams: freezed == lastteams
          ? _value.lastteams
          : lastteams // ignore: cast_nullable_to_non_nullable
              as int?,
      currentlevel: freezed == currentlevel
          ? _value.currentlevel
          : currentlevel // ignore: cast_nullable_to_non_nullable
              as Currentlevel?,
      nextlevel: freezed == nextlevel
          ? _value.nextlevel
          : nextlevel // ignore: cast_nullable_to_non_nullable
              as Nextlevel?,
      config: freezed == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as TeamLevelConfig?,
      teamshuoming: freezed == teamshuoming
          ? _value.teamshuoming
          : teamshuoming // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TeamLevelResultImpl implements _TeamLevelResult {
  const _$TeamLevelResultImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "list") final List<Nextlevel>? list,
      @JsonKey(name: "lastteams") this.lastteams,
      @JsonKey(name: "Currentlevel") this.currentlevel,
      @JsonKey(name: "nextlevel") this.nextlevel,
      @JsonKey(name: "config") this.config,
      @JsonKey(name: "teamshuoming") this.teamshuoming})
      : _list = list;

  factory _$TeamLevelResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$TeamLevelResultImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  final List<Nextlevel>? _list;
  @override
  @JsonKey(name: "list")
  List<Nextlevel>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "lastteams")
  final int? lastteams;
  @override
  @JsonKey(name: "Currentlevel")
  final Currentlevel? currentlevel;
  @override
  @JsonKey(name: "nextlevel")
  final Nextlevel? nextlevel;
  @override
  @JsonKey(name: "config")
  final TeamLevelConfig? config;
  @override
  @JsonKey(name: "teamshuoming")
  final String? teamshuoming;

  @override
  String toString() {
    return 'TeamLevelResult(status: $status, list: $list, lastteams: $lastteams, currentlevel: $currentlevel, nextlevel: $nextlevel, config: $config, teamshuoming: $teamshuoming)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeamLevelResultImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.lastteams, lastteams) ||
                other.lastteams == lastteams) &&
            (identical(other.currentlevel, currentlevel) ||
                other.currentlevel == currentlevel) &&
            (identical(other.nextlevel, nextlevel) ||
                other.nextlevel == nextlevel) &&
            (identical(other.config, config) || other.config == config) &&
            (identical(other.teamshuoming, teamshuoming) ||
                other.teamshuoming == teamshuoming));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_list),
      lastteams,
      currentlevel,
      nextlevel,
      config,
      teamshuoming);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeamLevelResultImplCopyWith<_$TeamLevelResultImpl> get copyWith =>
      __$$TeamLevelResultImplCopyWithImpl<_$TeamLevelResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TeamLevelResultImplToJson(
      this,
    );
  }
}

abstract class _TeamLevelResult implements TeamLevelResult {
  const factory _TeamLevelResult(
          {@JsonKey(name: "status") final int? status,
          @JsonKey(name: "list") final List<Nextlevel>? list,
          @JsonKey(name: "lastteams") final int? lastteams,
          @JsonKey(name: "Currentlevel") final Currentlevel? currentlevel,
          @JsonKey(name: "nextlevel") final Nextlevel? nextlevel,
          @JsonKey(name: "config") final TeamLevelConfig? config,
          @JsonKey(name: "teamshuoming") final String? teamshuoming}) =
      _$TeamLevelResultImpl;

  factory _TeamLevelResult.fromJson(Map<String, dynamic> json) =
      _$TeamLevelResultImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "list")
  List<Nextlevel>? get list;
  @override
  @JsonKey(name: "lastteams")
  int? get lastteams;
  @override
  @JsonKey(name: "Currentlevel")
  Currentlevel? get currentlevel;
  @override
  @JsonKey(name: "nextlevel")
  Nextlevel? get nextlevel;
  @override
  @JsonKey(name: "config")
  TeamLevelConfig? get config;
  @override
  @JsonKey(name: "teamshuoming")
  String? get teamshuoming;
  @override
  @JsonKey(ignore: true)
  _$$TeamLevelResultImplCopyWith<_$TeamLevelResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Currentlevel _$CurrentlevelFromJson(Map<String, dynamic> json) {
  return _Currentlevel.fromJson(json);
}

/// @nodoc
mixin _$Currentlevel {
  @JsonKey(name: "onetzrs")
  int? get onetzrs => throw _privateConstructorUsedError;
  @JsonKey(name: "twozrs")
  int? get twozrs => throw _privateConstructorUsedError;
  @JsonKey(name: "threezrs")
  int? get threezrs => throw _privateConstructorUsedError;
  @JsonKey(name: "fourzrs")
  int? get fourzrs => throw _privateConstructorUsedError;
  @JsonKey(name: "fivezrs")
  int? get fivezrs => throw _privateConstructorUsedError;
  @JsonKey(name: "totlttzmoeny")
  String? get totlttzmoeny => throw _privateConstructorUsedError;
  @JsonKey(name: "totltzrs")
  int? get totltzrs => throw _privateConstructorUsedError;
  @JsonKey(name: "teamsmoney")
  String? get teamsmoney => throw _privateConstructorUsedError;
  @JsonKey(name: "teamstotleren")
  int? get teamstotleren => throw _privateConstructorUsedError;
  @JsonKey(name: "selfmoney")
  String? get selfmoney => throw _privateConstructorUsedError;
  @JsonKey(name: "agentname")
  String? get agentname => throw _privateConstructorUsedError;
  @JsonKey(name: "myteams")
  int? get myteams => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentlevelCopyWith<Currentlevel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentlevelCopyWith<$Res> {
  factory $CurrentlevelCopyWith(
          Currentlevel value, $Res Function(Currentlevel) then) =
      _$CurrentlevelCopyWithImpl<$Res, Currentlevel>;
  @useResult
  $Res call(
      {@JsonKey(name: "onetzrs") int? onetzrs,
      @JsonKey(name: "twozrs") int? twozrs,
      @JsonKey(name: "threezrs") int? threezrs,
      @JsonKey(name: "fourzrs") int? fourzrs,
      @JsonKey(name: "fivezrs") int? fivezrs,
      @JsonKey(name: "totlttzmoeny") String? totlttzmoeny,
      @JsonKey(name: "totltzrs") int? totltzrs,
      @JsonKey(name: "teamsmoney") String? teamsmoney,
      @JsonKey(name: "teamstotleren") int? teamstotleren,
      @JsonKey(name: "selfmoney") String? selfmoney,
      @JsonKey(name: "agentname") String? agentname,
      @JsonKey(name: "myteams") int? myteams});
}

/// @nodoc
class _$CurrentlevelCopyWithImpl<$Res, $Val extends Currentlevel>
    implements $CurrentlevelCopyWith<$Res> {
  _$CurrentlevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onetzrs = freezed,
    Object? twozrs = freezed,
    Object? threezrs = freezed,
    Object? fourzrs = freezed,
    Object? fivezrs = freezed,
    Object? totlttzmoeny = freezed,
    Object? totltzrs = freezed,
    Object? teamsmoney = freezed,
    Object? teamstotleren = freezed,
    Object? selfmoney = freezed,
    Object? agentname = freezed,
    Object? myteams = freezed,
  }) {
    return _then(_value.copyWith(
      onetzrs: freezed == onetzrs
          ? _value.onetzrs
          : onetzrs // ignore: cast_nullable_to_non_nullable
              as int?,
      twozrs: freezed == twozrs
          ? _value.twozrs
          : twozrs // ignore: cast_nullable_to_non_nullable
              as int?,
      threezrs: freezed == threezrs
          ? _value.threezrs
          : threezrs // ignore: cast_nullable_to_non_nullable
              as int?,
      fourzrs: freezed == fourzrs
          ? _value.fourzrs
          : fourzrs // ignore: cast_nullable_to_non_nullable
              as int?,
      fivezrs: freezed == fivezrs
          ? _value.fivezrs
          : fivezrs // ignore: cast_nullable_to_non_nullable
              as int?,
      totlttzmoeny: freezed == totlttzmoeny
          ? _value.totlttzmoeny
          : totlttzmoeny // ignore: cast_nullable_to_non_nullable
              as String?,
      totltzrs: freezed == totltzrs
          ? _value.totltzrs
          : totltzrs // ignore: cast_nullable_to_non_nullable
              as int?,
      teamsmoney: freezed == teamsmoney
          ? _value.teamsmoney
          : teamsmoney // ignore: cast_nullable_to_non_nullable
              as String?,
      teamstotleren: freezed == teamstotleren
          ? _value.teamstotleren
          : teamstotleren // ignore: cast_nullable_to_non_nullable
              as int?,
      selfmoney: freezed == selfmoney
          ? _value.selfmoney
          : selfmoney // ignore: cast_nullable_to_non_nullable
              as String?,
      agentname: freezed == agentname
          ? _value.agentname
          : agentname // ignore: cast_nullable_to_non_nullable
              as String?,
      myteams: freezed == myteams
          ? _value.myteams
          : myteams // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentlevelImplCopyWith<$Res>
    implements $CurrentlevelCopyWith<$Res> {
  factory _$$CurrentlevelImplCopyWith(
          _$CurrentlevelImpl value, $Res Function(_$CurrentlevelImpl) then) =
      __$$CurrentlevelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "onetzrs") int? onetzrs,
      @JsonKey(name: "twozrs") int? twozrs,
      @JsonKey(name: "threezrs") int? threezrs,
      @JsonKey(name: "fourzrs") int? fourzrs,
      @JsonKey(name: "fivezrs") int? fivezrs,
      @JsonKey(name: "totlttzmoeny") String? totlttzmoeny,
      @JsonKey(name: "totltzrs") int? totltzrs,
      @JsonKey(name: "teamsmoney") String? teamsmoney,
      @JsonKey(name: "teamstotleren") int? teamstotleren,
      @JsonKey(name: "selfmoney") String? selfmoney,
      @JsonKey(name: "agentname") String? agentname,
      @JsonKey(name: "myteams") int? myteams});
}

/// @nodoc
class __$$CurrentlevelImplCopyWithImpl<$Res>
    extends _$CurrentlevelCopyWithImpl<$Res, _$CurrentlevelImpl>
    implements _$$CurrentlevelImplCopyWith<$Res> {
  __$$CurrentlevelImplCopyWithImpl(
      _$CurrentlevelImpl _value, $Res Function(_$CurrentlevelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onetzrs = freezed,
    Object? twozrs = freezed,
    Object? threezrs = freezed,
    Object? fourzrs = freezed,
    Object? fivezrs = freezed,
    Object? totlttzmoeny = freezed,
    Object? totltzrs = freezed,
    Object? teamsmoney = freezed,
    Object? teamstotleren = freezed,
    Object? selfmoney = freezed,
    Object? agentname = freezed,
    Object? myteams = freezed,
  }) {
    return _then(_$CurrentlevelImpl(
      onetzrs: freezed == onetzrs
          ? _value.onetzrs
          : onetzrs // ignore: cast_nullable_to_non_nullable
              as int?,
      twozrs: freezed == twozrs
          ? _value.twozrs
          : twozrs // ignore: cast_nullable_to_non_nullable
              as int?,
      threezrs: freezed == threezrs
          ? _value.threezrs
          : threezrs // ignore: cast_nullable_to_non_nullable
              as int?,
      fourzrs: freezed == fourzrs
          ? _value.fourzrs
          : fourzrs // ignore: cast_nullable_to_non_nullable
              as int?,
      fivezrs: freezed == fivezrs
          ? _value.fivezrs
          : fivezrs // ignore: cast_nullable_to_non_nullable
              as int?,
      totlttzmoeny: freezed == totlttzmoeny
          ? _value.totlttzmoeny
          : totlttzmoeny // ignore: cast_nullable_to_non_nullable
              as String?,
      totltzrs: freezed == totltzrs
          ? _value.totltzrs
          : totltzrs // ignore: cast_nullable_to_non_nullable
              as int?,
      teamsmoney: freezed == teamsmoney
          ? _value.teamsmoney
          : teamsmoney // ignore: cast_nullable_to_non_nullable
              as String?,
      teamstotleren: freezed == teamstotleren
          ? _value.teamstotleren
          : teamstotleren // ignore: cast_nullable_to_non_nullable
              as int?,
      selfmoney: freezed == selfmoney
          ? _value.selfmoney
          : selfmoney // ignore: cast_nullable_to_non_nullable
              as String?,
      agentname: freezed == agentname
          ? _value.agentname
          : agentname // ignore: cast_nullable_to_non_nullable
              as String?,
      myteams: freezed == myteams
          ? _value.myteams
          : myteams // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentlevelImpl implements _Currentlevel {
  const _$CurrentlevelImpl(
      {@JsonKey(name: "onetzrs") this.onetzrs,
      @JsonKey(name: "twozrs") this.twozrs,
      @JsonKey(name: "threezrs") this.threezrs,
      @JsonKey(name: "fourzrs") this.fourzrs,
      @JsonKey(name: "fivezrs") this.fivezrs,
      @JsonKey(name: "totlttzmoeny") this.totlttzmoeny,
      @JsonKey(name: "totltzrs") this.totltzrs,
      @JsonKey(name: "teamsmoney") this.teamsmoney,
      @JsonKey(name: "teamstotleren") this.teamstotleren,
      @JsonKey(name: "selfmoney") this.selfmoney,
      @JsonKey(name: "agentname") this.agentname,
      @JsonKey(name: "myteams") this.myteams});

  factory _$CurrentlevelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentlevelImplFromJson(json);

  @override
  @JsonKey(name: "onetzrs")
  final int? onetzrs;
  @override
  @JsonKey(name: "twozrs")
  final int? twozrs;
  @override
  @JsonKey(name: "threezrs")
  final int? threezrs;
  @override
  @JsonKey(name: "fourzrs")
  final int? fourzrs;
  @override
  @JsonKey(name: "fivezrs")
  final int? fivezrs;
  @override
  @JsonKey(name: "totlttzmoeny")
  final String? totlttzmoeny;
  @override
  @JsonKey(name: "totltzrs")
  final int? totltzrs;
  @override
  @JsonKey(name: "teamsmoney")
  final String? teamsmoney;
  @override
  @JsonKey(name: "teamstotleren")
  final int? teamstotleren;
  @override
  @JsonKey(name: "selfmoney")
  final String? selfmoney;
  @override
  @JsonKey(name: "agentname")
  final String? agentname;
  @override
  @JsonKey(name: "myteams")
  final int? myteams;

  @override
  String toString() {
    return 'Currentlevel(onetzrs: $onetzrs, twozrs: $twozrs, threezrs: $threezrs, fourzrs: $fourzrs, fivezrs: $fivezrs, totlttzmoeny: $totlttzmoeny, totltzrs: $totltzrs, teamsmoney: $teamsmoney, teamstotleren: $teamstotleren, selfmoney: $selfmoney, agentname: $agentname, myteams: $myteams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentlevelImpl &&
            (identical(other.onetzrs, onetzrs) || other.onetzrs == onetzrs) &&
            (identical(other.twozrs, twozrs) || other.twozrs == twozrs) &&
            (identical(other.threezrs, threezrs) ||
                other.threezrs == threezrs) &&
            (identical(other.fourzrs, fourzrs) || other.fourzrs == fourzrs) &&
            (identical(other.fivezrs, fivezrs) || other.fivezrs == fivezrs) &&
            (identical(other.totlttzmoeny, totlttzmoeny) ||
                other.totlttzmoeny == totlttzmoeny) &&
            (identical(other.totltzrs, totltzrs) ||
                other.totltzrs == totltzrs) &&
            (identical(other.teamsmoney, teamsmoney) ||
                other.teamsmoney == teamsmoney) &&
            (identical(other.teamstotleren, teamstotleren) ||
                other.teamstotleren == teamstotleren) &&
            (identical(other.selfmoney, selfmoney) ||
                other.selfmoney == selfmoney) &&
            (identical(other.agentname, agentname) ||
                other.agentname == agentname) &&
            (identical(other.myteams, myteams) || other.myteams == myteams));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      onetzrs,
      twozrs,
      threezrs,
      fourzrs,
      fivezrs,
      totlttzmoeny,
      totltzrs,
      teamsmoney,
      teamstotleren,
      selfmoney,
      agentname,
      myteams);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentlevelImplCopyWith<_$CurrentlevelImpl> get copyWith =>
      __$$CurrentlevelImplCopyWithImpl<_$CurrentlevelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentlevelImplToJson(
      this,
    );
  }
}

abstract class _Currentlevel implements Currentlevel {
  const factory _Currentlevel(
      {@JsonKey(name: "onetzrs") final int? onetzrs,
      @JsonKey(name: "twozrs") final int? twozrs,
      @JsonKey(name: "threezrs") final int? threezrs,
      @JsonKey(name: "fourzrs") final int? fourzrs,
      @JsonKey(name: "fivezrs") final int? fivezrs,
      @JsonKey(name: "totlttzmoeny") final String? totlttzmoeny,
      @JsonKey(name: "totltzrs") final int? totltzrs,
      @JsonKey(name: "teamsmoney") final String? teamsmoney,
      @JsonKey(name: "teamstotleren") final int? teamstotleren,
      @JsonKey(name: "selfmoney") final String? selfmoney,
      @JsonKey(name: "agentname") final String? agentname,
      @JsonKey(name: "myteams") final int? myteams}) = _$CurrentlevelImpl;

  factory _Currentlevel.fromJson(Map<String, dynamic> json) =
      _$CurrentlevelImpl.fromJson;

  @override
  @JsonKey(name: "onetzrs")
  int? get onetzrs;
  @override
  @JsonKey(name: "twozrs")
  int? get twozrs;
  @override
  @JsonKey(name: "threezrs")
  int? get threezrs;
  @override
  @JsonKey(name: "fourzrs")
  int? get fourzrs;
  @override
  @JsonKey(name: "fivezrs")
  int? get fivezrs;
  @override
  @JsonKey(name: "totlttzmoeny")
  String? get totlttzmoeny;
  @override
  @JsonKey(name: "totltzrs")
  int? get totltzrs;
  @override
  @JsonKey(name: "teamsmoney")
  String? get teamsmoney;
  @override
  @JsonKey(name: "teamstotleren")
  int? get teamstotleren;
  @override
  @JsonKey(name: "selfmoney")
  String? get selfmoney;
  @override
  @JsonKey(name: "agentname")
  String? get agentname;
  @override
  @JsonKey(name: "myteams")
  int? get myteams;
  @override
  @JsonKey(ignore: true)
  _$$CurrentlevelImplCopyWith<_$CurrentlevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Nextlevel _$NextlevelFromJson(Map<String, dynamic> json) {
  return _Nextlevel.fromJson(json);
}

/// @nodoc
mixin _$Nextlevel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "rate")
  double? get rate => throw _privateConstructorUsedError;
  @JsonKey(name: "inte")
  double? get inte => throw _privateConstructorUsedError;
  @JsonKey(name: "onezrs")
  int? get onezrs => throw _privateConstructorUsedError;
  @JsonKey(name: "threezrs")
  int? get threezrs => throw _privateConstructorUsedError;
  @JsonKey(name: "fivezrs")
  int? get fivezrs => throw _privateConstructorUsedError;
  @JsonKey(name: "fourzrs")
  int? get fourzrs => throw _privateConstructorUsedError;
  @JsonKey(name: "twouzrs")
  int? get twouzrs => throw _privateConstructorUsedError;
  @JsonKey(name: "totlttzmoeny")
  double? get totlttzmoeny => throw _privateConstructorUsedError;
  @JsonKey(name: "totltzrs")
  int? get totltzrs => throw _privateConstructorUsedError;
  @JsonKey(name: "teamsmoney")
  int? get teamsmoney => throw _privateConstructorUsedError;
  @JsonKey(name: "teamspercent")
  double? get teamspercent => throw _privateConstructorUsedError;
  @JsonKey(name: "teamstotleren")
  int? get teamstotleren => throw _privateConstructorUsedError;
  @JsonKey(name: "uplervermoney")
  double? get uplervermoney => throw _privateConstructorUsedError;
  @JsonKey(name: "selfmoney")
  double? get selfmoney => throw _privateConstructorUsedError;
  @JsonKey(name: "salary")
  double? get salary => throw _privateConstructorUsedError;
  @JsonKey(name: "mark")
  String? get mark => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NextlevelCopyWith<Nextlevel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NextlevelCopyWith<$Res> {
  factory $NextlevelCopyWith(Nextlevel value, $Res Function(Nextlevel) then) =
      _$NextlevelCopyWithImpl<$Res, Nextlevel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "rate") double? rate,
      @JsonKey(name: "inte") double? inte,
      @JsonKey(name: "onezrs") int? onezrs,
      @JsonKey(name: "threezrs") int? threezrs,
      @JsonKey(name: "fivezrs") int? fivezrs,
      @JsonKey(name: "fourzrs") int? fourzrs,
      @JsonKey(name: "twouzrs") int? twouzrs,
      @JsonKey(name: "totlttzmoeny") double? totlttzmoeny,
      @JsonKey(name: "totltzrs") int? totltzrs,
      @JsonKey(name: "teamsmoney") int? teamsmoney,
      @JsonKey(name: "teamspercent") double? teamspercent,
      @JsonKey(name: "teamstotleren") int? teamstotleren,
      @JsonKey(name: "uplervermoney") double? uplervermoney,
      @JsonKey(name: "selfmoney") double? selfmoney,
      @JsonKey(name: "salary") double? salary,
      @JsonKey(name: "mark") String? mark,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$NextlevelCopyWithImpl<$Res, $Val extends Nextlevel>
    implements $NextlevelCopyWith<$Res> {
  _$NextlevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? rate = freezed,
    Object? inte = freezed,
    Object? onezrs = freezed,
    Object? threezrs = freezed,
    Object? fivezrs = freezed,
    Object? fourzrs = freezed,
    Object? twouzrs = freezed,
    Object? totlttzmoeny = freezed,
    Object? totltzrs = freezed,
    Object? teamsmoney = freezed,
    Object? teamspercent = freezed,
    Object? teamstotleren = freezed,
    Object? uplervermoney = freezed,
    Object? selfmoney = freezed,
    Object? salary = freezed,
    Object? mark = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      inte: freezed == inte
          ? _value.inte
          : inte // ignore: cast_nullable_to_non_nullable
              as double?,
      onezrs: freezed == onezrs
          ? _value.onezrs
          : onezrs // ignore: cast_nullable_to_non_nullable
              as int?,
      threezrs: freezed == threezrs
          ? _value.threezrs
          : threezrs // ignore: cast_nullable_to_non_nullable
              as int?,
      fivezrs: freezed == fivezrs
          ? _value.fivezrs
          : fivezrs // ignore: cast_nullable_to_non_nullable
              as int?,
      fourzrs: freezed == fourzrs
          ? _value.fourzrs
          : fourzrs // ignore: cast_nullable_to_non_nullable
              as int?,
      twouzrs: freezed == twouzrs
          ? _value.twouzrs
          : twouzrs // ignore: cast_nullable_to_non_nullable
              as int?,
      totlttzmoeny: freezed == totlttzmoeny
          ? _value.totlttzmoeny
          : totlttzmoeny // ignore: cast_nullable_to_non_nullable
              as double?,
      totltzrs: freezed == totltzrs
          ? _value.totltzrs
          : totltzrs // ignore: cast_nullable_to_non_nullable
              as int?,
      teamsmoney: freezed == teamsmoney
          ? _value.teamsmoney
          : teamsmoney // ignore: cast_nullable_to_non_nullable
              as int?,
      teamspercent: freezed == teamspercent
          ? _value.teamspercent
          : teamspercent // ignore: cast_nullable_to_non_nullable
              as double?,
      teamstotleren: freezed == teamstotleren
          ? _value.teamstotleren
          : teamstotleren // ignore: cast_nullable_to_non_nullable
              as int?,
      uplervermoney: freezed == uplervermoney
          ? _value.uplervermoney
          : uplervermoney // ignore: cast_nullable_to_non_nullable
              as double?,
      selfmoney: freezed == selfmoney
          ? _value.selfmoney
          : selfmoney // ignore: cast_nullable_to_non_nullable
              as double?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double?,
      mark: freezed == mark
          ? _value.mark
          : mark // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$NextlevelImplCopyWith<$Res>
    implements $NextlevelCopyWith<$Res> {
  factory _$$NextlevelImplCopyWith(
          _$NextlevelImpl value, $Res Function(_$NextlevelImpl) then) =
      __$$NextlevelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "rate") double? rate,
      @JsonKey(name: "inte") double? inte,
      @JsonKey(name: "onezrs") int? onezrs,
      @JsonKey(name: "threezrs") int? threezrs,
      @JsonKey(name: "fivezrs") int? fivezrs,
      @JsonKey(name: "fourzrs") int? fourzrs,
      @JsonKey(name: "twouzrs") int? twouzrs,
      @JsonKey(name: "totlttzmoeny") double? totlttzmoeny,
      @JsonKey(name: "totltzrs") int? totltzrs,
      @JsonKey(name: "teamsmoney") int? teamsmoney,
      @JsonKey(name: "teamspercent") double? teamspercent,
      @JsonKey(name: "teamstotleren") int? teamstotleren,
      @JsonKey(name: "uplervermoney") double? uplervermoney,
      @JsonKey(name: "selfmoney") double? selfmoney,
      @JsonKey(name: "salary") double? salary,
      @JsonKey(name: "mark") String? mark,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$$NextlevelImplCopyWithImpl<$Res>
    extends _$NextlevelCopyWithImpl<$Res, _$NextlevelImpl>
    implements _$$NextlevelImplCopyWith<$Res> {
  __$$NextlevelImplCopyWithImpl(
      _$NextlevelImpl _value, $Res Function(_$NextlevelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? rate = freezed,
    Object? inte = freezed,
    Object? onezrs = freezed,
    Object? threezrs = freezed,
    Object? fivezrs = freezed,
    Object? fourzrs = freezed,
    Object? twouzrs = freezed,
    Object? totlttzmoeny = freezed,
    Object? totltzrs = freezed,
    Object? teamsmoney = freezed,
    Object? teamspercent = freezed,
    Object? teamstotleren = freezed,
    Object? uplervermoney = freezed,
    Object? selfmoney = freezed,
    Object? salary = freezed,
    Object? mark = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$NextlevelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
      inte: freezed == inte
          ? _value.inte
          : inte // ignore: cast_nullable_to_non_nullable
              as double?,
      onezrs: freezed == onezrs
          ? _value.onezrs
          : onezrs // ignore: cast_nullable_to_non_nullable
              as int?,
      threezrs: freezed == threezrs
          ? _value.threezrs
          : threezrs // ignore: cast_nullable_to_non_nullable
              as int?,
      fivezrs: freezed == fivezrs
          ? _value.fivezrs
          : fivezrs // ignore: cast_nullable_to_non_nullable
              as int?,
      fourzrs: freezed == fourzrs
          ? _value.fourzrs
          : fourzrs // ignore: cast_nullable_to_non_nullable
              as int?,
      twouzrs: freezed == twouzrs
          ? _value.twouzrs
          : twouzrs // ignore: cast_nullable_to_non_nullable
              as int?,
      totlttzmoeny: freezed == totlttzmoeny
          ? _value.totlttzmoeny
          : totlttzmoeny // ignore: cast_nullable_to_non_nullable
              as double?,
      totltzrs: freezed == totltzrs
          ? _value.totltzrs
          : totltzrs // ignore: cast_nullable_to_non_nullable
              as int?,
      teamsmoney: freezed == teamsmoney
          ? _value.teamsmoney
          : teamsmoney // ignore: cast_nullable_to_non_nullable
              as int?,
      teamspercent: freezed == teamspercent
          ? _value.teamspercent
          : teamspercent // ignore: cast_nullable_to_non_nullable
              as double?,
      teamstotleren: freezed == teamstotleren
          ? _value.teamstotleren
          : teamstotleren // ignore: cast_nullable_to_non_nullable
              as int?,
      uplervermoney: freezed == uplervermoney
          ? _value.uplervermoney
          : uplervermoney // ignore: cast_nullable_to_non_nullable
              as double?,
      selfmoney: freezed == selfmoney
          ? _value.selfmoney
          : selfmoney // ignore: cast_nullable_to_non_nullable
              as double?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as double?,
      mark: freezed == mark
          ? _value.mark
          : mark // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$NextlevelImpl implements _Nextlevel {
  const _$NextlevelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "rate") this.rate,
      @JsonKey(name: "inte") this.inte,
      @JsonKey(name: "onezrs") this.onezrs,
      @JsonKey(name: "threezrs") this.threezrs,
      @JsonKey(name: "fivezrs") this.fivezrs,
      @JsonKey(name: "fourzrs") this.fourzrs,
      @JsonKey(name: "twouzrs") this.twouzrs,
      @JsonKey(name: "totlttzmoeny") this.totlttzmoeny,
      @JsonKey(name: "totltzrs") this.totltzrs,
      @JsonKey(name: "teamsmoney") this.teamsmoney,
      @JsonKey(name: "teamspercent") this.teamspercent,
      @JsonKey(name: "teamstotleren") this.teamstotleren,
      @JsonKey(name: "uplervermoney") this.uplervermoney,
      @JsonKey(name: "selfmoney") this.selfmoney,
      @JsonKey(name: "salary") this.salary,
      @JsonKey(name: "mark") this.mark,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$NextlevelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NextlevelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "rate")
  final double? rate;
  @override
  @JsonKey(name: "inte")
  final double? inte;
  @override
  @JsonKey(name: "onezrs")
  final int? onezrs;
  @override
  @JsonKey(name: "threezrs")
  final int? threezrs;
  @override
  @JsonKey(name: "fivezrs")
  final int? fivezrs;
  @override
  @JsonKey(name: "fourzrs")
  final int? fourzrs;
  @override
  @JsonKey(name: "twouzrs")
  final int? twouzrs;
  @override
  @JsonKey(name: "totlttzmoeny")
  final double? totlttzmoeny;
  @override
  @JsonKey(name: "totltzrs")
  final int? totltzrs;
  @override
  @JsonKey(name: "teamsmoney")
  final int? teamsmoney;
  @override
  @JsonKey(name: "teamspercent")
  final double? teamspercent;
  @override
  @JsonKey(name: "teamstotleren")
  final int? teamstotleren;
  @override
  @JsonKey(name: "uplervermoney")
  final double? uplervermoney;
  @override
  @JsonKey(name: "selfmoney")
  final double? selfmoney;
  @override
  @JsonKey(name: "salary")
  final double? salary;
  @override
  @JsonKey(name: "mark")
  final String? mark;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString() {
    return 'Nextlevel(id: $id, name: $name, rate: $rate, inte: $inte, onezrs: $onezrs, threezrs: $threezrs, fivezrs: $fivezrs, fourzrs: $fourzrs, twouzrs: $twouzrs, totlttzmoeny: $totlttzmoeny, totltzrs: $totltzrs, teamsmoney: $teamsmoney, teamspercent: $teamspercent, teamstotleren: $teamstotleren, uplervermoney: $uplervermoney, selfmoney: $selfmoney, salary: $salary, mark: $mark, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextlevelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.inte, inte) || other.inte == inte) &&
            (identical(other.onezrs, onezrs) || other.onezrs == onezrs) &&
            (identical(other.threezrs, threezrs) ||
                other.threezrs == threezrs) &&
            (identical(other.fivezrs, fivezrs) || other.fivezrs == fivezrs) &&
            (identical(other.fourzrs, fourzrs) || other.fourzrs == fourzrs) &&
            (identical(other.twouzrs, twouzrs) || other.twouzrs == twouzrs) &&
            (identical(other.totlttzmoeny, totlttzmoeny) ||
                other.totlttzmoeny == totlttzmoeny) &&
            (identical(other.totltzrs, totltzrs) ||
                other.totltzrs == totltzrs) &&
            (identical(other.teamsmoney, teamsmoney) ||
                other.teamsmoney == teamsmoney) &&
            (identical(other.teamspercent, teamspercent) ||
                other.teamspercent == teamspercent) &&
            (identical(other.teamstotleren, teamstotleren) ||
                other.teamstotleren == teamstotleren) &&
            (identical(other.uplervermoney, uplervermoney) ||
                other.uplervermoney == uplervermoney) &&
            (identical(other.selfmoney, selfmoney) ||
                other.selfmoney == selfmoney) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.mark, mark) || other.mark == mark) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        rate,
        inte,
        onezrs,
        threezrs,
        fivezrs,
        fourzrs,
        twouzrs,
        totlttzmoeny,
        totltzrs,
        teamsmoney,
        teamspercent,
        teamstotleren,
        uplervermoney,
        selfmoney,
        salary,
        mark,
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NextlevelImplCopyWith<_$NextlevelImpl> get copyWith =>
      __$$NextlevelImplCopyWithImpl<_$NextlevelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NextlevelImplToJson(
      this,
    );
  }
}

abstract class _Nextlevel implements Nextlevel {
  const factory _Nextlevel(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "rate") final double? rate,
      @JsonKey(name: "inte") final double? inte,
      @JsonKey(name: "onezrs") final int? onezrs,
      @JsonKey(name: "threezrs") final int? threezrs,
      @JsonKey(name: "fivezrs") final int? fivezrs,
      @JsonKey(name: "fourzrs") final int? fourzrs,
      @JsonKey(name: "twouzrs") final int? twouzrs,
      @JsonKey(name: "totlttzmoeny") final double? totlttzmoeny,
      @JsonKey(name: "totltzrs") final int? totltzrs,
      @JsonKey(name: "teamsmoney") final int? teamsmoney,
      @JsonKey(name: "teamspercent") final double? teamspercent,
      @JsonKey(name: "teamstotleren") final int? teamstotleren,
      @JsonKey(name: "uplervermoney") final double? uplervermoney,
      @JsonKey(name: "selfmoney") final double? selfmoney,
      @JsonKey(name: "salary") final double? salary,
      @JsonKey(name: "mark") final String? mark,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt}) = _$NextlevelImpl;

  factory _Nextlevel.fromJson(Map<String, dynamic> json) =
      _$NextlevelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "rate")
  double? get rate;
  @override
  @JsonKey(name: "inte")
  double? get inte;
  @override
  @JsonKey(name: "onezrs")
  int? get onezrs;
  @override
  @JsonKey(name: "threezrs")
  int? get threezrs;
  @override
  @JsonKey(name: "fivezrs")
  int? get fivezrs;
  @override
  @JsonKey(name: "fourzrs")
  int? get fourzrs;
  @override
  @JsonKey(name: "twouzrs")
  int? get twouzrs;
  @override
  @JsonKey(name: "totlttzmoeny")
  double? get totlttzmoeny;
  @override
  @JsonKey(name: "totltzrs")
  int? get totltzrs;
  @override
  @JsonKey(name: "teamsmoney")
  int? get teamsmoney;
  @override
  @JsonKey(name: "teamspercent")
  double? get teamspercent;
  @override
  @JsonKey(name: "teamstotleren")
  int? get teamstotleren;
  @override
  @JsonKey(name: "uplervermoney")
  double? get uplervermoney;
  @override
  @JsonKey(name: "selfmoney")
  double? get selfmoney;
  @override
  @JsonKey(name: "salary")
  double? get salary;
  @override
  @JsonKey(name: "mark")
  String? get mark;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$NextlevelImplCopyWith<_$NextlevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
