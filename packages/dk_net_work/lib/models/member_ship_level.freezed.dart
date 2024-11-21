// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_ship_level.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemberShipLevel _$MemberShipLevelFromJson(Map<String, dynamic> json) {
  return _MemberShipLevel.fromJson(json);
}

/// @nodoc
mixin _$MemberShipLevel {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  List<ListElement>? get list => throw _privateConstructorUsedError;
  @JsonKey(name: "level")
  String? get level => throw _privateConstructorUsedError;
  @JsonKey(name: "lastlevel")
  int? get lastlevel => throw _privateConstructorUsedError;
  @JsonKey(name: "mylevel")
  int? get mylevel => throw _privateConstructorUsedError;
  @JsonKey(name: "touzi")
  String? get touzi => throw _privateConstructorUsedError;
  @JsonKey(name: "buymoney")
  String? get buymoney => throw _privateConstructorUsedError;
  @JsonKey(name: "number")
  int? get number => throw _privateConstructorUsedError;
  @JsonKey(name: "selfnumber")
  int? get selfnumber => throw _privateConstructorUsedError;
  @JsonKey(name: "salary")
  int? get salary => throw _privateConstructorUsedError;
  @JsonKey(name: "config")
  Config? get config => throw _privateConstructorUsedError;
  @JsonKey(name: "vipshuoming")
  String? get vipshuoming => throw _privateConstructorUsedError;
  @JsonKey(name: "invite_min_invest_amount")
  String? get inviteMinInvestAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberShipLevelCopyWith<MemberShipLevel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberShipLevelCopyWith<$Res> {
  factory $MemberShipLevelCopyWith(
          MemberShipLevel value, $Res Function(MemberShipLevel) then) =
      _$MemberShipLevelCopyWithImpl<$Res, MemberShipLevel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "list") List<ListElement>? list,
      @JsonKey(name: "level") String? level,
      @JsonKey(name: "lastlevel") int? lastlevel,
      @JsonKey(name: "mylevel") int? mylevel,
      @JsonKey(name: "touzi") String? touzi,
      @JsonKey(name: "buymoney") String? buymoney,
      @JsonKey(name: "number") int? number,
      @JsonKey(name: "selfnumber") int? selfnumber,
      @JsonKey(name: "salary") int? salary,
      @JsonKey(name: "config") Config? config,
      @JsonKey(name: "vipshuoming") String? vipshuoming,
      @JsonKey(name: "invite_min_invest_amount")
      String? inviteMinInvestAmount});

  $ConfigCopyWith<$Res>? get config;
}

/// @nodoc
class _$MemberShipLevelCopyWithImpl<$Res, $Val extends MemberShipLevel>
    implements $MemberShipLevelCopyWith<$Res> {
  _$MemberShipLevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
    Object? level = freezed,
    Object? lastlevel = freezed,
    Object? mylevel = freezed,
    Object? touzi = freezed,
    Object? buymoney = freezed,
    Object? number = freezed,
    Object? selfnumber = freezed,
    Object? salary = freezed,
    Object? config = freezed,
    Object? vipshuoming = freezed,
    Object? inviteMinInvestAmount = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ListElement>?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      lastlevel: freezed == lastlevel
          ? _value.lastlevel
          : lastlevel // ignore: cast_nullable_to_non_nullable
              as int?,
      mylevel: freezed == mylevel
          ? _value.mylevel
          : mylevel // ignore: cast_nullable_to_non_nullable
              as int?,
      touzi: freezed == touzi
          ? _value.touzi
          : touzi // ignore: cast_nullable_to_non_nullable
              as String?,
      buymoney: freezed == buymoney
          ? _value.buymoney
          : buymoney // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      selfnumber: freezed == selfnumber
          ? _value.selfnumber
          : selfnumber // ignore: cast_nullable_to_non_nullable
              as int?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as int?,
      config: freezed == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as Config?,
      vipshuoming: freezed == vipshuoming
          ? _value.vipshuoming
          : vipshuoming // ignore: cast_nullable_to_non_nullable
              as String?,
      inviteMinInvestAmount: freezed == inviteMinInvestAmount
          ? _value.inviteMinInvestAmount
          : inviteMinInvestAmount // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConfigCopyWith<$Res>? get config {
    if (_value.config == null) {
      return null;
    }

    return $ConfigCopyWith<$Res>(_value.config!, (value) {
      return _then(_value.copyWith(config: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MemberShipLevelImplCopyWith<$Res>
    implements $MemberShipLevelCopyWith<$Res> {
  factory _$$MemberShipLevelImplCopyWith(_$MemberShipLevelImpl value,
          $Res Function(_$MemberShipLevelImpl) then) =
      __$$MemberShipLevelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "list") List<ListElement>? list,
      @JsonKey(name: "level") String? level,
      @JsonKey(name: "lastlevel") int? lastlevel,
      @JsonKey(name: "mylevel") int? mylevel,
      @JsonKey(name: "touzi") String? touzi,
      @JsonKey(name: "buymoney") String? buymoney,
      @JsonKey(name: "number") int? number,
      @JsonKey(name: "selfnumber") int? selfnumber,
      @JsonKey(name: "salary") int? salary,
      @JsonKey(name: "config") Config? config,
      @JsonKey(name: "vipshuoming") String? vipshuoming,
      @JsonKey(name: "invite_min_invest_amount")
      String? inviteMinInvestAmount});

  @override
  $ConfigCopyWith<$Res>? get config;
}

/// @nodoc
class __$$MemberShipLevelImplCopyWithImpl<$Res>
    extends _$MemberShipLevelCopyWithImpl<$Res, _$MemberShipLevelImpl>
    implements _$$MemberShipLevelImplCopyWith<$Res> {
  __$$MemberShipLevelImplCopyWithImpl(
      _$MemberShipLevelImpl _value, $Res Function(_$MemberShipLevelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
    Object? level = freezed,
    Object? lastlevel = freezed,
    Object? mylevel = freezed,
    Object? touzi = freezed,
    Object? buymoney = freezed,
    Object? number = freezed,
    Object? selfnumber = freezed,
    Object? salary = freezed,
    Object? config = freezed,
    Object? vipshuoming = freezed,
    Object? inviteMinInvestAmount = freezed,
  }) {
    return _then(_$MemberShipLevelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ListElement>?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      lastlevel: freezed == lastlevel
          ? _value.lastlevel
          : lastlevel // ignore: cast_nullable_to_non_nullable
              as int?,
      mylevel: freezed == mylevel
          ? _value.mylevel
          : mylevel // ignore: cast_nullable_to_non_nullable
              as int?,
      touzi: freezed == touzi
          ? _value.touzi
          : touzi // ignore: cast_nullable_to_non_nullable
              as String?,
      buymoney: freezed == buymoney
          ? _value.buymoney
          : buymoney // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      selfnumber: freezed == selfnumber
          ? _value.selfnumber
          : selfnumber // ignore: cast_nullable_to_non_nullable
              as int?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as int?,
      config: freezed == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as Config?,
      vipshuoming: freezed == vipshuoming
          ? _value.vipshuoming
          : vipshuoming // ignore: cast_nullable_to_non_nullable
              as String?,
      inviteMinInvestAmount: freezed == inviteMinInvestAmount
          ? _value.inviteMinInvestAmount
          : inviteMinInvestAmount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberShipLevelImpl implements _MemberShipLevel {
  const _$MemberShipLevelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "list") final List<ListElement>? list,
      @JsonKey(name: "level") this.level,
      @JsonKey(name: "lastlevel") this.lastlevel,
      @JsonKey(name: "mylevel") this.mylevel,
      @JsonKey(name: "touzi") this.touzi,
      @JsonKey(name: "buymoney") this.buymoney,
      @JsonKey(name: "number") this.number,
      @JsonKey(name: "selfnumber") this.selfnumber,
      @JsonKey(name: "salary") this.salary,
      @JsonKey(name: "config") this.config,
      @JsonKey(name: "vipshuoming") this.vipshuoming,
      @JsonKey(name: "invite_min_invest_amount") this.inviteMinInvestAmount})
      : _list = list;

  factory _$MemberShipLevelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberShipLevelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  final List<ListElement>? _list;
  @override
  @JsonKey(name: "list")
  List<ListElement>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "level")
  final String? level;
  @override
  @JsonKey(name: "lastlevel")
  final int? lastlevel;
  @override
  @JsonKey(name: "mylevel")
  final int? mylevel;
  @override
  @JsonKey(name: "touzi")
  final String? touzi;
  @override
  @JsonKey(name: "buymoney")
  final String? buymoney;
  @override
  @JsonKey(name: "number")
  final int? number;
  @override
  @JsonKey(name: "selfnumber")
  final int? selfnumber;
  @override
  @JsonKey(name: "salary")
  final int? salary;
  @override
  @JsonKey(name: "config")
  final Config? config;
  @override
  @JsonKey(name: "vipshuoming")
  final String? vipshuoming;
  @override
  @JsonKey(name: "invite_min_invest_amount")
  final String? inviteMinInvestAmount;

  @override
  String toString() {
    return 'MemberShipLevel(status: $status, list: $list, level: $level, lastlevel: $lastlevel, mylevel: $mylevel, touzi: $touzi, buymoney: $buymoney, number: $number, selfnumber: $selfnumber, salary: $salary, config: $config, vipshuoming: $vipshuoming, inviteMinInvestAmount: $inviteMinInvestAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberShipLevelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.lastlevel, lastlevel) ||
                other.lastlevel == lastlevel) &&
            (identical(other.mylevel, mylevel) || other.mylevel == mylevel) &&
            (identical(other.touzi, touzi) || other.touzi == touzi) &&
            (identical(other.buymoney, buymoney) ||
                other.buymoney == buymoney) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.selfnumber, selfnumber) ||
                other.selfnumber == selfnumber) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.config, config) || other.config == config) &&
            (identical(other.vipshuoming, vipshuoming) ||
                other.vipshuoming == vipshuoming) &&
            (identical(other.inviteMinInvestAmount, inviteMinInvestAmount) ||
                other.inviteMinInvestAmount == inviteMinInvestAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_list),
      level,
      lastlevel,
      mylevel,
      touzi,
      buymoney,
      number,
      selfnumber,
      salary,
      config,
      vipshuoming,
      inviteMinInvestAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberShipLevelImplCopyWith<_$MemberShipLevelImpl> get copyWith =>
      __$$MemberShipLevelImplCopyWithImpl<_$MemberShipLevelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberShipLevelImplToJson(
      this,
    );
  }
}

abstract class _MemberShipLevel implements MemberShipLevel {
  const factory _MemberShipLevel(
      {@JsonKey(name: "status") final int? status,
      @JsonKey(name: "list") final List<ListElement>? list,
      @JsonKey(name: "level") final String? level,
      @JsonKey(name: "lastlevel") final int? lastlevel,
      @JsonKey(name: "mylevel") final int? mylevel,
      @JsonKey(name: "touzi") final String? touzi,
      @JsonKey(name: "buymoney") final String? buymoney,
      @JsonKey(name: "number") final int? number,
      @JsonKey(name: "selfnumber") final int? selfnumber,
      @JsonKey(name: "salary") final int? salary,
      @JsonKey(name: "config") final Config? config,
      @JsonKey(name: "vipshuoming") final String? vipshuoming,
      @JsonKey(name: "invite_min_invest_amount")
      final String? inviteMinInvestAmount}) = _$MemberShipLevelImpl;

  factory _MemberShipLevel.fromJson(Map<String, dynamic> json) =
      _$MemberShipLevelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "list")
  List<ListElement>? get list;
  @override
  @JsonKey(name: "level")
  String? get level;
  @override
  @JsonKey(name: "lastlevel")
  int? get lastlevel;
  @override
  @JsonKey(name: "mylevel")
  int? get mylevel;
  @override
  @JsonKey(name: "touzi")
  String? get touzi;
  @override
  @JsonKey(name: "buymoney")
  String? get buymoney;
  @override
  @JsonKey(name: "number")
  int? get number;
  @override
  @JsonKey(name: "selfnumber")
  int? get selfnumber;
  @override
  @JsonKey(name: "salary")
  int? get salary;
  @override
  @JsonKey(name: "config")
  Config? get config;
  @override
  @JsonKey(name: "vipshuoming")
  String? get vipshuoming;
  @override
  @JsonKey(name: "invite_min_invest_amount")
  String? get inviteMinInvestAmount;
  @override
  @JsonKey(ignore: true)
  _$$MemberShipLevelImplCopyWith<_$MemberShipLevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Config _$ConfigFromJson(Map<String, dynamic> json) {
  return _Config.fromJson(json);
}

/// @nodoc
mixin _$Config {
  @JsonKey(name: "member_next")
  int? get memberNext => throw _privateConstructorUsedError;
  @JsonKey(name: "member_qiandao")
  int? get memberQiandao => throw _privateConstructorUsedError;
  @JsonKey(name: "member_lxqiandao")
  int? get memberLxqiandao => throw _privateConstructorUsedError;
  @JsonKey(name: "member_salary")
  int? get memberSalary => throw _privateConstructorUsedError;
  @JsonKey(name: "member_salarydata")
  int? get memberSalarydata => throw _privateConstructorUsedError;
  @JsonKey(name: "member_lxqday")
  int? get memberLxqday => throw _privateConstructorUsedError;
  @JsonKey(name: "member_daysalary")
  int? get memberDaysalary => throw _privateConstructorUsedError;
  @JsonKey(name: "member_resign_switch")
  int? get memberResignSwitch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigCopyWith<Config> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigCopyWith<$Res> {
  factory $ConfigCopyWith(Config value, $Res Function(Config) then) =
      _$ConfigCopyWithImpl<$Res, Config>;
  @useResult
  $Res call(
      {@JsonKey(name: "member_next") int? memberNext,
      @JsonKey(name: "member_qiandao") int? memberQiandao,
      @JsonKey(name: "member_lxqiandao") int? memberLxqiandao,
      @JsonKey(name: "member_salary") int? memberSalary,
      @JsonKey(name: "member_salarydata") int? memberSalarydata,
      @JsonKey(name: "member_lxqday") int? memberLxqday,
      @JsonKey(name: "member_daysalary") int? memberDaysalary,
      @JsonKey(name: "member_resign_switch") int? memberResignSwitch});
}

/// @nodoc
class _$ConfigCopyWithImpl<$Res, $Val extends Config>
    implements $ConfigCopyWith<$Res> {
  _$ConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberNext = freezed,
    Object? memberQiandao = freezed,
    Object? memberLxqiandao = freezed,
    Object? memberSalary = freezed,
    Object? memberSalarydata = freezed,
    Object? memberLxqday = freezed,
    Object? memberDaysalary = freezed,
    Object? memberResignSwitch = freezed,
  }) {
    return _then(_value.copyWith(
      memberNext: freezed == memberNext
          ? _value.memberNext
          : memberNext // ignore: cast_nullable_to_non_nullable
              as int?,
      memberQiandao: freezed == memberQiandao
          ? _value.memberQiandao
          : memberQiandao // ignore: cast_nullable_to_non_nullable
              as int?,
      memberLxqiandao: freezed == memberLxqiandao
          ? _value.memberLxqiandao
          : memberLxqiandao // ignore: cast_nullable_to_non_nullable
              as int?,
      memberSalary: freezed == memberSalary
          ? _value.memberSalary
          : memberSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      memberSalarydata: freezed == memberSalarydata
          ? _value.memberSalarydata
          : memberSalarydata // ignore: cast_nullable_to_non_nullable
              as int?,
      memberLxqday: freezed == memberLxqday
          ? _value.memberLxqday
          : memberLxqday // ignore: cast_nullable_to_non_nullable
              as int?,
      memberDaysalary: freezed == memberDaysalary
          ? _value.memberDaysalary
          : memberDaysalary // ignore: cast_nullable_to_non_nullable
              as int?,
      memberResignSwitch: freezed == memberResignSwitch
          ? _value.memberResignSwitch
          : memberResignSwitch // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfigImplCopyWith<$Res> implements $ConfigCopyWith<$Res> {
  factory _$$ConfigImplCopyWith(
          _$ConfigImpl value, $Res Function(_$ConfigImpl) then) =
      __$$ConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "member_next") int? memberNext,
      @JsonKey(name: "member_qiandao") int? memberQiandao,
      @JsonKey(name: "member_lxqiandao") int? memberLxqiandao,
      @JsonKey(name: "member_salary") int? memberSalary,
      @JsonKey(name: "member_salarydata") int? memberSalarydata,
      @JsonKey(name: "member_lxqday") int? memberLxqday,
      @JsonKey(name: "member_daysalary") int? memberDaysalary,
      @JsonKey(name: "member_resign_switch") int? memberResignSwitch});
}

/// @nodoc
class __$$ConfigImplCopyWithImpl<$Res>
    extends _$ConfigCopyWithImpl<$Res, _$ConfigImpl>
    implements _$$ConfigImplCopyWith<$Res> {
  __$$ConfigImplCopyWithImpl(
      _$ConfigImpl _value, $Res Function(_$ConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberNext = freezed,
    Object? memberQiandao = freezed,
    Object? memberLxqiandao = freezed,
    Object? memberSalary = freezed,
    Object? memberSalarydata = freezed,
    Object? memberLxqday = freezed,
    Object? memberDaysalary = freezed,
    Object? memberResignSwitch = freezed,
  }) {
    return _then(_$ConfigImpl(
      memberNext: freezed == memberNext
          ? _value.memberNext
          : memberNext // ignore: cast_nullable_to_non_nullable
              as int?,
      memberQiandao: freezed == memberQiandao
          ? _value.memberQiandao
          : memberQiandao // ignore: cast_nullable_to_non_nullable
              as int?,
      memberLxqiandao: freezed == memberLxqiandao
          ? _value.memberLxqiandao
          : memberLxqiandao // ignore: cast_nullable_to_non_nullable
              as int?,
      memberSalary: freezed == memberSalary
          ? _value.memberSalary
          : memberSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      memberSalarydata: freezed == memberSalarydata
          ? _value.memberSalarydata
          : memberSalarydata // ignore: cast_nullable_to_non_nullable
              as int?,
      memberLxqday: freezed == memberLxqday
          ? _value.memberLxqday
          : memberLxqday // ignore: cast_nullable_to_non_nullable
              as int?,
      memberDaysalary: freezed == memberDaysalary
          ? _value.memberDaysalary
          : memberDaysalary // ignore: cast_nullable_to_non_nullable
              as int?,
      memberResignSwitch: freezed == memberResignSwitch
          ? _value.memberResignSwitch
          : memberResignSwitch // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfigImpl implements _Config {
  const _$ConfigImpl(
      {@JsonKey(name: "member_next") this.memberNext,
      @JsonKey(name: "member_qiandao") this.memberQiandao,
      @JsonKey(name: "member_lxqiandao") this.memberLxqiandao,
      @JsonKey(name: "member_salary") this.memberSalary,
      @JsonKey(name: "member_salarydata") this.memberSalarydata,
      @JsonKey(name: "member_lxqday") this.memberLxqday,
      @JsonKey(name: "member_daysalary") this.memberDaysalary,
      @JsonKey(name: "member_resign_switch") this.memberResignSwitch});

  factory _$ConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfigImplFromJson(json);

  @override
  @JsonKey(name: "member_next")
  final int? memberNext;
  @override
  @JsonKey(name: "member_qiandao")
  final int? memberQiandao;
  @override
  @JsonKey(name: "member_lxqiandao")
  final int? memberLxqiandao;
  @override
  @JsonKey(name: "member_salary")
  final int? memberSalary;
  @override
  @JsonKey(name: "member_salarydata")
  final int? memberSalarydata;
  @override
  @JsonKey(name: "member_lxqday")
  final int? memberLxqday;
  @override
  @JsonKey(name: "member_daysalary")
  final int? memberDaysalary;
  @override
  @JsonKey(name: "member_resign_switch")
  final int? memberResignSwitch;

  @override
  String toString() {
    return 'Config(memberNext: $memberNext, memberQiandao: $memberQiandao, memberLxqiandao: $memberLxqiandao, memberSalary: $memberSalary, memberSalarydata: $memberSalarydata, memberLxqday: $memberLxqday, memberDaysalary: $memberDaysalary, memberResignSwitch: $memberResignSwitch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfigImpl &&
            (identical(other.memberNext, memberNext) ||
                other.memberNext == memberNext) &&
            (identical(other.memberQiandao, memberQiandao) ||
                other.memberQiandao == memberQiandao) &&
            (identical(other.memberLxqiandao, memberLxqiandao) ||
                other.memberLxqiandao == memberLxqiandao) &&
            (identical(other.memberSalary, memberSalary) ||
                other.memberSalary == memberSalary) &&
            (identical(other.memberSalarydata, memberSalarydata) ||
                other.memberSalarydata == memberSalarydata) &&
            (identical(other.memberLxqday, memberLxqday) ||
                other.memberLxqday == memberLxqday) &&
            (identical(other.memberDaysalary, memberDaysalary) ||
                other.memberDaysalary == memberDaysalary) &&
            (identical(other.memberResignSwitch, memberResignSwitch) ||
                other.memberResignSwitch == memberResignSwitch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      memberNext,
      memberQiandao,
      memberLxqiandao,
      memberSalary,
      memberSalarydata,
      memberLxqday,
      memberDaysalary,
      memberResignSwitch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfigImplCopyWith<_$ConfigImpl> get copyWith =>
      __$$ConfigImplCopyWithImpl<_$ConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfigImplToJson(
      this,
    );
  }
}

abstract class _Config implements Config {
  const factory _Config(
      {@JsonKey(name: "member_next") final int? memberNext,
      @JsonKey(name: "member_qiandao") final int? memberQiandao,
      @JsonKey(name: "member_lxqiandao") final int? memberLxqiandao,
      @JsonKey(name: "member_salary") final int? memberSalary,
      @JsonKey(name: "member_salarydata") final int? memberSalarydata,
      @JsonKey(name: "member_lxqday") final int? memberLxqday,
      @JsonKey(name: "member_daysalary") final int? memberDaysalary,
      @JsonKey(name: "member_resign_switch")
      final int? memberResignSwitch}) = _$ConfigImpl;

  factory _Config.fromJson(Map<String, dynamic> json) = _$ConfigImpl.fromJson;

  @override
  @JsonKey(name: "member_next")
  int? get memberNext;
  @override
  @JsonKey(name: "member_qiandao")
  int? get memberQiandao;
  @override
  @JsonKey(name: "member_lxqiandao")
  int? get memberLxqiandao;
  @override
  @JsonKey(name: "member_salary")
  int? get memberSalary;
  @override
  @JsonKey(name: "member_salarydata")
  int? get memberSalarydata;
  @override
  @JsonKey(name: "member_lxqday")
  int? get memberLxqday;
  @override
  @JsonKey(name: "member_daysalary")
  int? get memberDaysalary;
  @override
  @JsonKey(name: "member_resign_switch")
  int? get memberResignSwitch;
  @override
  @JsonKey(ignore: true)
  _$$ConfigImplCopyWith<_$ConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListElement _$ListElementFromJson(Map<String, dynamic> json) {
  return _ListElement.fromJson(json);
}

/// @nodoc
mixin _$ListElement {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "rate")
  double? get rate => throw _privateConstructorUsedError;
  @JsonKey(name: "inte")
  int? get inte => throw _privateConstructorUsedError;
  @JsonKey(name: "wheels")
  int? get wheels => throw _privateConstructorUsedError;
  @JsonKey(name: "uplevel")
  int? get uplevel => throw _privateConstructorUsedError;
  @JsonKey(name: "selfmoney")
  int? get selfmoney => throw _privateConstructorUsedError;
  @JsonKey(name: "salary")
  int? get salary => throw _privateConstructorUsedError;
  @JsonKey(name: "daysalary")
  int? get daysalary => throw _privateConstructorUsedError;
  @JsonKey(name: "lianxumoeny")
  int? get lianxumoeny => throw _privateConstructorUsedError;
  @JsonKey(name: "daymoeny")
  int? get daymoeny => throw _privateConstructorUsedError;
  @JsonKey(name: "resign_times")
  int? get resignTimes => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListElementCopyWith<ListElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListElementCopyWith<$Res> {
  factory $ListElementCopyWith(
          ListElement value, $Res Function(ListElement) then) =
      _$ListElementCopyWithImpl<$Res, ListElement>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "rate") double? rate,
      @JsonKey(name: "inte") int? inte,
      @JsonKey(name: "wheels") int? wheels,
      @JsonKey(name: "uplevel") int? uplevel,
      @JsonKey(name: "selfmoney") int? selfmoney,
      @JsonKey(name: "salary") int? salary,
      @JsonKey(name: "daysalary") int? daysalary,
      @JsonKey(name: "lianxumoeny") int? lianxumoeny,
      @JsonKey(name: "daymoeny") int? daymoeny,
      @JsonKey(name: "resign_times") int? resignTimes,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$ListElementCopyWithImpl<$Res, $Val extends ListElement>
    implements $ListElementCopyWith<$Res> {
  _$ListElementCopyWithImpl(this._value, this._then);

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
    Object? wheels = freezed,
    Object? uplevel = freezed,
    Object? selfmoney = freezed,
    Object? salary = freezed,
    Object? daysalary = freezed,
    Object? lianxumoeny = freezed,
    Object? daymoeny = freezed,
    Object? resignTimes = freezed,
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
              as int?,
      wheels: freezed == wheels
          ? _value.wheels
          : wheels // ignore: cast_nullable_to_non_nullable
              as int?,
      uplevel: freezed == uplevel
          ? _value.uplevel
          : uplevel // ignore: cast_nullable_to_non_nullable
              as int?,
      selfmoney: freezed == selfmoney
          ? _value.selfmoney
          : selfmoney // ignore: cast_nullable_to_non_nullable
              as int?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as int?,
      daysalary: freezed == daysalary
          ? _value.daysalary
          : daysalary // ignore: cast_nullable_to_non_nullable
              as int?,
      lianxumoeny: freezed == lianxumoeny
          ? _value.lianxumoeny
          : lianxumoeny // ignore: cast_nullable_to_non_nullable
              as int?,
      daymoeny: freezed == daymoeny
          ? _value.daymoeny
          : daymoeny // ignore: cast_nullable_to_non_nullable
              as int?,
      resignTimes: freezed == resignTimes
          ? _value.resignTimes
          : resignTimes // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ListElementImplCopyWith<$Res>
    implements $ListElementCopyWith<$Res> {
  factory _$$ListElementImplCopyWith(
          _$ListElementImpl value, $Res Function(_$ListElementImpl) then) =
      __$$ListElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "rate") double? rate,
      @JsonKey(name: "inte") int? inte,
      @JsonKey(name: "wheels") int? wheels,
      @JsonKey(name: "uplevel") int? uplevel,
      @JsonKey(name: "selfmoney") int? selfmoney,
      @JsonKey(name: "salary") int? salary,
      @JsonKey(name: "daysalary") int? daysalary,
      @JsonKey(name: "lianxumoeny") int? lianxumoeny,
      @JsonKey(name: "daymoeny") int? daymoeny,
      @JsonKey(name: "resign_times") int? resignTimes,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$$ListElementImplCopyWithImpl<$Res>
    extends _$ListElementCopyWithImpl<$Res, _$ListElementImpl>
    implements _$$ListElementImplCopyWith<$Res> {
  __$$ListElementImplCopyWithImpl(
      _$ListElementImpl _value, $Res Function(_$ListElementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? rate = freezed,
    Object? inte = freezed,
    Object? wheels = freezed,
    Object? uplevel = freezed,
    Object? selfmoney = freezed,
    Object? salary = freezed,
    Object? daysalary = freezed,
    Object? lianxumoeny = freezed,
    Object? daymoeny = freezed,
    Object? resignTimes = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ListElementImpl(
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
              as int?,
      wheels: freezed == wheels
          ? _value.wheels
          : wheels // ignore: cast_nullable_to_non_nullable
              as int?,
      uplevel: freezed == uplevel
          ? _value.uplevel
          : uplevel // ignore: cast_nullable_to_non_nullable
              as int?,
      selfmoney: freezed == selfmoney
          ? _value.selfmoney
          : selfmoney // ignore: cast_nullable_to_non_nullable
              as int?,
      salary: freezed == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as int?,
      daysalary: freezed == daysalary
          ? _value.daysalary
          : daysalary // ignore: cast_nullable_to_non_nullable
              as int?,
      lianxumoeny: freezed == lianxumoeny
          ? _value.lianxumoeny
          : lianxumoeny // ignore: cast_nullable_to_non_nullable
              as int?,
      daymoeny: freezed == daymoeny
          ? _value.daymoeny
          : daymoeny // ignore: cast_nullable_to_non_nullable
              as int?,
      resignTimes: freezed == resignTimes
          ? _value.resignTimes
          : resignTimes // ignore: cast_nullable_to_non_nullable
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
class _$ListElementImpl implements _ListElement {
  const _$ListElementImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "rate") this.rate,
      @JsonKey(name: "inte") this.inte,
      @JsonKey(name: "wheels") this.wheels,
      @JsonKey(name: "uplevel") this.uplevel,
      @JsonKey(name: "selfmoney") this.selfmoney,
      @JsonKey(name: "salary") this.salary,
      @JsonKey(name: "daysalary") this.daysalary,
      @JsonKey(name: "lianxumoeny") this.lianxumoeny,
      @JsonKey(name: "daymoeny") this.daymoeny,
      @JsonKey(name: "resign_times") this.resignTimes,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$ListElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListElementImplFromJson(json);

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
  final int? inte;
  @override
  @JsonKey(name: "wheels")
  final int? wheels;
  @override
  @JsonKey(name: "uplevel")
  final int? uplevel;
  @override
  @JsonKey(name: "selfmoney")
  final int? selfmoney;
  @override
  @JsonKey(name: "salary")
  final int? salary;
  @override
  @JsonKey(name: "daysalary")
  final int? daysalary;
  @override
  @JsonKey(name: "lianxumoeny")
  final int? lianxumoeny;
  @override
  @JsonKey(name: "daymoeny")
  final int? daymoeny;
  @override
  @JsonKey(name: "resign_times")
  final int? resignTimes;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString() {
    return 'ListElement(id: $id, name: $name, rate: $rate, inte: $inte, wheels: $wheels, uplevel: $uplevel, selfmoney: $selfmoney, salary: $salary, daysalary: $daysalary, lianxumoeny: $lianxumoeny, daymoeny: $daymoeny, resignTimes: $resignTimes, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListElementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.inte, inte) || other.inte == inte) &&
            (identical(other.wheels, wheels) || other.wheels == wheels) &&
            (identical(other.uplevel, uplevel) || other.uplevel == uplevel) &&
            (identical(other.selfmoney, selfmoney) ||
                other.selfmoney == selfmoney) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.daysalary, daysalary) ||
                other.daysalary == daysalary) &&
            (identical(other.lianxumoeny, lianxumoeny) ||
                other.lianxumoeny == lianxumoeny) &&
            (identical(other.daymoeny, daymoeny) ||
                other.daymoeny == daymoeny) &&
            (identical(other.resignTimes, resignTimes) ||
                other.resignTimes == resignTimes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      rate,
      inte,
      wheels,
      uplevel,
      selfmoney,
      salary,
      daysalary,
      lianxumoeny,
      daymoeny,
      resignTimes,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListElementImplCopyWith<_$ListElementImpl> get copyWith =>
      __$$ListElementImplCopyWithImpl<_$ListElementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListElementImplToJson(
      this,
    );
  }
}

abstract class _ListElement implements ListElement {
  const factory _ListElement(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "rate") final double? rate,
          @JsonKey(name: "inte") final int? inte,
          @JsonKey(name: "wheels") final int? wheels,
          @JsonKey(name: "uplevel") final int? uplevel,
          @JsonKey(name: "selfmoney") final int? selfmoney,
          @JsonKey(name: "salary") final int? salary,
          @JsonKey(name: "daysalary") final int? daysalary,
          @JsonKey(name: "lianxumoeny") final int? lianxumoeny,
          @JsonKey(name: "daymoeny") final int? daymoeny,
          @JsonKey(name: "resign_times") final int? resignTimes,
          @JsonKey(name: "created_at") final String? createdAt,
          @JsonKey(name: "updated_at") final String? updatedAt}) =
      _$ListElementImpl;

  factory _ListElement.fromJson(Map<String, dynamic> json) =
      _$ListElementImpl.fromJson;

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
  int? get inte;
  @override
  @JsonKey(name: "wheels")
  int? get wheels;
  @override
  @JsonKey(name: "uplevel")
  int? get uplevel;
  @override
  @JsonKey(name: "selfmoney")
  int? get selfmoney;
  @override
  @JsonKey(name: "salary")
  int? get salary;
  @override
  @JsonKey(name: "daysalary")
  int? get daysalary;
  @override
  @JsonKey(name: "lianxumoeny")
  int? get lianxumoeny;
  @override
  @JsonKey(name: "daymoeny")
  int? get daymoeny;
  @override
  @JsonKey(name: "resign_times")
  int? get resignTimes;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ListElementImplCopyWith<_$ListElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
