// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redemption_record_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RedemptionRecordResult _$RedemptionRecordResultFromJson(
    Map<String, dynamic> json) {
  return _RedemptionRecordResult.fromJson(json);
}

/// @nodoc
mixin _$RedemptionRecordResult {
  int? get status => throw _privateConstructorUsedError;
  ListClass? get list => throw _privateConstructorUsedError;
  String? get pagesize => throw _privateConstructorUsedError;
  int? get integral => throw _privateConstructorUsedError;
  String? get rules => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RedemptionRecordResultCopyWith<RedemptionRecordResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedemptionRecordResultCopyWith<$Res> {
  factory $RedemptionRecordResultCopyWith(RedemptionRecordResult value,
          $Res Function(RedemptionRecordResult) then) =
      _$RedemptionRecordResultCopyWithImpl<$Res, RedemptionRecordResult>;
  @useResult
  $Res call(
      {int? status,
      ListClass? list,
      String? pagesize,
      int? integral,
      String? rules});

  $ListClassCopyWith<$Res>? get list;
}

/// @nodoc
class _$RedemptionRecordResultCopyWithImpl<$Res,
        $Val extends RedemptionRecordResult>
    implements $RedemptionRecordResultCopyWith<$Res> {
  _$RedemptionRecordResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
    Object? pagesize = freezed,
    Object? integral = freezed,
    Object? rules = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ListClass?,
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as String?,
      integral: freezed == integral
          ? _value.integral
          : integral // ignore: cast_nullable_to_non_nullable
              as int?,
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ListClassCopyWith<$Res>? get list {
    if (_value.list == null) {
      return null;
    }

    return $ListClassCopyWith<$Res>(_value.list!, (value) {
      return _then(_value.copyWith(list: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RedemptionRecordResultImplCopyWith<$Res>
    implements $RedemptionRecordResultCopyWith<$Res> {
  factory _$$RedemptionRecordResultImplCopyWith(
          _$RedemptionRecordResultImpl value,
          $Res Function(_$RedemptionRecordResultImpl) then) =
      __$$RedemptionRecordResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? status,
      ListClass? list,
      String? pagesize,
      int? integral,
      String? rules});

  @override
  $ListClassCopyWith<$Res>? get list;
}

/// @nodoc
class __$$RedemptionRecordResultImplCopyWithImpl<$Res>
    extends _$RedemptionRecordResultCopyWithImpl<$Res,
        _$RedemptionRecordResultImpl>
    implements _$$RedemptionRecordResultImplCopyWith<$Res> {
  __$$RedemptionRecordResultImplCopyWithImpl(
      _$RedemptionRecordResultImpl _value,
      $Res Function(_$RedemptionRecordResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
    Object? pagesize = freezed,
    Object? integral = freezed,
    Object? rules = freezed,
  }) {
    return _then(_$RedemptionRecordResultImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ListClass?,
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as String?,
      integral: freezed == integral
          ? _value.integral
          : integral // ignore: cast_nullable_to_non_nullable
              as int?,
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RedemptionRecordResultImpl implements _RedemptionRecordResult {
  const _$RedemptionRecordResultImpl(
      {this.status, this.list, this.pagesize, this.integral, this.rules});

  factory _$RedemptionRecordResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$RedemptionRecordResultImplFromJson(json);

  @override
  final int? status;
  @override
  final ListClass? list;
  @override
  final String? pagesize;
  @override
  final int? integral;
  @override
  final String? rules;

  @override
  String toString() {
    return 'RedemptionRecordResult(status: $status, list: $list, pagesize: $pagesize, integral: $integral, rules: $rules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedemptionRecordResultImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.pagesize, pagesize) ||
                other.pagesize == pagesize) &&
            (identical(other.integral, integral) ||
                other.integral == integral) &&
            (identical(other.rules, rules) || other.rules == rules));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, list, pagesize, integral, rules);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RedemptionRecordResultImplCopyWith<_$RedemptionRecordResultImpl>
      get copyWith => __$$RedemptionRecordResultImplCopyWithImpl<
          _$RedemptionRecordResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RedemptionRecordResultImplToJson(
      this,
    );
  }
}

abstract class _RedemptionRecordResult implements RedemptionRecordResult {
  const factory _RedemptionRecordResult(
      {final int? status,
      final ListClass? list,
      final String? pagesize,
      final int? integral,
      final String? rules}) = _$RedemptionRecordResultImpl;

  factory _RedemptionRecordResult.fromJson(Map<String, dynamic> json) =
      _$RedemptionRecordResultImpl.fromJson;

  @override
  int? get status;
  @override
  ListClass? get list;
  @override
  String? get pagesize;
  @override
  int? get integral;
  @override
  String? get rules;
  @override
  @JsonKey(ignore: true)
  _$$RedemptionRecordResultImplCopyWith<_$RedemptionRecordResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ListClass _$ListClassFromJson(Map<String, dynamic> json) {
  return _ListClass.fromJson(json);
}

/// @nodoc
mixin _$ListClass {
  int? get currentPage => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;
  String? get firstPageUrl => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  int? get lastPage => throw _privateConstructorUsedError;
  String? get lastPageUrl => throw _privateConstructorUsedError;
  List<Link>? get links => throw _privateConstructorUsedError;
  dynamic get nextPageUrl => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;
  dynamic get prevPageUrl => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListClassCopyWith<ListClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListClassCopyWith<$Res> {
  factory $ListClassCopyWith(ListClass value, $Res Function(ListClass) then) =
      _$ListClassCopyWithImpl<$Res, ListClass>;
  @useResult
  $Res call(
      {int? currentPage,
      List<Datum>? data,
      String? firstPageUrl,
      int? from,
      int? lastPage,
      String? lastPageUrl,
      List<Link>? links,
      dynamic nextPageUrl,
      String? path,
      int? perPage,
      dynamic prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class _$ListClassCopyWithImpl<$Res, $Val extends ListClass>
    implements $ListClassCopyWith<$Res> {
  _$ListClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListClassImplCopyWith<$Res>
    implements $ListClassCopyWith<$Res> {
  factory _$$ListClassImplCopyWith(
          _$ListClassImpl value, $Res Function(_$ListClassImpl) then) =
      __$$ListClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? currentPage,
      List<Datum>? data,
      String? firstPageUrl,
      int? from,
      int? lastPage,
      String? lastPageUrl,
      List<Link>? links,
      dynamic nextPageUrl,
      String? path,
      int? perPage,
      dynamic prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class __$$ListClassImplCopyWithImpl<$Res>
    extends _$ListClassCopyWithImpl<$Res, _$ListClassImpl>
    implements _$$ListClassImplCopyWith<$Res> {
  __$$ListClassImplCopyWithImpl(
      _$ListClassImpl _value, $Res Function(_$ListClassImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? data = freezed,
    Object? firstPageUrl = freezed,
    Object? from = freezed,
    Object? lastPage = freezed,
    Object? lastPageUrl = freezed,
    Object? links = freezed,
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_$ListClassImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
      firstPageUrl: freezed == firstPageUrl
          ? _value.firstPageUrl
          : firstPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastPageUrl: freezed == lastPageUrl
          ? _value.lastPageUrl
          : lastPageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>?,
      nextPageUrl: freezed == nextPageUrl
          ? _value.nextPageUrl
          : nextPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      prevPageUrl: freezed == prevPageUrl
          ? _value.prevPageUrl
          : prevPageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListClassImpl implements _ListClass {
  const _$ListClassImpl(
      {this.currentPage,
      final List<Datum>? data,
      this.firstPageUrl,
      this.from,
      this.lastPage,
      this.lastPageUrl,
      final List<Link>? links,
      this.nextPageUrl,
      this.path,
      this.perPage,
      this.prevPageUrl,
      this.to,
      this.total})
      : _data = data,
        _links = links;

  factory _$ListClassImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListClassImplFromJson(json);

  @override
  final int? currentPage;
  final List<Datum>? _data;
  @override
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? firstPageUrl;
  @override
  final int? from;
  @override
  final int? lastPage;
  @override
  final String? lastPageUrl;
  final List<Link>? _links;
  @override
  List<Link>? get links {
    final value = _links;
    if (value == null) return null;
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic nextPageUrl;
  @override
  final String? path;
  @override
  final int? perPage;
  @override
  final dynamic prevPageUrl;
  @override
  final int? to;
  @override
  final int? total;

  @override
  String toString() {
    return 'ListClass(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListClassImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            const DeepCollectionEquality()
                .equals(other.nextPageUrl, nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            const DeepCollectionEquality()
                .equals(other.prevPageUrl, prevPageUrl) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(_data),
      firstPageUrl,
      from,
      lastPage,
      lastPageUrl,
      const DeepCollectionEquality().hash(_links),
      const DeepCollectionEquality().hash(nextPageUrl),
      path,
      perPage,
      const DeepCollectionEquality().hash(prevPageUrl),
      to,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListClassImplCopyWith<_$ListClassImpl> get copyWith =>
      __$$ListClassImplCopyWithImpl<_$ListClassImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListClassImplToJson(
      this,
    );
  }
}

abstract class _ListClass implements ListClass {
  const factory _ListClass(
      {final int? currentPage,
      final List<Datum>? data,
      final String? firstPageUrl,
      final int? from,
      final int? lastPage,
      final String? lastPageUrl,
      final List<Link>? links,
      final dynamic nextPageUrl,
      final String? path,
      final int? perPage,
      final dynamic prevPageUrl,
      final int? to,
      final int? total}) = _$ListClassImpl;

  factory _ListClass.fromJson(Map<String, dynamic> json) =
      _$ListClassImpl.fromJson;

  @override
  int? get currentPage;
  @override
  List<Datum>? get data;
  @override
  String? get firstPageUrl;
  @override
  int? get from;
  @override
  int? get lastPage;
  @override
  String? get lastPageUrl;
  @override
  List<Link>? get links;
  @override
  dynamic get nextPageUrl;
  @override
  String? get path;
  @override
  int? get perPage;
  @override
  dynamic get prevPageUrl;
  @override
  int? get to;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$ListClassImplCopyWith<_$ListClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  int? get id => throw _privateConstructorUsedError;
  dynamic get ordernumber => throw _privateConstructorUsedError;
  int? get userid => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  int? get productid => throw _privateConstructorUsedError;
  String? get productname => throw _privateConstructorUsedError;
  int? get integral => throw _privateConstructorUsedError;
  dynamic get memo => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;
  String? get ip => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get shouhuodizhi => throw _privateConstructorUsedError;
  int? get sendsms => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  dynamic get expressOrder => throw _privateConstructorUsedError;
  dynamic get expressName => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {int? id,
      dynamic ordernumber,
      int? userid,
      String? username,
      int? productid,
      String? productname,
      int? integral,
      dynamic memo,
      int? status,
      int? number,
      String? ip,
      String? name,
      String? phone,
      String? location,
      String? shouhuodizhi,
      int? sendsms,
      int? type,
      DateTime? createdAt,
      DateTime? updatedAt,
      dynamic expressOrder,
      dynamic expressName,
      String? image,
      String? date});
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ordernumber = freezed,
    Object? userid = freezed,
    Object? username = freezed,
    Object? productid = freezed,
    Object? productname = freezed,
    Object? integral = freezed,
    Object? memo = freezed,
    Object? status = freezed,
    Object? number = freezed,
    Object? ip = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? location = freezed,
    Object? shouhuodizhi = freezed,
    Object? sendsms = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? expressOrder = freezed,
    Object? expressName = freezed,
    Object? image = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ordernumber: freezed == ordernumber
          ? _value.ordernumber
          : ordernumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      productid: freezed == productid
          ? _value.productid
          : productid // ignore: cast_nullable_to_non_nullable
              as int?,
      productname: freezed == productname
          ? _value.productname
          : productname // ignore: cast_nullable_to_non_nullable
              as String?,
      integral: freezed == integral
          ? _value.integral
          : integral // ignore: cast_nullable_to_non_nullable
              as int?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      shouhuodizhi: freezed == shouhuodizhi
          ? _value.shouhuodizhi
          : shouhuodizhi // ignore: cast_nullable_to_non_nullable
              as String?,
      sendsms: freezed == sendsms
          ? _value.sendsms
          : sendsms // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expressOrder: freezed == expressOrder
          ? _value.expressOrder
          : expressOrder // ignore: cast_nullable_to_non_nullable
              as dynamic,
      expressName: freezed == expressName
          ? _value.expressName
          : expressName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      dynamic ordernumber,
      int? userid,
      String? username,
      int? productid,
      String? productname,
      int? integral,
      dynamic memo,
      int? status,
      int? number,
      String? ip,
      String? name,
      String? phone,
      String? location,
      String? shouhuodizhi,
      int? sendsms,
      int? type,
      DateTime? createdAt,
      DateTime? updatedAt,
      dynamic expressOrder,
      dynamic expressName,
      String? image,
      String? date});
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ordernumber = freezed,
    Object? userid = freezed,
    Object? username = freezed,
    Object? productid = freezed,
    Object? productname = freezed,
    Object? integral = freezed,
    Object? memo = freezed,
    Object? status = freezed,
    Object? number = freezed,
    Object? ip = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? location = freezed,
    Object? shouhuodizhi = freezed,
    Object? sendsms = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? expressOrder = freezed,
    Object? expressName = freezed,
    Object? image = freezed,
    Object? date = freezed,
  }) {
    return _then(_$DatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ordernumber: freezed == ordernumber
          ? _value.ordernumber
          : ordernumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      productid: freezed == productid
          ? _value.productid
          : productid // ignore: cast_nullable_to_non_nullable
              as int?,
      productname: freezed == productname
          ? _value.productname
          : productname // ignore: cast_nullable_to_non_nullable
              as String?,
      integral: freezed == integral
          ? _value.integral
          : integral // ignore: cast_nullable_to_non_nullable
              as int?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      shouhuodizhi: freezed == shouhuodizhi
          ? _value.shouhuodizhi
          : shouhuodizhi // ignore: cast_nullable_to_non_nullable
              as String?,
      sendsms: freezed == sendsms
          ? _value.sendsms
          : sendsms // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expressOrder: freezed == expressOrder
          ? _value.expressOrder
          : expressOrder // ignore: cast_nullable_to_non_nullable
              as dynamic,
      expressName: freezed == expressName
          ? _value.expressName
          : expressName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {this.id,
      this.ordernumber,
      this.userid,
      this.username,
      this.productid,
      this.productname,
      this.integral,
      this.memo,
      this.status,
      this.number,
      this.ip,
      this.name,
      this.phone,
      this.location,
      this.shouhuodizhi,
      this.sendsms,
      this.type,
      this.createdAt,
      this.updatedAt,
      this.expressOrder,
      this.expressName,
      this.image,
      this.date});

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  final int? id;
  @override
  final dynamic ordernumber;
  @override
  final int? userid;
  @override
  final String? username;
  @override
  final int? productid;
  @override
  final String? productname;
  @override
  final int? integral;
  @override
  final dynamic memo;
  @override
  final int? status;
  @override
  final int? number;
  @override
  final String? ip;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? location;
  @override
  final String? shouhuodizhi;
  @override
  final int? sendsms;
  @override
  final int? type;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final dynamic expressOrder;
  @override
  final dynamic expressName;
  @override
  final String? image;
  @override
  final String? date;

  @override
  String toString() {
    return 'Datum(id: $id, ordernumber: $ordernumber, userid: $userid, username: $username, productid: $productid, productname: $productname, integral: $integral, memo: $memo, status: $status, number: $number, ip: $ip, name: $name, phone: $phone, location: $location, shouhuodizhi: $shouhuodizhi, sendsms: $sendsms, type: $type, createdAt: $createdAt, updatedAt: $updatedAt, expressOrder: $expressOrder, expressName: $expressName, image: $image, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other.ordernumber, ordernumber) &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.productid, productid) ||
                other.productid == productid) &&
            (identical(other.productname, productname) ||
                other.productname == productname) &&
            (identical(other.integral, integral) ||
                other.integral == integral) &&
            const DeepCollectionEquality().equals(other.memo, memo) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.shouhuodizhi, shouhuodizhi) ||
                other.shouhuodizhi == shouhuodizhi) &&
            (identical(other.sendsms, sendsms) || other.sendsms == sendsms) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.expressOrder, expressOrder) &&
            const DeepCollectionEquality()
                .equals(other.expressName, expressName) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(ordernumber),
        userid,
        username,
        productid,
        productname,
        integral,
        const DeepCollectionEquality().hash(memo),
        status,
        number,
        ip,
        name,
        phone,
        location,
        shouhuodizhi,
        sendsms,
        type,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(expressOrder),
        const DeepCollectionEquality().hash(expressName),
        image,
        date
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {final int? id,
      final dynamic ordernumber,
      final int? userid,
      final String? username,
      final int? productid,
      final String? productname,
      final int? integral,
      final dynamic memo,
      final int? status,
      final int? number,
      final String? ip,
      final String? name,
      final String? phone,
      final String? location,
      final String? shouhuodizhi,
      final int? sendsms,
      final int? type,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final dynamic expressOrder,
      final dynamic expressName,
      final String? image,
      final String? date}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  int? get id;
  @override
  dynamic get ordernumber;
  @override
  int? get userid;
  @override
  String? get username;
  @override
  int? get productid;
  @override
  String? get productname;
  @override
  int? get integral;
  @override
  dynamic get memo;
  @override
  int? get status;
  @override
  int? get number;
  @override
  String? get ip;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get location;
  @override
  String? get shouhuodizhi;
  @override
  int? get sendsms;
  @override
  int? get type;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  dynamic get expressOrder;
  @override
  dynamic get expressName;
  @override
  String? get image;
  @override
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

/// @nodoc
mixin _$Link {
  String? get url => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkCopyWith<Link> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res, Link>;
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res, $Val extends Link>
    implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinkImplCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$$LinkImplCopyWith(
          _$LinkImpl value, $Res Function(_$LinkImpl) then) =
      __$$LinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? label, bool? active});
}

/// @nodoc
class __$$LinkImplCopyWithImpl<$Res>
    extends _$LinkCopyWithImpl<$Res, _$LinkImpl>
    implements _$$LinkImplCopyWith<$Res> {
  __$$LinkImplCopyWithImpl(_$LinkImpl _value, $Res Function(_$LinkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? label = freezed,
    Object? active = freezed,
  }) {
    return _then(_$LinkImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkImpl implements _Link {
  const _$LinkImpl({this.url, this.label, this.active});

  factory _$LinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkImplFromJson(json);

  @override
  final String? url;
  @override
  final String? label;
  @override
  final bool? active;

  @override
  String toString() {
    return 'Link(url: $url, label: $label, active: $active)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, label, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      __$$LinkImplCopyWithImpl<_$LinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkImplToJson(
      this,
    );
  }
}

abstract class _Link implements Link {
  const factory _Link(
      {final String? url,
      final String? label,
      final bool? active}) = _$LinkImpl;

  factory _Link.fromJson(Map<String, dynamic> json) = _$LinkImpl.fromJson;

  @override
  String? get url;
  @override
  String? get label;
  @override
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
