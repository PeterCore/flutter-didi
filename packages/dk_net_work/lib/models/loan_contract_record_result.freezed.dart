// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_contract_record_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoanContractRecordResult _$LoanContractRecordResultFromJson(
    Map<String, dynamic> json) {
  return _LoanContractRecordResult.fromJson(json);
}

/// @nodoc
mixin _$LoanContractRecordResult {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  LoanContractRecordList? get list => throw _privateConstructorUsedError;
  @JsonKey(name: "pagesize")
  String? get pagesize => throw _privateConstructorUsedError;
  @JsonKey(name: "download_switch")
  int? get downloadSwitch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoanContractRecordResultCopyWith<LoanContractRecordResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanContractRecordResultCopyWith<$Res> {
  factory $LoanContractRecordResultCopyWith(LoanContractRecordResult value,
          $Res Function(LoanContractRecordResult) then) =
      _$LoanContractRecordResultCopyWithImpl<$Res, LoanContractRecordResult>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "list") LoanContractRecordList? list,
      @JsonKey(name: "pagesize") String? pagesize,
      @JsonKey(name: "download_switch") int? downloadSwitch});

  $LoanContractRecordListCopyWith<$Res>? get list;
}

/// @nodoc
class _$LoanContractRecordResultCopyWithImpl<$Res,
        $Val extends LoanContractRecordResult>
    implements $LoanContractRecordResultCopyWith<$Res> {
  _$LoanContractRecordResultCopyWithImpl(this._value, this._then);

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
    Object? downloadSwitch = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as LoanContractRecordList?,
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadSwitch: freezed == downloadSwitch
          ? _value.downloadSwitch
          : downloadSwitch // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoanContractRecordListCopyWith<$Res>? get list {
    if (_value.list == null) {
      return null;
    }

    return $LoanContractRecordListCopyWith<$Res>(_value.list!, (value) {
      return _then(_value.copyWith(list: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoanContractRecordResultImplCopyWith<$Res>
    implements $LoanContractRecordResultCopyWith<$Res> {
  factory _$$LoanContractRecordResultImplCopyWith(
          _$LoanContractRecordResultImpl value,
          $Res Function(_$LoanContractRecordResultImpl) then) =
      __$$LoanContractRecordResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "list") LoanContractRecordList? list,
      @JsonKey(name: "pagesize") String? pagesize,
      @JsonKey(name: "download_switch") int? downloadSwitch});

  @override
  $LoanContractRecordListCopyWith<$Res>? get list;
}

/// @nodoc
class __$$LoanContractRecordResultImplCopyWithImpl<$Res>
    extends _$LoanContractRecordResultCopyWithImpl<$Res,
        _$LoanContractRecordResultImpl>
    implements _$$LoanContractRecordResultImplCopyWith<$Res> {
  __$$LoanContractRecordResultImplCopyWithImpl(
      _$LoanContractRecordResultImpl _value,
      $Res Function(_$LoanContractRecordResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
    Object? pagesize = freezed,
    Object? downloadSwitch = freezed,
  }) {
    return _then(_$LoanContractRecordResultImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as LoanContractRecordList?,
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as String?,
      downloadSwitch: freezed == downloadSwitch
          ? _value.downloadSwitch
          : downloadSwitch // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoanContractRecordResultImpl implements _LoanContractRecordResult {
  const _$LoanContractRecordResultImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "list") this.list,
      @JsonKey(name: "pagesize") this.pagesize,
      @JsonKey(name: "download_switch") this.downloadSwitch});

  factory _$LoanContractRecordResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanContractRecordResultImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "list")
  final LoanContractRecordList? list;
  @override
  @JsonKey(name: "pagesize")
  final String? pagesize;
  @override
  @JsonKey(name: "download_switch")
  final int? downloadSwitch;

  @override
  String toString() {
    return 'LoanContractRecordResult(status: $status, list: $list, pagesize: $pagesize, downloadSwitch: $downloadSwitch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanContractRecordResultImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.pagesize, pagesize) ||
                other.pagesize == pagesize) &&
            (identical(other.downloadSwitch, downloadSwitch) ||
                other.downloadSwitch == downloadSwitch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, list, pagesize, downloadSwitch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanContractRecordResultImplCopyWith<_$LoanContractRecordResultImpl>
      get copyWith => __$$LoanContractRecordResultImplCopyWithImpl<
          _$LoanContractRecordResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanContractRecordResultImplToJson(
      this,
    );
  }
}

abstract class _LoanContractRecordResult implements LoanContractRecordResult {
  const factory _LoanContractRecordResult(
          {@JsonKey(name: "status") final int? status,
          @JsonKey(name: "list") final LoanContractRecordList? list,
          @JsonKey(name: "pagesize") final String? pagesize,
          @JsonKey(name: "download_switch") final int? downloadSwitch}) =
      _$LoanContractRecordResultImpl;

  factory _LoanContractRecordResult.fromJson(Map<String, dynamic> json) =
      _$LoanContractRecordResultImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "list")
  LoanContractRecordList? get list;
  @override
  @JsonKey(name: "pagesize")
  String? get pagesize;
  @override
  @JsonKey(name: "download_switch")
  int? get downloadSwitch;
  @override
  @JsonKey(ignore: true)
  _$$LoanContractRecordResultImplCopyWith<_$LoanContractRecordResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LoanContractRecordList _$LoanContractRecordListFromJson(
    Map<String, dynamic> json) {
  return _LoanContractRecordList.fromJson(json);
}

/// @nodoc
mixin _$LoanContractRecordList {
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<LoanContractRecordItem>? get data => throw _privateConstructorUsedError;
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
  $LoanContractRecordListCopyWith<LoanContractRecordList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanContractRecordListCopyWith<$Res> {
  factory $LoanContractRecordListCopyWith(LoanContractRecordList value,
          $Res Function(LoanContractRecordList) then) =
      _$LoanContractRecordListCopyWithImpl<$Res, LoanContractRecordList>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<LoanContractRecordItem>? data,
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
class _$LoanContractRecordListCopyWithImpl<$Res,
        $Val extends LoanContractRecordList>
    implements $LoanContractRecordListCopyWith<$Res> {
  _$LoanContractRecordListCopyWithImpl(this._value, this._then);

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
              as List<LoanContractRecordItem>?,
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
abstract class _$$LoanContractRecordListImplCopyWith<$Res>
    implements $LoanContractRecordListCopyWith<$Res> {
  factory _$$LoanContractRecordListImplCopyWith(
          _$LoanContractRecordListImpl value,
          $Res Function(_$LoanContractRecordListImpl) then) =
      __$$LoanContractRecordListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<LoanContractRecordItem>? data,
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
class __$$LoanContractRecordListImplCopyWithImpl<$Res>
    extends _$LoanContractRecordListCopyWithImpl<$Res,
        _$LoanContractRecordListImpl>
    implements _$$LoanContractRecordListImplCopyWith<$Res> {
  __$$LoanContractRecordListImplCopyWithImpl(
      _$LoanContractRecordListImpl _value,
      $Res Function(_$LoanContractRecordListImpl) _then)
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
    return _then(_$LoanContractRecordListImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LoanContractRecordItem>?,
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
class _$LoanContractRecordListImpl implements _LoanContractRecordList {
  const _$LoanContractRecordListImpl(
      {@JsonKey(name: "current_page") this.currentPage,
      @JsonKey(name: "data") final List<LoanContractRecordItem>? data,
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

  factory _$LoanContractRecordListImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanContractRecordListImplFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  final List<LoanContractRecordItem>? _data;
  @override
  @JsonKey(name: "data")
  List<LoanContractRecordItem>? get data {
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
    return 'LoanContractRecordList(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanContractRecordListImpl &&
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
  _$$LoanContractRecordListImplCopyWith<_$LoanContractRecordListImpl>
      get copyWith => __$$LoanContractRecordListImplCopyWithImpl<
          _$LoanContractRecordListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanContractRecordListImplToJson(
      this,
    );
  }
}

abstract class _LoanContractRecordList implements LoanContractRecordList {
  const factory _LoanContractRecordList(
      {@JsonKey(name: "current_page") final int? currentPage,
      @JsonKey(name: "data") final List<LoanContractRecordItem>? data,
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
      @JsonKey(name: "total") final int? total}) = _$LoanContractRecordListImpl;

  factory _LoanContractRecordList.fromJson(Map<String, dynamic> json) =
      _$LoanContractRecordListImpl.fromJson;

  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  @JsonKey(name: "data")
  List<LoanContractRecordItem>? get data;
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
  _$$LoanContractRecordListImplCopyWith<_$LoanContractRecordListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LoanContractRecordItem _$LoanContractRecordItemFromJson(
    Map<String, dynamic> json) {
  return _LoanContractRecordItem.fromJson(json);
}

/// @nodoc
mixin _$LoanContractRecordItem {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userid")
  int? get userid => throw _privateConstructorUsedError;
  @JsonKey(name: "bianhao")
  String? get bianhao => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "number")
  int? get number => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "mark")
  String? get mark => throw _privateConstructorUsedError;
  @JsonKey(name: "rate")
  int? get rate => throw _privateConstructorUsedError;
  @JsonKey(name: "sign_img")
  String? get signImg => throw _privateConstructorUsedError;
  @JsonKey(name: "remain_download")
  int? get remainDownload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoanContractRecordItemCopyWith<LoanContractRecordItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanContractRecordItemCopyWith<$Res> {
  factory $LoanContractRecordItemCopyWith(LoanContractRecordItem value,
          $Res Function(LoanContractRecordItem) then) =
      _$LoanContractRecordItemCopyWithImpl<$Res, LoanContractRecordItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "userid") int? userid,
      @JsonKey(name: "bianhao") String? bianhao,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "number") int? number,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "mark") String? mark,
      @JsonKey(name: "rate") int? rate,
      @JsonKey(name: "sign_img") String? signImg,
      @JsonKey(name: "remain_download") int? remainDownload});
}

/// @nodoc
class _$LoanContractRecordItemCopyWithImpl<$Res,
        $Val extends LoanContractRecordItem>
    implements $LoanContractRecordItemCopyWith<$Res> {
  _$LoanContractRecordItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userid = freezed,
    Object? bianhao = freezed,
    Object? username = freezed,
    Object? number = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? mark = freezed,
    Object? rate = freezed,
    Object? signImg = freezed,
    Object? remainDownload = freezed,
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
      bianhao: freezed == bianhao
          ? _value.bianhao
          : bianhao // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mark: freezed == mark
          ? _value.mark
          : mark // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      signImg: freezed == signImg
          ? _value.signImg
          : signImg // ignore: cast_nullable_to_non_nullable
              as String?,
      remainDownload: freezed == remainDownload
          ? _value.remainDownload
          : remainDownload // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoanContractRecordItemImplCopyWith<$Res>
    implements $LoanContractRecordItemCopyWith<$Res> {
  factory _$$LoanContractRecordItemImplCopyWith(
          _$LoanContractRecordItemImpl value,
          $Res Function(_$LoanContractRecordItemImpl) then) =
      __$$LoanContractRecordItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "userid") int? userid,
      @JsonKey(name: "bianhao") String? bianhao,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "number") int? number,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "mark") String? mark,
      @JsonKey(name: "rate") int? rate,
      @JsonKey(name: "sign_img") String? signImg,
      @JsonKey(name: "remain_download") int? remainDownload});
}

/// @nodoc
class __$$LoanContractRecordItemImplCopyWithImpl<$Res>
    extends _$LoanContractRecordItemCopyWithImpl<$Res,
        _$LoanContractRecordItemImpl>
    implements _$$LoanContractRecordItemImplCopyWith<$Res> {
  __$$LoanContractRecordItemImplCopyWithImpl(
      _$LoanContractRecordItemImpl _value,
      $Res Function(_$LoanContractRecordItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userid = freezed,
    Object? bianhao = freezed,
    Object? username = freezed,
    Object? number = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? mark = freezed,
    Object? rate = freezed,
    Object? signImg = freezed,
    Object? remainDownload = freezed,
  }) {
    return _then(_$LoanContractRecordItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int?,
      bianhao: freezed == bianhao
          ? _value.bianhao
          : bianhao // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mark: freezed == mark
          ? _value.mark
          : mark // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      signImg: freezed == signImg
          ? _value.signImg
          : signImg // ignore: cast_nullable_to_non_nullable
              as String?,
      remainDownload: freezed == remainDownload
          ? _value.remainDownload
          : remainDownload // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoanContractRecordItemImpl implements _LoanContractRecordItem {
  const _$LoanContractRecordItemImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "userid") this.userid,
      @JsonKey(name: "bianhao") this.bianhao,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "number") this.number,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "mark") this.mark,
      @JsonKey(name: "rate") this.rate,
      @JsonKey(name: "sign_img") this.signImg,
      @JsonKey(name: "remain_download") this.remainDownload});

  factory _$LoanContractRecordItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanContractRecordItemImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "userid")
  final int? userid;
  @override
  @JsonKey(name: "bianhao")
  final String? bianhao;
  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "number")
  final int? number;
  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "mark")
  final String? mark;
  @override
  @JsonKey(name: "rate")
  final int? rate;
  @override
  @JsonKey(name: "sign_img")
  final String? signImg;
  @override
  @JsonKey(name: "remain_download")
  final int? remainDownload;

  @override
  String toString() {
    return 'LoanContractRecordItem(id: $id, userid: $userid, bianhao: $bianhao, username: $username, number: $number, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, mark: $mark, rate: $rate, signImg: $signImg, remainDownload: $remainDownload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanContractRecordItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.bianhao, bianhao) || other.bianhao == bianhao) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.mark, mark) || other.mark == mark) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.signImg, signImg) || other.signImg == signImg) &&
            (identical(other.remainDownload, remainDownload) ||
                other.remainDownload == remainDownload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userid,
      bianhao,
      username,
      number,
      status,
      createdAt,
      updatedAt,
      mark,
      rate,
      signImg,
      remainDownload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanContractRecordItemImplCopyWith<_$LoanContractRecordItemImpl>
      get copyWith => __$$LoanContractRecordItemImplCopyWithImpl<
          _$LoanContractRecordItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanContractRecordItemImplToJson(
      this,
    );
  }
}

abstract class _LoanContractRecordItem implements LoanContractRecordItem {
  const factory _LoanContractRecordItem(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "userid") final int? userid,
          @JsonKey(name: "bianhao") final String? bianhao,
          @JsonKey(name: "username") final String? username,
          @JsonKey(name: "number") final int? number,
          @JsonKey(name: "status") final int? status,
          @JsonKey(name: "created_at") final String? createdAt,
          @JsonKey(name: "updated_at") final String? updatedAt,
          @JsonKey(name: "mark") final String? mark,
          @JsonKey(name: "rate") final int? rate,
          @JsonKey(name: "sign_img") final String? signImg,
          @JsonKey(name: "remain_download") final int? remainDownload}) =
      _$LoanContractRecordItemImpl;

  factory _LoanContractRecordItem.fromJson(Map<String, dynamic> json) =
      _$LoanContractRecordItemImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "userid")
  int? get userid;
  @override
  @JsonKey(name: "bianhao")
  String? get bianhao;
  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "number")
  int? get number;
  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "mark")
  String? get mark;
  @override
  @JsonKey(name: "rate")
  int? get rate;
  @override
  @JsonKey(name: "sign_img")
  String? get signImg;
  @override
  @JsonKey(name: "remain_download")
  int? get remainDownload;
  @override
  @JsonKey(ignore: true)
  _$$LoanContractRecordItemImplCopyWith<_$LoanContractRecordItemImpl>
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
