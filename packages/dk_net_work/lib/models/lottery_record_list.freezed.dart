// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lottery_record_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LotteryRecordList _$LotteryRecordListFromJson(Map<String, dynamic> json) {
  return _LotteryRecordList.fromJson(json);
}

/// @nodoc
mixin _$LotteryRecordList {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  LotteryRecord? get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LotteryRecordListCopyWith<LotteryRecordList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotteryRecordListCopyWith<$Res> {
  factory $LotteryRecordListCopyWith(
          LotteryRecordList value, $Res Function(LotteryRecordList) then) =
      _$LotteryRecordListCopyWithImpl<$Res, LotteryRecordList>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "list") LotteryRecord? list});

  $LotteryRecordCopyWith<$Res>? get list;
}

/// @nodoc
class _$LotteryRecordListCopyWithImpl<$Res, $Val extends LotteryRecordList>
    implements $LotteryRecordListCopyWith<$Res> {
  _$LotteryRecordListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as LotteryRecord?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LotteryRecordCopyWith<$Res>? get list {
    if (_value.list == null) {
      return null;
    }

    return $LotteryRecordCopyWith<$Res>(_value.list!, (value) {
      return _then(_value.copyWith(list: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LotteryRecordListImplCopyWith<$Res>
    implements $LotteryRecordListCopyWith<$Res> {
  factory _$$LotteryRecordListImplCopyWith(_$LotteryRecordListImpl value,
          $Res Function(_$LotteryRecordListImpl) then) =
      __$$LotteryRecordListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "list") LotteryRecord? list});

  @override
  $LotteryRecordCopyWith<$Res>? get list;
}

/// @nodoc
class __$$LotteryRecordListImplCopyWithImpl<$Res>
    extends _$LotteryRecordListCopyWithImpl<$Res, _$LotteryRecordListImpl>
    implements _$$LotteryRecordListImplCopyWith<$Res> {
  __$$LotteryRecordListImplCopyWithImpl(_$LotteryRecordListImpl _value,
      $Res Function(_$LotteryRecordListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
  }) {
    return _then(_$LotteryRecordListImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as LotteryRecord?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LotteryRecordListImpl implements _LotteryRecordList {
  const _$LotteryRecordListImpl(
      {@JsonKey(name: "status") this.status, @JsonKey(name: "list") this.list});

  factory _$LotteryRecordListImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotteryRecordListImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "list")
  final LotteryRecord? list;

  @override
  String toString() {
    return 'LotteryRecordList(status: $status, list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotteryRecordListImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.list, list) || other.list == list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, list);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotteryRecordListImplCopyWith<_$LotteryRecordListImpl> get copyWith =>
      __$$LotteryRecordListImplCopyWithImpl<_$LotteryRecordListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotteryRecordListImplToJson(
      this,
    );
  }
}

abstract class _LotteryRecordList implements LotteryRecordList {
  const factory _LotteryRecordList(
          {@JsonKey(name: "status") final int? status,
          @JsonKey(name: "list") final LotteryRecord? list}) =
      _$LotteryRecordListImpl;

  factory _LotteryRecordList.fromJson(Map<String, dynamic> json) =
      _$LotteryRecordListImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "list")
  LotteryRecord? get list;
  @override
  @JsonKey(ignore: true)
  _$$LotteryRecordListImplCopyWith<_$LotteryRecordListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LotteryRecord _$LotteryRecordFromJson(Map<String, dynamic> json) {
  return _LotteryRecord.fromJson(json);
}

/// @nodoc
mixin _$LotteryRecord {
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<LotteryRecordItem>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "first_page_url")
  String? get firstPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "from")
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page")
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page_url")
  String? get lastPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "links")
  List<Link>? get links => throw _privateConstructorUsedError;
  @JsonKey(name: "next_page_url")
  String? get nextPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "path")
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "prev_page_url")
  String? get prevPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "to")
  int? get to => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LotteryRecordCopyWith<LotteryRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotteryRecordCopyWith<$Res> {
  factory $LotteryRecordCopyWith(
          LotteryRecord value, $Res Function(LotteryRecord) then) =
      _$LotteryRecordCopyWithImpl<$Res, LotteryRecord>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<LotteryRecordItem>? data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      @JsonKey(name: "links") List<Link>? links,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      @JsonKey(name: "path") String? path,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "prev_page_url") String? prevPageUrl,
      @JsonKey(name: "to") int? to,
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class _$LotteryRecordCopyWithImpl<$Res, $Val extends LotteryRecord>
    implements $LotteryRecordCopyWith<$Res> {
  _$LotteryRecordCopyWithImpl(this._value, this._then);

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
              as List<LotteryRecordItem>?,
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
abstract class _$$LotteryRecordImplCopyWith<$Res>
    implements $LotteryRecordCopyWith<$Res> {
  factory _$$LotteryRecordImplCopyWith(
          _$LotteryRecordImpl value, $Res Function(_$LotteryRecordImpl) then) =
      __$$LotteryRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<LotteryRecordItem>? data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      @JsonKey(name: "links") List<Link>? links,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      @JsonKey(name: "path") String? path,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "prev_page_url") String? prevPageUrl,
      @JsonKey(name: "to") int? to,
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class __$$LotteryRecordImplCopyWithImpl<$Res>
    extends _$LotteryRecordCopyWithImpl<$Res, _$LotteryRecordImpl>
    implements _$$LotteryRecordImplCopyWith<$Res> {
  __$$LotteryRecordImplCopyWithImpl(
      _$LotteryRecordImpl _value, $Res Function(_$LotteryRecordImpl) _then)
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
    return _then(_$LotteryRecordImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LotteryRecordItem>?,
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
class _$LotteryRecordImpl implements _LotteryRecord {
  const _$LotteryRecordImpl(
      {@JsonKey(name: "current_page") this.currentPage,
      @JsonKey(name: "data") final List<LotteryRecordItem>? data,
      @JsonKey(name: "first_page_url") this.firstPageUrl,
      @JsonKey(name: "from") this.from,
      @JsonKey(name: "last_page") this.lastPage,
      @JsonKey(name: "last_page_url") this.lastPageUrl,
      @JsonKey(name: "links") final List<Link>? links,
      @JsonKey(name: "next_page_url") this.nextPageUrl,
      @JsonKey(name: "path") this.path,
      @JsonKey(name: "per_page") this.perPage,
      @JsonKey(name: "prev_page_url") this.prevPageUrl,
      @JsonKey(name: "to") this.to,
      @JsonKey(name: "total") this.total})
      : _data = data,
        _links = links;

  factory _$LotteryRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotteryRecordImplFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  final List<LotteryRecordItem>? _data;
  @override
  @JsonKey(name: "data")
  List<LotteryRecordItem>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "first_page_url")
  final String? firstPageUrl;
  @override
  @JsonKey(name: "from")
  final int? from;
  @override
  @JsonKey(name: "last_page")
  final int? lastPage;
  @override
  @JsonKey(name: "last_page_url")
  final String? lastPageUrl;
  final List<Link>? _links;
  @override
  @JsonKey(name: "links")
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
  @JsonKey(name: "path")
  final String? path;
  @override
  @JsonKey(name: "per_page")
  final int? perPage;
  @override
  @JsonKey(name: "prev_page_url")
  final String? prevPageUrl;
  @override
  @JsonKey(name: "to")
  final int? to;
  @override
  @JsonKey(name: "total")
  final int? total;

  @override
  String toString() {
    return 'LotteryRecord(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotteryRecordImpl &&
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
  _$$LotteryRecordImplCopyWith<_$LotteryRecordImpl> get copyWith =>
      __$$LotteryRecordImplCopyWithImpl<_$LotteryRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotteryRecordImplToJson(
      this,
    );
  }
}

abstract class _LotteryRecord implements LotteryRecord {
  const factory _LotteryRecord(
      {@JsonKey(name: "current_page") final int? currentPage,
      @JsonKey(name: "data") final List<LotteryRecordItem>? data,
      @JsonKey(name: "first_page_url") final String? firstPageUrl,
      @JsonKey(name: "from") final int? from,
      @JsonKey(name: "last_page") final int? lastPage,
      @JsonKey(name: "last_page_url") final String? lastPageUrl,
      @JsonKey(name: "links") final List<Link>? links,
      @JsonKey(name: "next_page_url") final String? nextPageUrl,
      @JsonKey(name: "path") final String? path,
      @JsonKey(name: "per_page") final int? perPage,
      @JsonKey(name: "prev_page_url") final String? prevPageUrl,
      @JsonKey(name: "to") final int? to,
      @JsonKey(name: "total") final int? total}) = _$LotteryRecordImpl;

  factory _LotteryRecord.fromJson(Map<String, dynamic> json) =
      _$LotteryRecordImpl.fromJson;

  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  @JsonKey(name: "data")
  List<LotteryRecordItem>? get data;
  @override
  @JsonKey(name: "first_page_url")
  String? get firstPageUrl;
  @override
  @JsonKey(name: "from")
  int? get from;
  @override
  @JsonKey(name: "last_page")
  int? get lastPage;
  @override
  @JsonKey(name: "last_page_url")
  String? get lastPageUrl;
  @override
  @JsonKey(name: "links")
  List<Link>? get links;
  @override
  @JsonKey(name: "next_page_url")
  String? get nextPageUrl;
  @override
  @JsonKey(name: "path")
  String? get path;
  @override
  @JsonKey(name: "per_page")
  int? get perPage;
  @override
  @JsonKey(name: "prev_page_url")
  String? get prevPageUrl;
  @override
  @JsonKey(name: "to")
  int? get to;
  @override
  @JsonKey(name: "total")
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$LotteryRecordImplCopyWith<_$LotteryRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LotteryRecordItem _$LotteryRecordItemFromJson(Map<String, dynamic> json) {
  return _LotteryRecordItem.fromJson(json);
}

/// @nodoc
mixin _$LotteryRecordItem {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  int? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "type_name")
  String? get typeName => throw _privateConstructorUsedError;
  @JsonKey(name: "prize_name")
  String? get prizeName => throw _privateConstructorUsedError;
  @JsonKey(name: "money")
  dynamic get money => throw _privateConstructorUsedError;
  @JsonKey(name: "expdate")
  String? get expdate => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LotteryRecordItemCopyWith<LotteryRecordItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotteryRecordItemCopyWith<$Res> {
  factory $LotteryRecordItemCopyWith(
          LotteryRecordItem value, $Res Function(LotteryRecordItem) then) =
      _$LotteryRecordItemCopyWithImpl<$Res, LotteryRecordItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "type") int? type,
      @JsonKey(name: "type_name") String? typeName,
      @JsonKey(name: "prize_name") String? prizeName,
      @JsonKey(name: "money") dynamic money,
      @JsonKey(name: "expdate") String? expdate,
      @JsonKey(name: "image") String? image});
}

/// @nodoc
class _$LotteryRecordItemCopyWithImpl<$Res, $Val extends LotteryRecordItem>
    implements $LotteryRecordItemCopyWith<$Res> {
  _$LotteryRecordItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? type = freezed,
    Object? typeName = freezed,
    Object? prizeName = freezed,
    Object? money = freezed,
    Object? expdate = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      typeName: freezed == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
      prizeName: freezed == prizeName
          ? _value.prizeName
          : prizeName // ignore: cast_nullable_to_non_nullable
              as String?,
      money: freezed == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as dynamic,
      expdate: freezed == expdate
          ? _value.expdate
          : expdate // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LotteryRecordItemImplCopyWith<$Res>
    implements $LotteryRecordItemCopyWith<$Res> {
  factory _$$LotteryRecordItemImplCopyWith(_$LotteryRecordItemImpl value,
          $Res Function(_$LotteryRecordItemImpl) then) =
      __$$LotteryRecordItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "type") int? type,
      @JsonKey(name: "type_name") String? typeName,
      @JsonKey(name: "prize_name") String? prizeName,
      @JsonKey(name: "money") dynamic money,
      @JsonKey(name: "expdate") String? expdate,
      @JsonKey(name: "image") String? image});
}

/// @nodoc
class __$$LotteryRecordItemImplCopyWithImpl<$Res>
    extends _$LotteryRecordItemCopyWithImpl<$Res, _$LotteryRecordItemImpl>
    implements _$$LotteryRecordItemImplCopyWith<$Res> {
  __$$LotteryRecordItemImplCopyWithImpl(_$LotteryRecordItemImpl _value,
      $Res Function(_$LotteryRecordItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? type = freezed,
    Object? typeName = freezed,
    Object? prizeName = freezed,
    Object? money = freezed,
    Object? expdate = freezed,
    Object? image = freezed,
  }) {
    return _then(_$LotteryRecordItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      typeName: freezed == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
      prizeName: freezed == prizeName
          ? _value.prizeName
          : prizeName // ignore: cast_nullable_to_non_nullable
              as String?,
      money: freezed == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as dynamic,
      expdate: freezed == expdate
          ? _value.expdate
          : expdate // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LotteryRecordItemImpl implements _LotteryRecordItem {
  const _$LotteryRecordItemImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "type_name") this.typeName,
      @JsonKey(name: "prize_name") this.prizeName,
      @JsonKey(name: "money") this.money,
      @JsonKey(name: "expdate") this.expdate,
      @JsonKey(name: "image") this.image});

  factory _$LotteryRecordItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotteryRecordItemImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "type")
  final int? type;
  @override
  @JsonKey(name: "type_name")
  final String? typeName;
  @override
  @JsonKey(name: "prize_name")
  final String? prizeName;
  @override
  @JsonKey(name: "money")
  final dynamic money;
  @override
  @JsonKey(name: "expdate")
  final String? expdate;
  @override
  @JsonKey(name: "image")
  final String? image;

  @override
  String toString() {
    return 'LotteryRecordItem(id: $id, createdAt: $createdAt, type: $type, typeName: $typeName, prizeName: $prizeName, money: $money, expdate: $expdate, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotteryRecordItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.prizeName, prizeName) ||
                other.prizeName == prizeName) &&
            const DeepCollectionEquality().equals(other.money, money) &&
            (identical(other.expdate, expdate) || other.expdate == expdate) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, type, typeName,
      prizeName, const DeepCollectionEquality().hash(money), expdate, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotteryRecordItemImplCopyWith<_$LotteryRecordItemImpl> get copyWith =>
      __$$LotteryRecordItemImplCopyWithImpl<_$LotteryRecordItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotteryRecordItemImplToJson(
      this,
    );
  }
}

abstract class _LotteryRecordItem implements LotteryRecordItem {
  const factory _LotteryRecordItem(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "type") final int? type,
      @JsonKey(name: "type_name") final String? typeName,
      @JsonKey(name: "prize_name") final String? prizeName,
      @JsonKey(name: "money") final dynamic money,
      @JsonKey(name: "expdate") final String? expdate,
      @JsonKey(name: "image") final String? image}) = _$LotteryRecordItemImpl;

  factory _LotteryRecordItem.fromJson(Map<String, dynamic> json) =
      _$LotteryRecordItemImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "type")
  int? get type;
  @override
  @JsonKey(name: "type_name")
  String? get typeName;
  @override
  @JsonKey(name: "prize_name")
  String? get prizeName;
  @override
  @JsonKey(name: "money")
  dynamic get money;
  @override
  @JsonKey(name: "expdate")
  String? get expdate;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$LotteryRecordItemImplCopyWith<_$LotteryRecordItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

/// @nodoc
mixin _$Link {
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: "label")
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: "active")
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
  $Res call(
      {@JsonKey(name: "url") String? url,
      @JsonKey(name: "label") String? label,
      @JsonKey(name: "active") bool? active});
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
  $Res call(
      {@JsonKey(name: "url") String? url,
      @JsonKey(name: "label") String? label,
      @JsonKey(name: "active") bool? active});
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
  const _$LinkImpl(
      {@JsonKey(name: "url") this.url,
      @JsonKey(name: "label") this.label,
      @JsonKey(name: "active") this.active});

  factory _$LinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkImplFromJson(json);

  @override
  @JsonKey(name: "url")
  final String? url;
  @override
  @JsonKey(name: "label")
  final String? label;
  @override
  @JsonKey(name: "active")
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
      {@JsonKey(name: "url") final String? url,
      @JsonKey(name: "label") final String? label,
      @JsonKey(name: "active") final bool? active}) = _$LinkImpl;

  factory _Link.fromJson(Map<String, dynamic> json) = _$LinkImpl.fromJson;

  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(name: "label")
  String? get label;
  @override
  @JsonKey(name: "active")
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
