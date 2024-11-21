// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_recode_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExchangeRecodeResult _$ExchangeRecodeResultFromJson(Map<String, dynamic> json) {
  return _ExchangeRecodeResult.fromJson(json);
}

/// @nodoc
mixin _$ExchangeRecodeResult {
  int? get status => throw _privateConstructorUsedError;
  ExchangeRecode? get list => throw _privateConstructorUsedError;
  String? get pagesize => throw _privateConstructorUsedError;
  int? get integral => throw _privateConstructorUsedError;
  String? get rules => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeRecodeResultCopyWith<ExchangeRecodeResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRecodeResultCopyWith<$Res> {
  factory $ExchangeRecodeResultCopyWith(ExchangeRecodeResult value,
          $Res Function(ExchangeRecodeResult) then) =
      _$ExchangeRecodeResultCopyWithImpl<$Res, ExchangeRecodeResult>;
  @useResult
  $Res call(
      {int? status,
      ExchangeRecode? list,
      String? pagesize,
      int? integral,
      String? rules});

  $ExchangeRecodeCopyWith<$Res>? get list;
}

/// @nodoc
class _$ExchangeRecodeResultCopyWithImpl<$Res,
        $Val extends ExchangeRecodeResult>
    implements $ExchangeRecodeResultCopyWith<$Res> {
  _$ExchangeRecodeResultCopyWithImpl(this._value, this._then);

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
              as ExchangeRecode?,
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
  $ExchangeRecodeCopyWith<$Res>? get list {
    if (_value.list == null) {
      return null;
    }

    return $ExchangeRecodeCopyWith<$Res>(_value.list!, (value) {
      return _then(_value.copyWith(list: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExchangeRecodeResultImplCopyWith<$Res>
    implements $ExchangeRecodeResultCopyWith<$Res> {
  factory _$$ExchangeRecodeResultImplCopyWith(_$ExchangeRecodeResultImpl value,
          $Res Function(_$ExchangeRecodeResultImpl) then) =
      __$$ExchangeRecodeResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? status,
      ExchangeRecode? list,
      String? pagesize,
      int? integral,
      String? rules});

  @override
  $ExchangeRecodeCopyWith<$Res>? get list;
}

/// @nodoc
class __$$ExchangeRecodeResultImplCopyWithImpl<$Res>
    extends _$ExchangeRecodeResultCopyWithImpl<$Res, _$ExchangeRecodeResultImpl>
    implements _$$ExchangeRecodeResultImplCopyWith<$Res> {
  __$$ExchangeRecodeResultImplCopyWithImpl(_$ExchangeRecodeResultImpl _value,
      $Res Function(_$ExchangeRecodeResultImpl) _then)
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
    return _then(_$ExchangeRecodeResultImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ExchangeRecode?,
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
class _$ExchangeRecodeResultImpl implements _ExchangeRecodeResult {
  const _$ExchangeRecodeResultImpl(
      {this.status, this.list, this.pagesize, this.integral, this.rules});

  factory _$ExchangeRecodeResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExchangeRecodeResultImplFromJson(json);

  @override
  final int? status;
  @override
  final ExchangeRecode? list;
  @override
  final String? pagesize;
  @override
  final int? integral;
  @override
  final String? rules;

  @override
  String toString() {
    return 'ExchangeRecodeResult(status: $status, list: $list, pagesize: $pagesize, integral: $integral, rules: $rules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExchangeRecodeResultImpl &&
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
  _$$ExchangeRecodeResultImplCopyWith<_$ExchangeRecodeResultImpl>
      get copyWith =>
          __$$ExchangeRecodeResultImplCopyWithImpl<_$ExchangeRecodeResultImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExchangeRecodeResultImplToJson(
      this,
    );
  }
}

abstract class _ExchangeRecodeResult implements ExchangeRecodeResult {
  const factory _ExchangeRecodeResult(
      {final int? status,
      final ExchangeRecode? list,
      final String? pagesize,
      final int? integral,
      final String? rules}) = _$ExchangeRecodeResultImpl;

  factory _ExchangeRecodeResult.fromJson(Map<String, dynamic> json) =
      _$ExchangeRecodeResultImpl.fromJson;

  @override
  int? get status;
  @override
  ExchangeRecode? get list;
  @override
  String? get pagesize;
  @override
  int? get integral;
  @override
  String? get rules;
  @override
  @JsonKey(ignore: true)
  _$$ExchangeRecodeResultImplCopyWith<_$ExchangeRecodeResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ExchangeRecode _$ExchangeRecodeFromJson(Map<String, dynamic> json) {
  return _ExchangeRecode.fromJson(json);
}

/// @nodoc
mixin _$ExchangeRecode {
  int? get currentPage => throw _privateConstructorUsedError;
  List<ExchangeRecodeItem>? get data => throw _privateConstructorUsedError;
  String? get firstPageUrl => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page_url")
  String? get lastPageUrl => throw _privateConstructorUsedError;
  List<Link>? get links => throw _privateConstructorUsedError;
  @JsonKey(name: "next_page_url")
  String? get nextPageUrl => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "prev_page_url")
  String? get prevPageUrl => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeRecodeCopyWith<ExchangeRecode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRecodeCopyWith<$Res> {
  factory $ExchangeRecodeCopyWith(
          ExchangeRecode value, $Res Function(ExchangeRecode) then) =
      _$ExchangeRecodeCopyWithImpl<$Res, ExchangeRecode>;
  @useResult
  $Res call(
      {int? currentPage,
      List<ExchangeRecodeItem>? data,
      String? firstPageUrl,
      int? from,
      int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      List<Link>? links,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      String? path,
      int? perPage,
      @JsonKey(name: "prev_page_url") String? prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class _$ExchangeRecodeCopyWithImpl<$Res, $Val extends ExchangeRecode>
    implements $ExchangeRecodeCopyWith<$Res> {
  _$ExchangeRecodeCopyWithImpl(this._value, this._then);

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
              as List<ExchangeRecodeItem>?,
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
              as String?,
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
              as String?,
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
abstract class _$$ExchangeRecodeImplCopyWith<$Res>
    implements $ExchangeRecodeCopyWith<$Res> {
  factory _$$ExchangeRecodeImplCopyWith(_$ExchangeRecodeImpl value,
          $Res Function(_$ExchangeRecodeImpl) then) =
      __$$ExchangeRecodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? currentPage,
      List<ExchangeRecodeItem>? data,
      String? firstPageUrl,
      int? from,
      int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      List<Link>? links,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      String? path,
      int? perPage,
      @JsonKey(name: "prev_page_url") String? prevPageUrl,
      int? to,
      int? total});
}

/// @nodoc
class __$$ExchangeRecodeImplCopyWithImpl<$Res>
    extends _$ExchangeRecodeCopyWithImpl<$Res, _$ExchangeRecodeImpl>
    implements _$$ExchangeRecodeImplCopyWith<$Res> {
  __$$ExchangeRecodeImplCopyWithImpl(
      _$ExchangeRecodeImpl _value, $Res Function(_$ExchangeRecodeImpl) _then)
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
    return _then(_$ExchangeRecodeImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ExchangeRecodeItem>?,
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
              as String?,
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
              as String?,
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
class _$ExchangeRecodeImpl implements _ExchangeRecode {
  const _$ExchangeRecodeImpl(
      {this.currentPage,
      final List<ExchangeRecodeItem>? data,
      this.firstPageUrl,
      this.from,
      this.lastPage,
      @JsonKey(name: "last_page_url") this.lastPageUrl,
      final List<Link>? links,
      @JsonKey(name: "next_page_url") this.nextPageUrl,
      this.path,
      this.perPage,
      @JsonKey(name: "prev_page_url") this.prevPageUrl,
      this.to,
      this.total})
      : _data = data,
        _links = links;

  factory _$ExchangeRecodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExchangeRecodeImplFromJson(json);

  @override
  final int? currentPage;
  final List<ExchangeRecodeItem>? _data;
  @override
  List<ExchangeRecodeItem>? get data {
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
  @JsonKey(name: "last_page_url")
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
  @JsonKey(name: "next_page_url")
  final String? nextPageUrl;
  @override
  final String? path;
  @override
  final int? perPage;
  @override
  @JsonKey(name: "prev_page_url")
  final String? prevPageUrl;
  @override
  final int? to;
  @override
  final int? total;

  @override
  String toString() {
    return 'ExchangeRecode(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExchangeRecodeImpl &&
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
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.prevPageUrl, prevPageUrl) ||
                other.prevPageUrl == prevPageUrl) &&
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
      nextPageUrl,
      path,
      perPage,
      prevPageUrl,
      to,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExchangeRecodeImplCopyWith<_$ExchangeRecodeImpl> get copyWith =>
      __$$ExchangeRecodeImplCopyWithImpl<_$ExchangeRecodeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExchangeRecodeImplToJson(
      this,
    );
  }
}

abstract class _ExchangeRecode implements ExchangeRecode {
  const factory _ExchangeRecode(
      {final int? currentPage,
      final List<ExchangeRecodeItem>? data,
      final String? firstPageUrl,
      final int? from,
      final int? lastPage,
      @JsonKey(name: "last_page_url") final String? lastPageUrl,
      final List<Link>? links,
      @JsonKey(name: "next_page_url") final String? nextPageUrl,
      final String? path,
      final int? perPage,
      @JsonKey(name: "prev_page_url") final String? prevPageUrl,
      final int? to,
      final int? total}) = _$ExchangeRecodeImpl;

  factory _ExchangeRecode.fromJson(Map<String, dynamic> json) =
      _$ExchangeRecodeImpl.fromJson;

  @override
  int? get currentPage;
  @override
  List<ExchangeRecodeItem>? get data;
  @override
  String? get firstPageUrl;
  @override
  int? get from;
  @override
  int? get lastPage;
  @override
  @JsonKey(name: "last_page_url")
  String? get lastPageUrl;
  @override
  List<Link>? get links;
  @override
  @JsonKey(name: "next_page_url")
  String? get nextPageUrl;
  @override
  String? get path;
  @override
  int? get perPage;
  @override
  @JsonKey(name: "prev_page_url")
  String? get prevPageUrl;
  @override
  int? get to;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$ExchangeRecodeImplCopyWith<_$ExchangeRecodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExchangeRecodeItem _$ExchangeRecodeItemFromJson(Map<String, dynamic> json) {
  return _ExchangeRecodeItem.fromJson(json);
}

/// @nodoc
mixin _$ExchangeRecodeItem {
  int? get id => throw _privateConstructorUsedError;
  String? get ordernumber => throw _privateConstructorUsedError;
  int? get userid => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  int? get productid => throw _privateConstructorUsedError;
  String? get productname => throw _privateConstructorUsedError;
  int? get integral => throw _privateConstructorUsedError;
  String? get memo => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;
  String? get ip => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get shouhuodizhi => throw _privateConstructorUsedError;
  int? get sendsms => throw _privateConstructorUsedError;
  int? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get expressOrder => throw _privateConstructorUsedError;
  String? get expressName => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExchangeRecodeItemCopyWith<ExchangeRecodeItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRecodeItemCopyWith<$Res> {
  factory $ExchangeRecodeItemCopyWith(
          ExchangeRecodeItem value, $Res Function(ExchangeRecodeItem) then) =
      _$ExchangeRecodeItemCopyWithImpl<$Res, ExchangeRecodeItem>;
  @useResult
  $Res call(
      {int? id,
      String? ordernumber,
      int? userid,
      String? username,
      int? productid,
      String? productname,
      int? integral,
      String? memo,
      int? status,
      int? number,
      String? ip,
      String? name,
      String? phone,
      String? location,
      String? shouhuodizhi,
      int? sendsms,
      int? type,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      String? expressOrder,
      String? expressName,
      String? image,
      String? date});
}

/// @nodoc
class _$ExchangeRecodeItemCopyWithImpl<$Res, $Val extends ExchangeRecodeItem>
    implements $ExchangeRecodeItemCopyWith<$Res> {
  _$ExchangeRecodeItemCopyWithImpl(this._value, this._then);

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
              as String?,
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
              as String?,
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
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      expressOrder: freezed == expressOrder
          ? _value.expressOrder
          : expressOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      expressName: freezed == expressName
          ? _value.expressName
          : expressName // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$ExchangeRecodeItemImplCopyWith<$Res>
    implements $ExchangeRecodeItemCopyWith<$Res> {
  factory _$$ExchangeRecodeItemImplCopyWith(_$ExchangeRecodeItemImpl value,
          $Res Function(_$ExchangeRecodeItemImpl) then) =
      __$$ExchangeRecodeItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? ordernumber,
      int? userid,
      String? username,
      int? productid,
      String? productname,
      int? integral,
      String? memo,
      int? status,
      int? number,
      String? ip,
      String? name,
      String? phone,
      String? location,
      String? shouhuodizhi,
      int? sendsms,
      int? type,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      String? expressOrder,
      String? expressName,
      String? image,
      String? date});
}

/// @nodoc
class __$$ExchangeRecodeItemImplCopyWithImpl<$Res>
    extends _$ExchangeRecodeItemCopyWithImpl<$Res, _$ExchangeRecodeItemImpl>
    implements _$$ExchangeRecodeItemImplCopyWith<$Res> {
  __$$ExchangeRecodeItemImplCopyWithImpl(_$ExchangeRecodeItemImpl _value,
      $Res Function(_$ExchangeRecodeItemImpl) _then)
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
    return _then(_$ExchangeRecodeItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      ordernumber: freezed == ordernumber
          ? _value.ordernumber
          : ordernumber // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
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
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      expressOrder: freezed == expressOrder
          ? _value.expressOrder
          : expressOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      expressName: freezed == expressName
          ? _value.expressName
          : expressName // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$ExchangeRecodeItemImpl implements _ExchangeRecodeItem {
  const _$ExchangeRecodeItemImpl(
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
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      this.expressOrder,
      this.expressName,
      this.image,
      this.date});

  factory _$ExchangeRecodeItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExchangeRecodeItemImplFromJson(json);

  @override
  final int? id;
  @override
  final String? ordernumber;
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
  final String? memo;
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
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  final String? expressOrder;
  @override
  final String? expressName;
  @override
  final String? image;
  @override
  final String? date;

  @override
  String toString() {
    return 'ExchangeRecodeItem(id: $id, ordernumber: $ordernumber, userid: $userid, username: $username, productid: $productid, productname: $productname, integral: $integral, memo: $memo, status: $status, number: $number, ip: $ip, name: $name, phone: $phone, location: $location, shouhuodizhi: $shouhuodizhi, sendsms: $sendsms, type: $type, createdAt: $createdAt, updatedAt: $updatedAt, expressOrder: $expressOrder, expressName: $expressName, image: $image, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExchangeRecodeItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ordernumber, ordernumber) ||
                other.ordernumber == ordernumber) &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.productid, productid) ||
                other.productid == productid) &&
            (identical(other.productname, productname) ||
                other.productname == productname) &&
            (identical(other.integral, integral) ||
                other.integral == integral) &&
            (identical(other.memo, memo) || other.memo == memo) &&
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
            (identical(other.expressOrder, expressOrder) ||
                other.expressOrder == expressOrder) &&
            (identical(other.expressName, expressName) ||
                other.expressName == expressName) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        ordernumber,
        userid,
        username,
        productid,
        productname,
        integral,
        memo,
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
        expressOrder,
        expressName,
        image,
        date
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExchangeRecodeItemImplCopyWith<_$ExchangeRecodeItemImpl> get copyWith =>
      __$$ExchangeRecodeItemImplCopyWithImpl<_$ExchangeRecodeItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExchangeRecodeItemImplToJson(
      this,
    );
  }
}

abstract class _ExchangeRecodeItem implements ExchangeRecodeItem {
  const factory _ExchangeRecodeItem(
      {final int? id,
      final String? ordernumber,
      final int? userid,
      final String? username,
      final int? productid,
      final String? productname,
      final int? integral,
      final String? memo,
      final int? status,
      final int? number,
      final String? ip,
      final String? name,
      final String? phone,
      final String? location,
      final String? shouhuodizhi,
      final int? sendsms,
      final int? type,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      final String? expressOrder,
      final String? expressName,
      final String? image,
      final String? date}) = _$ExchangeRecodeItemImpl;

  factory _ExchangeRecodeItem.fromJson(Map<String, dynamic> json) =
      _$ExchangeRecodeItemImpl.fromJson;

  @override
  int? get id;
  @override
  String? get ordernumber;
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
  String? get memo;
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
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  String? get expressOrder;
  @override
  String? get expressName;
  @override
  String? get image;
  @override
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$ExchangeRecodeItemImplCopyWith<_$ExchangeRecodeItemImpl> get copyWith =>
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
