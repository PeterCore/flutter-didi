// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'yu_e_bao_transactions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

YueBaoTransactionsModel _$YueBaoTransactionsModelFromJson(
    Map<String, dynamic> json) {
  return _YueBaoTransactionsModel.fromJson(json);
}

/// @nodoc
mixin _$YueBaoTransactionsModel {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "isequity")
  int? get isequity => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  YuEBaoTransactionsList? get list => throw _privateConstructorUsedError;
  @JsonKey(name: "pagesize")
  int? get pagesize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YueBaoTransactionsModelCopyWith<YueBaoTransactionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YueBaoTransactionsModelCopyWith<$Res> {
  factory $YueBaoTransactionsModelCopyWith(YueBaoTransactionsModel value,
          $Res Function(YueBaoTransactionsModel) then) =
      _$YueBaoTransactionsModelCopyWithImpl<$Res, YueBaoTransactionsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "isequity") int? isequity,
      @JsonKey(name: "list") YuEBaoTransactionsList? list,
      @JsonKey(name: "pagesize") int? pagesize});

  $YuEBaoTransactionsListCopyWith<$Res>? get list;
}

/// @nodoc
class _$YueBaoTransactionsModelCopyWithImpl<$Res,
        $Val extends YueBaoTransactionsModel>
    implements $YueBaoTransactionsModelCopyWith<$Res> {
  _$YueBaoTransactionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? isequity = freezed,
    Object? list = freezed,
    Object? pagesize = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isequity: freezed == isequity
          ? _value.isequity
          : isequity // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as YuEBaoTransactionsList?,
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $YuEBaoTransactionsListCopyWith<$Res>? get list {
    if (_value.list == null) {
      return null;
    }

    return $YuEBaoTransactionsListCopyWith<$Res>(_value.list!, (value) {
      return _then(_value.copyWith(list: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$YueBaoTransactionsModelImplCopyWith<$Res>
    implements $YueBaoTransactionsModelCopyWith<$Res> {
  factory _$$YueBaoTransactionsModelImplCopyWith(
          _$YueBaoTransactionsModelImpl value,
          $Res Function(_$YueBaoTransactionsModelImpl) then) =
      __$$YueBaoTransactionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "isequity") int? isequity,
      @JsonKey(name: "list") YuEBaoTransactionsList? list,
      @JsonKey(name: "pagesize") int? pagesize});

  @override
  $YuEBaoTransactionsListCopyWith<$Res>? get list;
}

/// @nodoc
class __$$YueBaoTransactionsModelImplCopyWithImpl<$Res>
    extends _$YueBaoTransactionsModelCopyWithImpl<$Res,
        _$YueBaoTransactionsModelImpl>
    implements _$$YueBaoTransactionsModelImplCopyWith<$Res> {
  __$$YueBaoTransactionsModelImplCopyWithImpl(
      _$YueBaoTransactionsModelImpl _value,
      $Res Function(_$YueBaoTransactionsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? isequity = freezed,
    Object? list = freezed,
    Object? pagesize = freezed,
  }) {
    return _then(_$YueBaoTransactionsModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      isequity: freezed == isequity
          ? _value.isequity
          : isequity // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as YuEBaoTransactionsList?,
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YueBaoTransactionsModelImpl implements _YueBaoTransactionsModel {
  const _$YueBaoTransactionsModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "isequity") this.isequity,
      @JsonKey(name: "list") this.list,
      @JsonKey(name: "pagesize") this.pagesize});

  factory _$YueBaoTransactionsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$YueBaoTransactionsModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "isequity")
  final int? isequity;
  @override
  @JsonKey(name: "list")
  final YuEBaoTransactionsList? list;
  @override
  @JsonKey(name: "pagesize")
  final int? pagesize;

  @override
  String toString() {
    return 'YueBaoTransactionsModel(status: $status, isequity: $isequity, list: $list, pagesize: $pagesize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YueBaoTransactionsModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isequity, isequity) ||
                other.isequity == isequity) &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.pagesize, pagesize) ||
                other.pagesize == pagesize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, isequity, list, pagesize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YueBaoTransactionsModelImplCopyWith<_$YueBaoTransactionsModelImpl>
      get copyWith => __$$YueBaoTransactionsModelImplCopyWithImpl<
          _$YueBaoTransactionsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YueBaoTransactionsModelImplToJson(
      this,
    );
  }
}

abstract class _YueBaoTransactionsModel implements YueBaoTransactionsModel {
  const factory _YueBaoTransactionsModel(
          {@JsonKey(name: "status") final int? status,
          @JsonKey(name: "isequity") final int? isequity,
          @JsonKey(name: "list") final YuEBaoTransactionsList? list,
          @JsonKey(name: "pagesize") final int? pagesize}) =
      _$YueBaoTransactionsModelImpl;

  factory _YueBaoTransactionsModel.fromJson(Map<String, dynamic> json) =
      _$YueBaoTransactionsModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "isequity")
  int? get isequity;
  @override
  @JsonKey(name: "list")
  YuEBaoTransactionsList? get list;
  @override
  @JsonKey(name: "pagesize")
  int? get pagesize;
  @override
  @JsonKey(ignore: true)
  _$$YueBaoTransactionsModelImplCopyWith<_$YueBaoTransactionsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

YuEBaoTransactionsList _$YuEBaoTransactionsListFromJson(
    Map<String, dynamic> json) {
  return _YuEBaoTransactionsList.fromJson(json);
}

/// @nodoc
mixin _$YuEBaoTransactionsList {
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<YuEBaoTransactionsItem>? get data => throw _privateConstructorUsedError;
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
  $YuEBaoTransactionsListCopyWith<YuEBaoTransactionsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YuEBaoTransactionsListCopyWith<$Res> {
  factory $YuEBaoTransactionsListCopyWith(YuEBaoTransactionsList value,
          $Res Function(YuEBaoTransactionsList) then) =
      _$YuEBaoTransactionsListCopyWithImpl<$Res, YuEBaoTransactionsList>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<YuEBaoTransactionsItem>? data,
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
class _$YuEBaoTransactionsListCopyWithImpl<$Res,
        $Val extends YuEBaoTransactionsList>
    implements $YuEBaoTransactionsListCopyWith<$Res> {
  _$YuEBaoTransactionsListCopyWithImpl(this._value, this._then);

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
              as List<YuEBaoTransactionsItem>?,
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
abstract class _$$YuEBaoTransactionsListImplCopyWith<$Res>
    implements $YuEBaoTransactionsListCopyWith<$Res> {
  factory _$$YuEBaoTransactionsListImplCopyWith(
          _$YuEBaoTransactionsListImpl value,
          $Res Function(_$YuEBaoTransactionsListImpl) then) =
      __$$YuEBaoTransactionsListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<YuEBaoTransactionsItem>? data,
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
class __$$YuEBaoTransactionsListImplCopyWithImpl<$Res>
    extends _$YuEBaoTransactionsListCopyWithImpl<$Res,
        _$YuEBaoTransactionsListImpl>
    implements _$$YuEBaoTransactionsListImplCopyWith<$Res> {
  __$$YuEBaoTransactionsListImplCopyWithImpl(
      _$YuEBaoTransactionsListImpl _value,
      $Res Function(_$YuEBaoTransactionsListImpl) _then)
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
    return _then(_$YuEBaoTransactionsListImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<YuEBaoTransactionsItem>?,
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
class _$YuEBaoTransactionsListImpl implements _YuEBaoTransactionsList {
  const _$YuEBaoTransactionsListImpl(
      {@JsonKey(name: "current_page") this.currentPage,
      @JsonKey(name: "data") final List<YuEBaoTransactionsItem>? data,
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

  factory _$YuEBaoTransactionsListImpl.fromJson(Map<String, dynamic> json) =>
      _$$YuEBaoTransactionsListImplFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  final List<YuEBaoTransactionsItem>? _data;
  @override
  @JsonKey(name: "data")
  List<YuEBaoTransactionsItem>? get data {
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
    return 'YuEBaoTransactionsList(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YuEBaoTransactionsListImpl &&
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
  _$$YuEBaoTransactionsListImplCopyWith<_$YuEBaoTransactionsListImpl>
      get copyWith => __$$YuEBaoTransactionsListImplCopyWithImpl<
          _$YuEBaoTransactionsListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YuEBaoTransactionsListImplToJson(
      this,
    );
  }
}

abstract class _YuEBaoTransactionsList implements YuEBaoTransactionsList {
  const factory _YuEBaoTransactionsList(
      {@JsonKey(name: "current_page") final int? currentPage,
      @JsonKey(name: "data") final List<YuEBaoTransactionsItem>? data,
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
      @JsonKey(name: "total") final int? total}) = _$YuEBaoTransactionsListImpl;

  factory _YuEBaoTransactionsList.fromJson(Map<String, dynamic> json) =
      _$YuEBaoTransactionsListImpl.fromJson;

  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  @JsonKey(name: "data")
  List<YuEBaoTransactionsItem>? get data;
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
  _$$YuEBaoTransactionsListImplCopyWith<_$YuEBaoTransactionsListImpl>
      get copyWith => throw _privateConstructorUsedError;
}

YuEBaoTransactionsItem _$YuEBaoTransactionsItemFromJson(
    Map<String, dynamic> json) {
  return _YuEBaoTransactionsItem.fromJson(json);
}

/// @nodoc
mixin _$YuEBaoTransactionsItem {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_userid")
  int? get moneylogUserid => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_money")
  int? get moneylogMoney => throw _privateConstructorUsedError;
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
  String? get moneylogExt => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_houamount")
  int? get moneylogHouamount => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_yuanamount")
  int? get moneylogYuanamount => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "isext")
  int? get isext => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YuEBaoTransactionsItemCopyWith<YuEBaoTransactionsItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YuEBaoTransactionsItemCopyWith<$Res> {
  factory $YuEBaoTransactionsItemCopyWith(YuEBaoTransactionsItem value,
          $Res Function(YuEBaoTransactionsItem) then) =
      _$YuEBaoTransactionsItemCopyWithImpl<$Res, YuEBaoTransactionsItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "moneylog_userid") int? moneylogUserid,
      @JsonKey(name: "moneylog_money") int? moneylogMoney,
      @JsonKey(name: "danwei") String? danwei,
      @JsonKey(name: "moneylog_ip") String? moneylogIp,
      @JsonKey(name: "moneylog_status") String? moneylogStatus,
      @JsonKey(name: "moneylog_type") String? moneylogType,
      @JsonKey(name: "moneylog_notice") String? moneylogNotice,
      @JsonKey(name: "moneylog_ext") String? moneylogExt,
      @JsonKey(name: "moneylog_houamount") int? moneylogHouamount,
      @JsonKey(name: "moneylog_yuanamount") int? moneylogYuanamount,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "isext") int? isext,
      @JsonKey(name: "date") String? date});
}

/// @nodoc
class _$YuEBaoTransactionsItemCopyWithImpl<$Res,
        $Val extends YuEBaoTransactionsItem>
    implements $YuEBaoTransactionsItemCopyWith<$Res> {
  _$YuEBaoTransactionsItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? moneylogUserid = freezed,
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
    Object? isext = freezed,
    Object? date = freezed,
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
      moneylogMoney: freezed == moneylogMoney
          ? _value.moneylogMoney
          : moneylogMoney // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as String?,
      moneylogHouamount: freezed == moneylogHouamount
          ? _value.moneylogHouamount
          : moneylogHouamount // ignore: cast_nullable_to_non_nullable
              as int?,
      moneylogYuanamount: freezed == moneylogYuanamount
          ? _value.moneylogYuanamount
          : moneylogYuanamount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isext: freezed == isext
          ? _value.isext
          : isext // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$YuEBaoTransactionsItemImplCopyWith<$Res>
    implements $YuEBaoTransactionsItemCopyWith<$Res> {
  factory _$$YuEBaoTransactionsItemImplCopyWith(
          _$YuEBaoTransactionsItemImpl value,
          $Res Function(_$YuEBaoTransactionsItemImpl) then) =
      __$$YuEBaoTransactionsItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "moneylog_userid") int? moneylogUserid,
      @JsonKey(name: "moneylog_money") int? moneylogMoney,
      @JsonKey(name: "danwei") String? danwei,
      @JsonKey(name: "moneylog_ip") String? moneylogIp,
      @JsonKey(name: "moneylog_status") String? moneylogStatus,
      @JsonKey(name: "moneylog_type") String? moneylogType,
      @JsonKey(name: "moneylog_notice") String? moneylogNotice,
      @JsonKey(name: "moneylog_ext") String? moneylogExt,
      @JsonKey(name: "moneylog_houamount") int? moneylogHouamount,
      @JsonKey(name: "moneylog_yuanamount") int? moneylogYuanamount,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "isext") int? isext,
      @JsonKey(name: "date") String? date});
}

/// @nodoc
class __$$YuEBaoTransactionsItemImplCopyWithImpl<$Res>
    extends _$YuEBaoTransactionsItemCopyWithImpl<$Res,
        _$YuEBaoTransactionsItemImpl>
    implements _$$YuEBaoTransactionsItemImplCopyWith<$Res> {
  __$$YuEBaoTransactionsItemImplCopyWithImpl(
      _$YuEBaoTransactionsItemImpl _value,
      $Res Function(_$YuEBaoTransactionsItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? moneylogUserid = freezed,
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
    Object? isext = freezed,
    Object? date = freezed,
  }) {
    return _then(_$YuEBaoTransactionsItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      moneylogUserid: freezed == moneylogUserid
          ? _value.moneylogUserid
          : moneylogUserid // ignore: cast_nullable_to_non_nullable
              as int?,
      moneylogMoney: freezed == moneylogMoney
          ? _value.moneylogMoney
          : moneylogMoney // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as String?,
      moneylogHouamount: freezed == moneylogHouamount
          ? _value.moneylogHouamount
          : moneylogHouamount // ignore: cast_nullable_to_non_nullable
              as int?,
      moneylogYuanamount: freezed == moneylogYuanamount
          ? _value.moneylogYuanamount
          : moneylogYuanamount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isext: freezed == isext
          ? _value.isext
          : isext // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YuEBaoTransactionsItemImpl implements _YuEBaoTransactionsItem {
  const _$YuEBaoTransactionsItemImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "moneylog_userid") this.moneylogUserid,
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
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "isext") this.isext,
      @JsonKey(name: "date") this.date});

  factory _$YuEBaoTransactionsItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$YuEBaoTransactionsItemImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "moneylog_userid")
  final int? moneylogUserid;
  @override
  @JsonKey(name: "moneylog_money")
  final int? moneylogMoney;
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
  final String? moneylogExt;
  @override
  @JsonKey(name: "moneylog_houamount")
  final int? moneylogHouamount;
  @override
  @JsonKey(name: "moneylog_yuanamount")
  final int? moneylogYuanamount;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "isext")
  final int? isext;
  @override
  @JsonKey(name: "date")
  final String? date;

  @override
  String toString() {
    return 'YuEBaoTransactionsItem(id: $id, moneylogUserid: $moneylogUserid, moneylogMoney: $moneylogMoney, danwei: $danwei, moneylogIp: $moneylogIp, moneylogStatus: $moneylogStatus, moneylogType: $moneylogType, moneylogNotice: $moneylogNotice, moneylogExt: $moneylogExt, moneylogHouamount: $moneylogHouamount, moneylogYuanamount: $moneylogYuanamount, createdAt: $createdAt, updatedAt: $updatedAt, isext: $isext, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YuEBaoTransactionsItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.moneylogUserid, moneylogUserid) ||
                other.moneylogUserid == moneylogUserid) &&
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
            (identical(other.moneylogExt, moneylogExt) ||
                other.moneylogExt == moneylogExt) &&
            (identical(other.moneylogHouamount, moneylogHouamount) ||
                other.moneylogHouamount == moneylogHouamount) &&
            (identical(other.moneylogYuanamount, moneylogYuanamount) ||
                other.moneylogYuanamount == moneylogYuanamount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isext, isext) || other.isext == isext) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      moneylogUserid,
      moneylogMoney,
      danwei,
      moneylogIp,
      moneylogStatus,
      moneylogType,
      moneylogNotice,
      moneylogExt,
      moneylogHouamount,
      moneylogYuanamount,
      createdAt,
      updatedAt,
      isext,
      date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YuEBaoTransactionsItemImplCopyWith<_$YuEBaoTransactionsItemImpl>
      get copyWith => __$$YuEBaoTransactionsItemImplCopyWithImpl<
          _$YuEBaoTransactionsItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YuEBaoTransactionsItemImplToJson(
      this,
    );
  }
}

abstract class _YuEBaoTransactionsItem implements YuEBaoTransactionsItem {
  const factory _YuEBaoTransactionsItem(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "moneylog_userid") final int? moneylogUserid,
          @JsonKey(name: "moneylog_money") final int? moneylogMoney,
          @JsonKey(name: "danwei") final String? danwei,
          @JsonKey(name: "moneylog_ip") final String? moneylogIp,
          @JsonKey(name: "moneylog_status") final String? moneylogStatus,
          @JsonKey(name: "moneylog_type") final String? moneylogType,
          @JsonKey(name: "moneylog_notice") final String? moneylogNotice,
          @JsonKey(name: "moneylog_ext") final String? moneylogExt,
          @JsonKey(name: "moneylog_houamount") final int? moneylogHouamount,
          @JsonKey(name: "moneylog_yuanamount") final int? moneylogYuanamount,
          @JsonKey(name: "created_at") final String? createdAt,
          @JsonKey(name: "updated_at") final String? updatedAt,
          @JsonKey(name: "isext") final int? isext,
          @JsonKey(name: "date") final String? date}) =
      _$YuEBaoTransactionsItemImpl;

  factory _YuEBaoTransactionsItem.fromJson(Map<String, dynamic> json) =
      _$YuEBaoTransactionsItemImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "moneylog_userid")
  int? get moneylogUserid;
  @override
  @JsonKey(name: "moneylog_money")
  int? get moneylogMoney;
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
  String? get moneylogExt;
  @override
  @JsonKey(name: "moneylog_houamount")
  int? get moneylogHouamount;
  @override
  @JsonKey(name: "moneylog_yuanamount")
  int? get moneylogYuanamount;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "isext")
  int? get isext;
  @override
  @JsonKey(name: "date")
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$YuEBaoTransactionsItemImplCopyWith<_$YuEBaoTransactionsItemImpl>
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
