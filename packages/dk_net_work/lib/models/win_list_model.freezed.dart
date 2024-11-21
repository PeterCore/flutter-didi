// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'win_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WinListModel _$WinListModelFromJson(Map<String, dynamic> json) {
  return _WinListModel.fromJson(json);
}

/// @nodoc
mixin _$WinListModel {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "list1")
  List<List1>? get list1 => throw _privateConstructorUsedError;
  @JsonKey(name: "list2")
  String? get list2 => throw _privateConstructorUsedError;
  @JsonKey(name: "list3")
  String? get list3 => throw _privateConstructorUsedError;
  @JsonKey(name: "list4")
  String? get list4 => throw _privateConstructorUsedError;
  @JsonKey(name: "remain_count")
  int? get remainCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WinListModelCopyWith<WinListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WinListModelCopyWith<$Res> {
  factory $WinListModelCopyWith(
          WinListModel value, $Res Function(WinListModel) then) =
      _$WinListModelCopyWithImpl<$Res, WinListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "list1") List<List1>? list1,
      @JsonKey(name: "list2") String? list2,
      @JsonKey(name: "list3") String? list3,
      @JsonKey(name: "list4") String? list4,
      @JsonKey(name: "remain_count") int? remainCount});
}

/// @nodoc
class _$WinListModelCopyWithImpl<$Res, $Val extends WinListModel>
    implements $WinListModelCopyWith<$Res> {
  _$WinListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list1 = freezed,
    Object? list2 = freezed,
    Object? list3 = freezed,
    Object? list4 = freezed,
    Object? remainCount = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list1: freezed == list1
          ? _value.list1
          : list1 // ignore: cast_nullable_to_non_nullable
              as List<List1>?,
      list2: freezed == list2
          ? _value.list2
          : list2 // ignore: cast_nullable_to_non_nullable
              as String?,
      list3: freezed == list3
          ? _value.list3
          : list3 // ignore: cast_nullable_to_non_nullable
              as String?,
      list4: freezed == list4
          ? _value.list4
          : list4 // ignore: cast_nullable_to_non_nullable
              as String?,
      remainCount: freezed == remainCount
          ? _value.remainCount
          : remainCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WinListModelImplCopyWith<$Res>
    implements $WinListModelCopyWith<$Res> {
  factory _$$WinListModelImplCopyWith(
          _$WinListModelImpl value, $Res Function(_$WinListModelImpl) then) =
      __$$WinListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "list1") List<List1>? list1,
      @JsonKey(name: "list2") String? list2,
      @JsonKey(name: "list3") String? list3,
      @JsonKey(name: "list4") String? list4,
      @JsonKey(name: "remain_count") int? remainCount});
}

/// @nodoc
class __$$WinListModelImplCopyWithImpl<$Res>
    extends _$WinListModelCopyWithImpl<$Res, _$WinListModelImpl>
    implements _$$WinListModelImplCopyWith<$Res> {
  __$$WinListModelImplCopyWithImpl(
      _$WinListModelImpl _value, $Res Function(_$WinListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list1 = freezed,
    Object? list2 = freezed,
    Object? list3 = freezed,
    Object? list4 = freezed,
    Object? remainCount = freezed,
  }) {
    return _then(_$WinListModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list1: freezed == list1
          ? _value._list1
          : list1 // ignore: cast_nullable_to_non_nullable
              as List<List1>?,
      list2: freezed == list2
          ? _value.list2
          : list2 // ignore: cast_nullable_to_non_nullable
              as String?,
      list3: freezed == list3
          ? _value.list3
          : list3 // ignore: cast_nullable_to_non_nullable
              as String?,
      list4: freezed == list4
          ? _value.list4
          : list4 // ignore: cast_nullable_to_non_nullable
              as String?,
      remainCount: freezed == remainCount
          ? _value.remainCount
          : remainCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WinListModelImpl implements _WinListModel {
  const _$WinListModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "list1") final List<List1>? list1,
      @JsonKey(name: "list2") this.list2,
      @JsonKey(name: "list3") this.list3,
      @JsonKey(name: "list4") this.list4,
      @JsonKey(name: "remain_count") this.remainCount})
      : _list1 = list1;

  factory _$WinListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WinListModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  final List<List1>? _list1;
  @override
  @JsonKey(name: "list1")
  List<List1>? get list1 {
    final value = _list1;
    if (value == null) return null;
    if (_list1 is EqualUnmodifiableListView) return _list1;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "list2")
  final String? list2;
  @override
  @JsonKey(name: "list3")
  final String? list3;
  @override
  @JsonKey(name: "list4")
  final String? list4;
  @override
  @JsonKey(name: "remain_count")
  final int? remainCount;

  @override
  String toString() {
    return 'WinListModel(status: $status, list1: $list1, list2: $list2, list3: $list3, list4: $list4, remainCount: $remainCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WinListModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._list1, _list1) &&
            (identical(other.list2, list2) || other.list2 == list2) &&
            (identical(other.list3, list3) || other.list3 == list3) &&
            (identical(other.list4, list4) || other.list4 == list4) &&
            (identical(other.remainCount, remainCount) ||
                other.remainCount == remainCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_list1),
      list2,
      list3,
      list4,
      remainCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WinListModelImplCopyWith<_$WinListModelImpl> get copyWith =>
      __$$WinListModelImplCopyWithImpl<_$WinListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WinListModelImplToJson(
      this,
    );
  }
}

abstract class _WinListModel implements WinListModel {
  const factory _WinListModel(
          {@JsonKey(name: "status") final int? status,
          @JsonKey(name: "list1") final List<List1>? list1,
          @JsonKey(name: "list2") final String? list2,
          @JsonKey(name: "list3") final String? list3,
          @JsonKey(name: "list4") final String? list4,
          @JsonKey(name: "remain_count") final int? remainCount}) =
      _$WinListModelImpl;

  factory _WinListModel.fromJson(Map<String, dynamic> json) =
      _$WinListModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "list1")
  List<List1>? get list1;
  @override
  @JsonKey(name: "list2")
  String? get list2;
  @override
  @JsonKey(name: "list3")
  String? get list3;
  @override
  @JsonKey(name: "list4")
  String? get list4;
  @override
  @JsonKey(name: "remain_count")
  int? get remainCount;
  @override
  @JsonKey(ignore: true)
  _$$WinListModelImplCopyWith<_$WinListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

List1 _$List1FromJson(Map<String, dynamic> json) {
  return _List1.fromJson(json);
}

/// @nodoc
mixin _$List1 {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_userid")
  int? get moneylogUserid => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_user")
  String? get moneylogUser => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_money")
  double? get moneylogMoney => throw _privateConstructorUsedError;
  @JsonKey(name: "danwei")
  String? get danwei => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_ip")
  String? get moneylogIp => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_status")
  String? get moneylogStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_type")
  String? get moneylogType => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_notice")
  String? get moneylogNotice => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_ext")
  dynamic get moneylogExt => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_houamount")
  double? get moneylogHouamount => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_yuanamount")
  double? get moneylogYuanamount => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $List1CopyWith<List1> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $List1CopyWith<$Res> {
  factory $List1CopyWith(List1 value, $Res Function(List1) then) =
      _$List1CopyWithImpl<$Res, List1>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "moneylog_userid") int? moneylogUserid,
      @JsonKey(name: "moneylog_user") String? moneylogUser,
      @JsonKey(name: "moneylog_money") double? moneylogMoney,
      @JsonKey(name: "danwei") String? danwei,
      @JsonKey(name: "moneylog_ip") String? moneylogIp,
      @JsonKey(name: "moneylog_status") String? moneylogStatus,
      @JsonKey(name: "moneylog_type") String? moneylogType,
      @JsonKey(name: "moneylog_notice") String? moneylogNotice,
      @JsonKey(name: "moneylog_ext") dynamic moneylogExt,
      @JsonKey(name: "moneylog_houamount") double? moneylogHouamount,
      @JsonKey(name: "moneylog_yuanamount") double? moneylogYuanamount,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$List1CopyWithImpl<$Res, $Val extends List1>
    implements $List1CopyWith<$Res> {
  _$List1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? moneylogUserid = freezed,
    Object? moneylogUser = freezed,
    Object? moneylogMoney = freezed,
    Object? danwei = freezed,
    Object? moneylogIp = freezed,
    Object? moneylogStatus = freezed,
    Object? moneylogType = freezed,
    Object? moneylogNotice = freezed,
    Object? moneylogExt = freezed,
    Object? moneylogHouamount = freezed,
    Object? moneylogYuanamount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      moneylogUserid: freezed == moneylogUserid
          ? _value.moneylogUserid
          : moneylogUserid // ignore: cast_nullable_to_non_nullable
              as int?,
      moneylogUser: freezed == moneylogUser
          ? _value.moneylogUser
          : moneylogUser // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogMoney: freezed == moneylogMoney
          ? _value.moneylogMoney
          : moneylogMoney // ignore: cast_nullable_to_non_nullable
              as double?,
      danwei: freezed == danwei
          ? _value.danwei
          : danwei // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogIp: freezed == moneylogIp
          ? _value.moneylogIp
          : moneylogIp // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogStatus: freezed == moneylogStatus
          ? _value.moneylogStatus
          : moneylogStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogType: freezed == moneylogType
          ? _value.moneylogType
          : moneylogType // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogNotice: freezed == moneylogNotice
          ? _value.moneylogNotice
          : moneylogNotice // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogExt: freezed == moneylogExt
          ? _value.moneylogExt
          : moneylogExt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      moneylogHouamount: freezed == moneylogHouamount
          ? _value.moneylogHouamount
          : moneylogHouamount // ignore: cast_nullable_to_non_nullable
              as double?,
      moneylogYuanamount: freezed == moneylogYuanamount
          ? _value.moneylogYuanamount
          : moneylogYuanamount // ignore: cast_nullable_to_non_nullable
              as double?,
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
abstract class _$$List1ImplCopyWith<$Res> implements $List1CopyWith<$Res> {
  factory _$$List1ImplCopyWith(
          _$List1Impl value, $Res Function(_$List1Impl) then) =
      __$$List1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "moneylog_userid") int? moneylogUserid,
      @JsonKey(name: "moneylog_user") String? moneylogUser,
      @JsonKey(name: "moneylog_money") double? moneylogMoney,
      @JsonKey(name: "danwei") String? danwei,
      @JsonKey(name: "moneylog_ip") String? moneylogIp,
      @JsonKey(name: "moneylog_status") String? moneylogStatus,
      @JsonKey(name: "moneylog_type") String? moneylogType,
      @JsonKey(name: "moneylog_notice") String? moneylogNotice,
      @JsonKey(name: "moneylog_ext") dynamic moneylogExt,
      @JsonKey(name: "moneylog_houamount") double? moneylogHouamount,
      @JsonKey(name: "moneylog_yuanamount") double? moneylogYuanamount,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$$List1ImplCopyWithImpl<$Res>
    extends _$List1CopyWithImpl<$Res, _$List1Impl>
    implements _$$List1ImplCopyWith<$Res> {
  __$$List1ImplCopyWithImpl(
      _$List1Impl _value, $Res Function(_$List1Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? moneylogUserid = freezed,
    Object? moneylogUser = freezed,
    Object? moneylogMoney = freezed,
    Object? danwei = freezed,
    Object? moneylogIp = freezed,
    Object? moneylogStatus = freezed,
    Object? moneylogType = freezed,
    Object? moneylogNotice = freezed,
    Object? moneylogExt = freezed,
    Object? moneylogHouamount = freezed,
    Object? moneylogYuanamount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$List1Impl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      moneylogUserid: freezed == moneylogUserid
          ? _value.moneylogUserid
          : moneylogUserid // ignore: cast_nullable_to_non_nullable
              as int?,
      moneylogUser: freezed == moneylogUser
          ? _value.moneylogUser
          : moneylogUser // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogMoney: freezed == moneylogMoney
          ? _value.moneylogMoney
          : moneylogMoney // ignore: cast_nullable_to_non_nullable
              as double?,
      danwei: freezed == danwei
          ? _value.danwei
          : danwei // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogIp: freezed == moneylogIp
          ? _value.moneylogIp
          : moneylogIp // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogStatus: freezed == moneylogStatus
          ? _value.moneylogStatus
          : moneylogStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogType: freezed == moneylogType
          ? _value.moneylogType
          : moneylogType // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogNotice: freezed == moneylogNotice
          ? _value.moneylogNotice
          : moneylogNotice // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogExt: freezed == moneylogExt
          ? _value.moneylogExt
          : moneylogExt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      moneylogHouamount: freezed == moneylogHouamount
          ? _value.moneylogHouamount
          : moneylogHouamount // ignore: cast_nullable_to_non_nullable
              as double?,
      moneylogYuanamount: freezed == moneylogYuanamount
          ? _value.moneylogYuanamount
          : moneylogYuanamount // ignore: cast_nullable_to_non_nullable
              as double?,
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
class _$List1Impl implements _List1 {
  const _$List1Impl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "moneylog_userid") this.moneylogUserid,
      @JsonKey(name: "moneylog_user") this.moneylogUser,
      @JsonKey(name: "moneylog_money") this.moneylogMoney,
      @JsonKey(name: "danwei") this.danwei,
      @JsonKey(name: "moneylog_ip") this.moneylogIp,
      @JsonKey(name: "moneylog_status") this.moneylogStatus,
      @JsonKey(name: "moneylog_type") this.moneylogType,
      @JsonKey(name: "moneylog_notice") this.moneylogNotice,
      @JsonKey(name: "moneylog_ext") this.moneylogExt,
      @JsonKey(name: "moneylog_houamount") this.moneylogHouamount,
      @JsonKey(name: "moneylog_yuanamount") this.moneylogYuanamount,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$List1Impl.fromJson(Map<String, dynamic> json) =>
      _$$List1ImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "moneylog_userid")
  final int? moneylogUserid;
  @override
  @JsonKey(name: "moneylog_user")
  final String? moneylogUser;
  @override
  @JsonKey(name: "moneylog_money")
  final double? moneylogMoney;
  @override
  @JsonKey(name: "danwei")
  final String? danwei;
  @override
  @JsonKey(name: "moneylog_ip")
  final String? moneylogIp;
  @override
  @JsonKey(name: "moneylog_status")
  final String? moneylogStatus;
  @override
  @JsonKey(name: "moneylog_type")
  final String? moneylogType;
  @override
  @JsonKey(name: "moneylog_notice")
  final String? moneylogNotice;
  @override
  @JsonKey(name: "moneylog_ext")
  final dynamic moneylogExt;
  @override
  @JsonKey(name: "moneylog_houamount")
  final double? moneylogHouamount;
  @override
  @JsonKey(name: "moneylog_yuanamount")
  final double? moneylogYuanamount;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString() {
    return 'List1(id: $id, moneylogUserid: $moneylogUserid, moneylogUser: $moneylogUser, moneylogMoney: $moneylogMoney, danwei: $danwei, moneylogIp: $moneylogIp, moneylogStatus: $moneylogStatus, moneylogType: $moneylogType, moneylogNotice: $moneylogNotice, moneylogExt: $moneylogExt, moneylogHouamount: $moneylogHouamount, moneylogYuanamount: $moneylogYuanamount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$List1Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.moneylogUserid, moneylogUserid) ||
                other.moneylogUserid == moneylogUserid) &&
            (identical(other.moneylogUser, moneylogUser) ||
                other.moneylogUser == moneylogUser) &&
            (identical(other.moneylogMoney, moneylogMoney) ||
                other.moneylogMoney == moneylogMoney) &&
            (identical(other.danwei, danwei) || other.danwei == danwei) &&
            (identical(other.moneylogIp, moneylogIp) ||
                other.moneylogIp == moneylogIp) &&
            (identical(other.moneylogStatus, moneylogStatus) ||
                other.moneylogStatus == moneylogStatus) &&
            (identical(other.moneylogType, moneylogType) ||
                other.moneylogType == moneylogType) &&
            (identical(other.moneylogNotice, moneylogNotice) ||
                other.moneylogNotice == moneylogNotice) &&
            const DeepCollectionEquality()
                .equals(other.moneylogExt, moneylogExt) &&
            (identical(other.moneylogHouamount, moneylogHouamount) ||
                other.moneylogHouamount == moneylogHouamount) &&
            (identical(other.moneylogYuanamount, moneylogYuanamount) ||
                other.moneylogYuanamount == moneylogYuanamount) &&
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
      moneylogUserid,
      moneylogUser,
      moneylogMoney,
      danwei,
      moneylogIp,
      moneylogStatus,
      moneylogType,
      moneylogNotice,
      const DeepCollectionEquality().hash(moneylogExt),
      moneylogHouamount,
      moneylogYuanamount,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$List1ImplCopyWith<_$List1Impl> get copyWith =>
      __$$List1ImplCopyWithImpl<_$List1Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$List1ImplToJson(
      this,
    );
  }
}

abstract class _List1 implements List1 {
  const factory _List1(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "moneylog_userid") final int? moneylogUserid,
      @JsonKey(name: "moneylog_user") final String? moneylogUser,
      @JsonKey(name: "moneylog_money") final double? moneylogMoney,
      @JsonKey(name: "danwei") final String? danwei,
      @JsonKey(name: "moneylog_ip") final String? moneylogIp,
      @JsonKey(name: "moneylog_status") final String? moneylogStatus,
      @JsonKey(name: "moneylog_type") final String? moneylogType,
      @JsonKey(name: "moneylog_notice") final String? moneylogNotice,
      @JsonKey(name: "moneylog_ext") final dynamic moneylogExt,
      @JsonKey(name: "moneylog_houamount") final double? moneylogHouamount,
      @JsonKey(name: "moneylog_yuanamount") final double? moneylogYuanamount,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt}) = _$List1Impl;

  factory _List1.fromJson(Map<String, dynamic> json) = _$List1Impl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "moneylog_userid")
  int? get moneylogUserid;
  @override
  @JsonKey(name: "moneylog_user")
  String? get moneylogUser;
  @override
  @JsonKey(name: "moneylog_money")
  double? get moneylogMoney;
  @override
  @JsonKey(name: "danwei")
  String? get danwei;
  @override
  @JsonKey(name: "moneylog_ip")
  String? get moneylogIp;
  @override
  @JsonKey(name: "moneylog_status")
  String? get moneylogStatus;
  @override
  @JsonKey(name: "moneylog_type")
  String? get moneylogType;
  @override
  @JsonKey(name: "moneylog_notice")
  String? get moneylogNotice;
  @override
  @JsonKey(name: "moneylog_ext")
  dynamic get moneylogExt;
  @override
  @JsonKey(name: "moneylog_houamount")
  double? get moneylogHouamount;
  @override
  @JsonKey(name: "moneylog_yuanamount")
  double? get moneylogYuanamount;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$List1ImplCopyWith<_$List1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
