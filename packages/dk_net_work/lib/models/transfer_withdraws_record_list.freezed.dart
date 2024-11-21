// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_withdraws_record_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransferWithdrawsRecordList _$TransferWithdrawsRecordListFromJson(
    Map<String, dynamic> json) {
  return _TransferWithdrawsRecordList.fromJson(json);
}

/// @nodoc
mixin _$TransferWithdrawsRecordList {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  TransferWithdrawsRecords? get list => throw _privateConstructorUsedError;
  @JsonKey(name: "pagesize")
  String? get pagesize => throw _privateConstructorUsedError;
  @JsonKey(name: "chenggong")
  String? get chenggong => throw _privateConstructorUsedError;
  @JsonKey(name: "dendai")
  String? get dendai => throw _privateConstructorUsedError;
  @JsonKey(name: "shibai")
  String? get shibai => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransferWithdrawsRecordListCopyWith<TransferWithdrawsRecordList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferWithdrawsRecordListCopyWith<$Res> {
  factory $TransferWithdrawsRecordListCopyWith(
          TransferWithdrawsRecordList value,
          $Res Function(TransferWithdrawsRecordList) then) =
      _$TransferWithdrawsRecordListCopyWithImpl<$Res,
          TransferWithdrawsRecordList>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "list") TransferWithdrawsRecords? list,
      @JsonKey(name: "pagesize") String? pagesize,
      @JsonKey(name: "chenggong") String? chenggong,
      @JsonKey(name: "dendai") String? dendai,
      @JsonKey(name: "shibai") String? shibai});

  $TransferWithdrawsRecordsCopyWith<$Res>? get list;
}

/// @nodoc
class _$TransferWithdrawsRecordListCopyWithImpl<$Res,
        $Val extends TransferWithdrawsRecordList>
    implements $TransferWithdrawsRecordListCopyWith<$Res> {
  _$TransferWithdrawsRecordListCopyWithImpl(this._value, this._then);

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
    Object? chenggong = freezed,
    Object? dendai = freezed,
    Object? shibai = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as TransferWithdrawsRecords?,
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as String?,
      chenggong: freezed == chenggong
          ? _value.chenggong
          : chenggong // ignore: cast_nullable_to_non_nullable
              as String?,
      dendai: freezed == dendai
          ? _value.dendai
          : dendai // ignore: cast_nullable_to_non_nullable
              as String?,
      shibai: freezed == shibai
          ? _value.shibai
          : shibai // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransferWithdrawsRecordsCopyWith<$Res>? get list {
    if (_value.list == null) {
      return null;
    }

    return $TransferWithdrawsRecordsCopyWith<$Res>(_value.list!, (value) {
      return _then(_value.copyWith(list: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransferWithdrawsRecordListImplCopyWith<$Res>
    implements $TransferWithdrawsRecordListCopyWith<$Res> {
  factory _$$TransferWithdrawsRecordListImplCopyWith(
          _$TransferWithdrawsRecordListImpl value,
          $Res Function(_$TransferWithdrawsRecordListImpl) then) =
      __$$TransferWithdrawsRecordListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "list") TransferWithdrawsRecords? list,
      @JsonKey(name: "pagesize") String? pagesize,
      @JsonKey(name: "chenggong") String? chenggong,
      @JsonKey(name: "dendai") String? dendai,
      @JsonKey(name: "shibai") String? shibai});

  @override
  $TransferWithdrawsRecordsCopyWith<$Res>? get list;
}

/// @nodoc
class __$$TransferWithdrawsRecordListImplCopyWithImpl<$Res>
    extends _$TransferWithdrawsRecordListCopyWithImpl<$Res,
        _$TransferWithdrawsRecordListImpl>
    implements _$$TransferWithdrawsRecordListImplCopyWith<$Res> {
  __$$TransferWithdrawsRecordListImplCopyWithImpl(
      _$TransferWithdrawsRecordListImpl _value,
      $Res Function(_$TransferWithdrawsRecordListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
    Object? pagesize = freezed,
    Object? chenggong = freezed,
    Object? dendai = freezed,
    Object? shibai = freezed,
  }) {
    return _then(_$TransferWithdrawsRecordListImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as TransferWithdrawsRecords?,
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as String?,
      chenggong: freezed == chenggong
          ? _value.chenggong
          : chenggong // ignore: cast_nullable_to_non_nullable
              as String?,
      dendai: freezed == dendai
          ? _value.dendai
          : dendai // ignore: cast_nullable_to_non_nullable
              as String?,
      shibai: freezed == shibai
          ? _value.shibai
          : shibai // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransferWithdrawsRecordListImpl
    implements _TransferWithdrawsRecordList {
  const _$TransferWithdrawsRecordListImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "list") this.list,
      @JsonKey(name: "pagesize") this.pagesize,
      @JsonKey(name: "chenggong") this.chenggong,
      @JsonKey(name: "dendai") this.dendai,
      @JsonKey(name: "shibai") this.shibai});

  factory _$TransferWithdrawsRecordListImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TransferWithdrawsRecordListImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "list")
  final TransferWithdrawsRecords? list;
  @override
  @JsonKey(name: "pagesize")
  final String? pagesize;
  @override
  @JsonKey(name: "chenggong")
  final String? chenggong;
  @override
  @JsonKey(name: "dendai")
  final String? dendai;
  @override
  @JsonKey(name: "shibai")
  final String? shibai;

  @override
  String toString() {
    return 'TransferWithdrawsRecordList(status: $status, list: $list, pagesize: $pagesize, chenggong: $chenggong, dendai: $dendai, shibai: $shibai)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferWithdrawsRecordListImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.pagesize, pagesize) ||
                other.pagesize == pagesize) &&
            (identical(other.chenggong, chenggong) ||
                other.chenggong == chenggong) &&
            (identical(other.dendai, dendai) || other.dendai == dendai) &&
            (identical(other.shibai, shibai) || other.shibai == shibai));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, list, pagesize, chenggong, dendai, shibai);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferWithdrawsRecordListImplCopyWith<_$TransferWithdrawsRecordListImpl>
      get copyWith => __$$TransferWithdrawsRecordListImplCopyWithImpl<
          _$TransferWithdrawsRecordListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransferWithdrawsRecordListImplToJson(
      this,
    );
  }
}

abstract class _TransferWithdrawsRecordList
    implements TransferWithdrawsRecordList {
  const factory _TransferWithdrawsRecordList(
          {@JsonKey(name: "status") final int? status,
          @JsonKey(name: "list") final TransferWithdrawsRecords? list,
          @JsonKey(name: "pagesize") final String? pagesize,
          @JsonKey(name: "chenggong") final String? chenggong,
          @JsonKey(name: "dendai") final String? dendai,
          @JsonKey(name: "shibai") final String? shibai}) =
      _$TransferWithdrawsRecordListImpl;

  factory _TransferWithdrawsRecordList.fromJson(Map<String, dynamic> json) =
      _$TransferWithdrawsRecordListImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "list")
  TransferWithdrawsRecords? get list;
  @override
  @JsonKey(name: "pagesize")
  String? get pagesize;
  @override
  @JsonKey(name: "chenggong")
  String? get chenggong;
  @override
  @JsonKey(name: "dendai")
  String? get dendai;
  @override
  @JsonKey(name: "shibai")
  String? get shibai;
  @override
  @JsonKey(ignore: true)
  _$$TransferWithdrawsRecordListImplCopyWith<_$TransferWithdrawsRecordListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TransferWithdrawsRecords _$TransferWithdrawsRecordsFromJson(
    Map<String, dynamic> json) {
  return _TransferWithdrawsRecords.fromJson(json);
}

/// @nodoc
mixin _$TransferWithdrawsRecords {
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<TransferWithdrawsRecordItem>? get data =>
      throw _privateConstructorUsedError;
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
  dynamic get nextPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "path")
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "prev_page_url")
  dynamic get prevPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "to")
  int? get to => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransferWithdrawsRecordsCopyWith<TransferWithdrawsRecords> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferWithdrawsRecordsCopyWith<$Res> {
  factory $TransferWithdrawsRecordsCopyWith(TransferWithdrawsRecords value,
          $Res Function(TransferWithdrawsRecords) then) =
      _$TransferWithdrawsRecordsCopyWithImpl<$Res, TransferWithdrawsRecords>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<TransferWithdrawsRecordItem>? data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      @JsonKey(name: "links") List<Link>? links,
      @JsonKey(name: "next_page_url") dynamic nextPageUrl,
      @JsonKey(name: "path") String? path,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
      @JsonKey(name: "to") int? to,
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class _$TransferWithdrawsRecordsCopyWithImpl<$Res,
        $Val extends TransferWithdrawsRecords>
    implements $TransferWithdrawsRecordsCopyWith<$Res> {
  _$TransferWithdrawsRecordsCopyWithImpl(this._value, this._then);

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
              as List<TransferWithdrawsRecordItem>?,
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
abstract class _$$TransferWithdrawsRecordsImplCopyWith<$Res>
    implements $TransferWithdrawsRecordsCopyWith<$Res> {
  factory _$$TransferWithdrawsRecordsImplCopyWith(
          _$TransferWithdrawsRecordsImpl value,
          $Res Function(_$TransferWithdrawsRecordsImpl) then) =
      __$$TransferWithdrawsRecordsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<TransferWithdrawsRecordItem>? data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      @JsonKey(name: "links") List<Link>? links,
      @JsonKey(name: "next_page_url") dynamic nextPageUrl,
      @JsonKey(name: "path") String? path,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
      @JsonKey(name: "to") int? to,
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class __$$TransferWithdrawsRecordsImplCopyWithImpl<$Res>
    extends _$TransferWithdrawsRecordsCopyWithImpl<$Res,
        _$TransferWithdrawsRecordsImpl>
    implements _$$TransferWithdrawsRecordsImplCopyWith<$Res> {
  __$$TransferWithdrawsRecordsImplCopyWithImpl(
      _$TransferWithdrawsRecordsImpl _value,
      $Res Function(_$TransferWithdrawsRecordsImpl) _then)
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
    return _then(_$TransferWithdrawsRecordsImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TransferWithdrawsRecordItem>?,
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
class _$TransferWithdrawsRecordsImpl implements _TransferWithdrawsRecords {
  const _$TransferWithdrawsRecordsImpl(
      {@JsonKey(name: "current_page") this.currentPage,
      @JsonKey(name: "data") final List<TransferWithdrawsRecordItem>? data,
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

  factory _$TransferWithdrawsRecordsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransferWithdrawsRecordsImplFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  final List<TransferWithdrawsRecordItem>? _data;
  @override
  @JsonKey(name: "data")
  List<TransferWithdrawsRecordItem>? get data {
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
  final dynamic nextPageUrl;
  @override
  @JsonKey(name: "path")
  final String? path;
  @override
  @JsonKey(name: "per_page")
  final int? perPage;
  @override
  @JsonKey(name: "prev_page_url")
  final dynamic prevPageUrl;
  @override
  @JsonKey(name: "to")
  final int? to;
  @override
  @JsonKey(name: "total")
  final int? total;

  @override
  String toString() {
    return 'TransferWithdrawsRecords(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferWithdrawsRecordsImpl &&
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
  _$$TransferWithdrawsRecordsImplCopyWith<_$TransferWithdrawsRecordsImpl>
      get copyWith => __$$TransferWithdrawsRecordsImplCopyWithImpl<
          _$TransferWithdrawsRecordsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransferWithdrawsRecordsImplToJson(
      this,
    );
  }
}

abstract class _TransferWithdrawsRecords implements TransferWithdrawsRecords {
  const factory _TransferWithdrawsRecords(
          {@JsonKey(name: "current_page") final int? currentPage,
          @JsonKey(name: "data") final List<TransferWithdrawsRecordItem>? data,
          @JsonKey(name: "first_page_url") final String? firstPageUrl,
          @JsonKey(name: "from") final int? from,
          @JsonKey(name: "last_page") final int? lastPage,
          @JsonKey(name: "last_page_url") final String? lastPageUrl,
          @JsonKey(name: "links") final List<Link>? links,
          @JsonKey(name: "next_page_url") final dynamic nextPageUrl,
          @JsonKey(name: "path") final String? path,
          @JsonKey(name: "per_page") final int? perPage,
          @JsonKey(name: "prev_page_url") final dynamic prevPageUrl,
          @JsonKey(name: "to") final int? to,
          @JsonKey(name: "total") final int? total}) =
      _$TransferWithdrawsRecordsImpl;

  factory _TransferWithdrawsRecords.fromJson(Map<String, dynamic> json) =
      _$TransferWithdrawsRecordsImpl.fromJson;

  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  @JsonKey(name: "data")
  List<TransferWithdrawsRecordItem>? get data;
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
  dynamic get nextPageUrl;
  @override
  @JsonKey(name: "path")
  String? get path;
  @override
  @JsonKey(name: "per_page")
  int? get perPage;
  @override
  @JsonKey(name: "prev_page_url")
  dynamic get prevPageUrl;
  @override
  @JsonKey(name: "to")
  int? get to;
  @override
  @JsonKey(name: "total")
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$TransferWithdrawsRecordsImplCopyWith<_$TransferWithdrawsRecordsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TransferWithdrawsRecordItem _$TransferWithdrawsRecordItemFromJson(
    Map<String, dynamic> json) {
  return _TransferWithdrawsRecordItem.fromJson(json);
}

/// @nodoc
mixin _$TransferWithdrawsRecordItem {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userid")
  int? get userid => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "memo")
  String? get memo => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "istype")
  int? get istype => throw _privateConstructorUsedError;
  @JsonKey(name: "ip")
  String? get ip => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  int? get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "sendsms")
  int? get sendsms => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "isdao")
  int? get isdao => throw _privateConstructorUsedError;
  @JsonKey(name: "CNY")
  double? get cny => throw _privateConstructorUsedError;
  @JsonKey(name: "zhuanuserid")
  int? get zhuanuserid => throw _privateConstructorUsedError;
  @JsonKey(name: "backtype")
  int? get backtype => throw _privateConstructorUsedError;
  @JsonKey(name: "reason")
  String? get reason => throw _privateConstructorUsedError;
  @JsonKey(name: "qd")
  String? get qd => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "withdraw_amount")
  String? get withdrawAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "status_text")
  String? get statusText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransferWithdrawsRecordItemCopyWith<TransferWithdrawsRecordItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferWithdrawsRecordItemCopyWith<$Res> {
  factory $TransferWithdrawsRecordItemCopyWith(
          TransferWithdrawsRecordItem value,
          $Res Function(TransferWithdrawsRecordItem) then) =
      _$TransferWithdrawsRecordItemCopyWithImpl<$Res,
          TransferWithdrawsRecordItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "userid") int? userid,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "memo") String? memo,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "istype") int? istype,
      @JsonKey(name: "ip") String? ip,
      @JsonKey(name: "uuid") int? uuid,
      @JsonKey(name: "sendsms") int? sendsms,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "isdao") int? isdao,
      @JsonKey(name: "CNY") double? cny,
      @JsonKey(name: "zhuanuserid") int? zhuanuserid,
      @JsonKey(name: "backtype") int? backtype,
      @JsonKey(name: "reason") String? reason,
      @JsonKey(name: "qd") String? qd,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "withdraw_amount") String? withdrawAmount,
      @JsonKey(name: "status_text") String? statusText});
}

/// @nodoc
class _$TransferWithdrawsRecordItemCopyWithImpl<$Res,
        $Val extends TransferWithdrawsRecordItem>
    implements $TransferWithdrawsRecordItemCopyWith<$Res> {
  _$TransferWithdrawsRecordItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userid = freezed,
    Object? amount = freezed,
    Object? memo = freezed,
    Object? status = freezed,
    Object? istype = freezed,
    Object? ip = freezed,
    Object? uuid = freezed,
    Object? sendsms = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isdao = freezed,
    Object? cny = freezed,
    Object? zhuanuserid = freezed,
    Object? backtype = freezed,
    Object? reason = freezed,
    Object? qd = freezed,
    Object? date = freezed,
    Object? type = freezed,
    Object? withdrawAmount = freezed,
    Object? statusText = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      istype: freezed == istype
          ? _value.istype
          : istype // ignore: cast_nullable_to_non_nullable
              as int?,
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int?,
      sendsms: freezed == sendsms
          ? _value.sendsms
          : sendsms // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isdao: freezed == isdao
          ? _value.isdao
          : isdao // ignore: cast_nullable_to_non_nullable
              as int?,
      cny: freezed == cny
          ? _value.cny
          : cny // ignore: cast_nullable_to_non_nullable
              as double?,
      zhuanuserid: freezed == zhuanuserid
          ? _value.zhuanuserid
          : zhuanuserid // ignore: cast_nullable_to_non_nullable
              as int?,
      backtype: freezed == backtype
          ? _value.backtype
          : backtype // ignore: cast_nullable_to_non_nullable
              as int?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      qd: freezed == qd
          ? _value.qd
          : qd // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      withdrawAmount: freezed == withdrawAmount
          ? _value.withdrawAmount
          : withdrawAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      statusText: freezed == statusText
          ? _value.statusText
          : statusText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransferWithdrawsRecordItemImplCopyWith<$Res>
    implements $TransferWithdrawsRecordItemCopyWith<$Res> {
  factory _$$TransferWithdrawsRecordItemImplCopyWith(
          _$TransferWithdrawsRecordItemImpl value,
          $Res Function(_$TransferWithdrawsRecordItemImpl) then) =
      __$$TransferWithdrawsRecordItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "userid") int? userid,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "memo") String? memo,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "istype") int? istype,
      @JsonKey(name: "ip") String? ip,
      @JsonKey(name: "uuid") int? uuid,
      @JsonKey(name: "sendsms") int? sendsms,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "isdao") int? isdao,
      @JsonKey(name: "CNY") double? cny,
      @JsonKey(name: "zhuanuserid") int? zhuanuserid,
      @JsonKey(name: "backtype") int? backtype,
      @JsonKey(name: "reason") String? reason,
      @JsonKey(name: "qd") String? qd,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "withdraw_amount") String? withdrawAmount,
      @JsonKey(name: "status_text") String? statusText});
}

/// @nodoc
class __$$TransferWithdrawsRecordItemImplCopyWithImpl<$Res>
    extends _$TransferWithdrawsRecordItemCopyWithImpl<$Res,
        _$TransferWithdrawsRecordItemImpl>
    implements _$$TransferWithdrawsRecordItemImplCopyWith<$Res> {
  __$$TransferWithdrawsRecordItemImplCopyWithImpl(
      _$TransferWithdrawsRecordItemImpl _value,
      $Res Function(_$TransferWithdrawsRecordItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userid = freezed,
    Object? amount = freezed,
    Object? memo = freezed,
    Object? status = freezed,
    Object? istype = freezed,
    Object? ip = freezed,
    Object? uuid = freezed,
    Object? sendsms = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isdao = freezed,
    Object? cny = freezed,
    Object? zhuanuserid = freezed,
    Object? backtype = freezed,
    Object? reason = freezed,
    Object? qd = freezed,
    Object? date = freezed,
    Object? type = freezed,
    Object? withdrawAmount = freezed,
    Object? statusText = freezed,
  }) {
    return _then(_$TransferWithdrawsRecordItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      istype: freezed == istype
          ? _value.istype
          : istype // ignore: cast_nullable_to_non_nullable
              as int?,
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as int?,
      sendsms: freezed == sendsms
          ? _value.sendsms
          : sendsms // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isdao: freezed == isdao
          ? _value.isdao
          : isdao // ignore: cast_nullable_to_non_nullable
              as int?,
      cny: freezed == cny
          ? _value.cny
          : cny // ignore: cast_nullable_to_non_nullable
              as double?,
      zhuanuserid: freezed == zhuanuserid
          ? _value.zhuanuserid
          : zhuanuserid // ignore: cast_nullable_to_non_nullable
              as int?,
      backtype: freezed == backtype
          ? _value.backtype
          : backtype // ignore: cast_nullable_to_non_nullable
              as int?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      qd: freezed == qd
          ? _value.qd
          : qd // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      withdrawAmount: freezed == withdrawAmount
          ? _value.withdrawAmount
          : withdrawAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      statusText: freezed == statusText
          ? _value.statusText
          : statusText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransferWithdrawsRecordItemImpl
    implements _TransferWithdrawsRecordItem {
  const _$TransferWithdrawsRecordItemImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "userid") this.userid,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "memo") this.memo,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "istype") this.istype,
      @JsonKey(name: "ip") this.ip,
      @JsonKey(name: "uuid") this.uuid,
      @JsonKey(name: "sendsms") this.sendsms,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "isdao") this.isdao,
      @JsonKey(name: "CNY") this.cny,
      @JsonKey(name: "zhuanuserid") this.zhuanuserid,
      @JsonKey(name: "backtype") this.backtype,
      @JsonKey(name: "reason") this.reason,
      @JsonKey(name: "qd") this.qd,
      @JsonKey(name: "date") this.date,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "withdraw_amount") this.withdrawAmount,
      @JsonKey(name: "status_text") this.statusText});

  factory _$TransferWithdrawsRecordItemImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TransferWithdrawsRecordItemImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "userid")
  final int? userid;
  @override
  @JsonKey(name: "amount")
  final int? amount;
  @override
  @JsonKey(name: "memo")
  final String? memo;
  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "istype")
  final int? istype;
  @override
  @JsonKey(name: "ip")
  final String? ip;
  @override
  @JsonKey(name: "uuid")
  final int? uuid;
  @override
  @JsonKey(name: "sendsms")
  final int? sendsms;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "isdao")
  final int? isdao;
  @override
  @JsonKey(name: "CNY")
  final double? cny;
  @override
  @JsonKey(name: "zhuanuserid")
  final int? zhuanuserid;
  @override
  @JsonKey(name: "backtype")
  final int? backtype;
  @override
  @JsonKey(name: "reason")
  final String? reason;
  @override
  @JsonKey(name: "qd")
  final String? qd;
  @override
  @JsonKey(name: "date")
  final String? date;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "withdraw_amount")
  final String? withdrawAmount;
  @override
  @JsonKey(name: "status_text")
  final String? statusText;

  @override
  String toString() {
    return 'TransferWithdrawsRecordItem(id: $id, userid: $userid, amount: $amount, memo: $memo, status: $status, istype: $istype, ip: $ip, uuid: $uuid, sendsms: $sendsms, createdAt: $createdAt, updatedAt: $updatedAt, isdao: $isdao, cny: $cny, zhuanuserid: $zhuanuserid, backtype: $backtype, reason: $reason, qd: $qd, date: $date, type: $type, withdrawAmount: $withdrawAmount, statusText: $statusText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferWithdrawsRecordItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.istype, istype) || other.istype == istype) &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.sendsms, sendsms) || other.sendsms == sendsms) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isdao, isdao) || other.isdao == isdao) &&
            (identical(other.cny, cny) || other.cny == cny) &&
            (identical(other.zhuanuserid, zhuanuserid) ||
                other.zhuanuserid == zhuanuserid) &&
            (identical(other.backtype, backtype) ||
                other.backtype == backtype) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.qd, qd) || other.qd == qd) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.withdrawAmount, withdrawAmount) ||
                other.withdrawAmount == withdrawAmount) &&
            (identical(other.statusText, statusText) ||
                other.statusText == statusText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userid,
        amount,
        memo,
        status,
        istype,
        ip,
        uuid,
        sendsms,
        createdAt,
        updatedAt,
        isdao,
        cny,
        zhuanuserid,
        backtype,
        reason,
        qd,
        date,
        type,
        withdrawAmount,
        statusText
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferWithdrawsRecordItemImplCopyWith<_$TransferWithdrawsRecordItemImpl>
      get copyWith => __$$TransferWithdrawsRecordItemImplCopyWithImpl<
          _$TransferWithdrawsRecordItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransferWithdrawsRecordItemImplToJson(
      this,
    );
  }
}

abstract class _TransferWithdrawsRecordItem
    implements TransferWithdrawsRecordItem {
  const factory _TransferWithdrawsRecordItem(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "userid") final int? userid,
          @JsonKey(name: "amount") final int? amount,
          @JsonKey(name: "memo") final String? memo,
          @JsonKey(name: "status") final int? status,
          @JsonKey(name: "istype") final int? istype,
          @JsonKey(name: "ip") final String? ip,
          @JsonKey(name: "uuid") final int? uuid,
          @JsonKey(name: "sendsms") final int? sendsms,
          @JsonKey(name: "created_at") final String? createdAt,
          @JsonKey(name: "updated_at") final String? updatedAt,
          @JsonKey(name: "isdao") final int? isdao,
          @JsonKey(name: "CNY") final double? cny,
          @JsonKey(name: "zhuanuserid") final int? zhuanuserid,
          @JsonKey(name: "backtype") final int? backtype,
          @JsonKey(name: "reason") final String? reason,
          @JsonKey(name: "qd") final String? qd,
          @JsonKey(name: "date") final String? date,
          @JsonKey(name: "type") final String? type,
          @JsonKey(name: "withdraw_amount") final String? withdrawAmount,
          @JsonKey(name: "status_text") final String? statusText}) =
      _$TransferWithdrawsRecordItemImpl;

  factory _TransferWithdrawsRecordItem.fromJson(Map<String, dynamic> json) =
      _$TransferWithdrawsRecordItemImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "userid")
  int? get userid;
  @override
  @JsonKey(name: "amount")
  int? get amount;
  @override
  @JsonKey(name: "memo")
  String? get memo;
  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "istype")
  int? get istype;
  @override
  @JsonKey(name: "ip")
  String? get ip;
  @override
  @JsonKey(name: "uuid")
  int? get uuid;
  @override
  @JsonKey(name: "sendsms")
  int? get sendsms;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "isdao")
  int? get isdao;
  @override
  @JsonKey(name: "CNY")
  double? get cny;
  @override
  @JsonKey(name: "zhuanuserid")
  int? get zhuanuserid;
  @override
  @JsonKey(name: "backtype")
  int? get backtype;
  @override
  @JsonKey(name: "reason")
  String? get reason;
  @override
  @JsonKey(name: "qd")
  String? get qd;
  @override
  @JsonKey(name: "date")
  String? get date;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "withdraw_amount")
  String? get withdrawAmount;
  @override
  @JsonKey(name: "status_text")
  String? get statusText;
  @override
  @JsonKey(ignore: true)
  _$$TransferWithdrawsRecordItemImplCopyWith<_$TransferWithdrawsRecordItemImpl>
      get copyWith => throw _privateConstructorUsedError;
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
