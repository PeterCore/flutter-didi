// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductListModel _$ProductListModelFromJson(Map<String, dynamic> json) {
  return _ProductListModel.fromJson(json);
}

/// @nodoc
mixin _$ProductListModel {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  String? get msg => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  ListClass? get list => throw _privateConstructorUsedError;
  @JsonKey(name: "pagesize")
  int? get pagesize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductListModelCopyWith<ProductListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListModelCopyWith<$Res> {
  factory $ProductListModelCopyWith(
          ProductListModel value, $Res Function(ProductListModel) then) =
      _$ProductListModelCopyWithImpl<$Res, ProductListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "list") ListClass? list,
      @JsonKey(name: "pagesize") int? pagesize});

  $ListClassCopyWith<$Res>? get list;
}

/// @nodoc
class _$ProductListModelCopyWithImpl<$Res, $Val extends ProductListModel>
    implements $ProductListModelCopyWith<$Res> {
  _$ProductListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? list = freezed,
    Object? pagesize = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ListClass?,
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$ProductListModelImplCopyWith<$Res>
    implements $ProductListModelCopyWith<$Res> {
  factory _$$ProductListModelImplCopyWith(_$ProductListModelImpl value,
          $Res Function(_$ProductListModelImpl) then) =
      __$$ProductListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "list") ListClass? list,
      @JsonKey(name: "pagesize") int? pagesize});

  @override
  $ListClassCopyWith<$Res>? get list;
}

/// @nodoc
class __$$ProductListModelImplCopyWithImpl<$Res>
    extends _$ProductListModelCopyWithImpl<$Res, _$ProductListModelImpl>
    implements _$$ProductListModelImplCopyWith<$Res> {
  __$$ProductListModelImplCopyWithImpl(_$ProductListModelImpl _value,
      $Res Function(_$ProductListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? list = freezed,
    Object? pagesize = freezed,
  }) {
    return _then(_$ProductListModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ListClass?,
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductListModelImpl implements _ProductListModel {
  const _$ProductListModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "msg") this.msg,
      @JsonKey(name: "list") this.list,
      @JsonKey(name: "pagesize") this.pagesize});

  factory _$ProductListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductListModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "msg")
  final String? msg;
  @override
  @JsonKey(name: "list")
  final ListClass? list;
  @override
  @JsonKey(name: "pagesize")
  final int? pagesize;

  @override
  String toString() {
    return 'ProductListModel(status: $status, msg: $msg, list: $list, pagesize: $pagesize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.pagesize, pagesize) ||
                other.pagesize == pagesize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, msg, list, pagesize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListModelImplCopyWith<_$ProductListModelImpl> get copyWith =>
      __$$ProductListModelImplCopyWithImpl<_$ProductListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductListModelImplToJson(
      this,
    );
  }
}

abstract class _ProductListModel implements ProductListModel {
  const factory _ProductListModel(
      {@JsonKey(name: "status") final int? status,
      @JsonKey(name: "msg") final String? msg,
      @JsonKey(name: "list") final ListClass? list,
      @JsonKey(name: "pagesize") final int? pagesize}) = _$ProductListModelImpl;

  factory _ProductListModel.fromJson(Map<String, dynamic> json) =
      _$ProductListModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "msg")
  String? get msg;
  @override
  @JsonKey(name: "list")
  ListClass? get list;
  @override
  @JsonKey(name: "pagesize")
  int? get pagesize;
  @override
  @JsonKey(ignore: true)
  _$$ProductListModelImplCopyWith<_$ProductListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListClass _$ListClassFromJson(Map<String, dynamic> json) {
  return _ListClass.fromJson(json);
}

/// @nodoc
mixin _$ListClass {
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<Datum>? get data => throw _privateConstructorUsedError;
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
  $ListClassCopyWith<ListClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListClassCopyWith<$Res> {
  factory $ListClassCopyWith(ListClass value, $Res Function(ListClass) then) =
      _$ListClassCopyWithImpl<$Res, ListClass>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<Datum>? data,
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
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<Datum>? data,
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
      {@JsonKey(name: "current_page") this.currentPage,
      @JsonKey(name: "data") final List<Datum>? data,
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

  factory _$ListClassImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListClassImplFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  final List<Datum>? _data;
  @override
  @JsonKey(name: "data")
  List<Datum>? get data {
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
      {@JsonKey(name: "current_page") final int? currentPage,
      @JsonKey(name: "data") final List<Datum>? data,
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
      @JsonKey(name: "total") final int? total}) = _$ListClassImpl;

  factory _ListClass.fromJson(Map<String, dynamic> json) =
      _$ListClassImpl.fromJson;

  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  @JsonKey(name: "data")
  List<Datum>? get data;
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
  _$$ListClassImplCopyWith<_$ListClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "category_name")
  String? get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "bljg")
  String? get bljg => throw _privateConstructorUsedError;
  @JsonKey(name: "xmgm")
  int? get xmgm => throw _privateConstructorUsedError;
  @JsonKey(name: "xmjd")
  int? get xmjd => throw _privateConstructorUsedError;
  @JsonKey(name: "qtje")
  int? get qtje => throw _privateConstructorUsedError;
  @JsonKey(name: "zgje")
  String? get zgje => throw _privateConstructorUsedError;
  @JsonKey(name: "isgao")
  int? get isgao => throw _privateConstructorUsedError;
  @JsonKey(name: "ktje")
  dynamic get ktje => throw _privateConstructorUsedError;
  @JsonKey(name: "jyrsy")
  String? get jyrsy => throw _privateConstructorUsedError;
  @JsonKey(name: "tqsyyj")
  String? get tqsyyj => throw _privateConstructorUsedError;
  @JsonKey(name: "shijian")
  String? get shijian => throw _privateConstructorUsedError;
  @JsonKey(name: "pic")
  String? get pic => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: "qxdw")
  String? get qxdw => throw _privateConstructorUsedError;
  @JsonKey(name: "hkfs")
  int? get hkfs => throw _privateConstructorUsedError;
  @JsonKey(name: "cishu")
  dynamic get cishu => throw _privateConstructorUsedError;
  @JsonKey(name: "tzzt")
  int? get tzzt => throw _privateConstructorUsedError;
  @JsonKey(name: "isft")
  int? get isft => throw _privateConstructorUsedError;
  @JsonKey(name: "ftjl")
  int? get ftjl => throw _privateConstructorUsedError;
  @JsonKey(name: "level")
  int? get level => throw _privateConstructorUsedError;
  @JsonKey(name: "issy")
  int? get issy => throw _privateConstructorUsedError;
  @JsonKey(name: "issj")
  int? get issj => throw _privateConstructorUsedError;
  @JsonKey(name: "isdt")
  int? get isdt => throw _privateConstructorUsedError;
  @JsonKey(name: "iswj")
  int? get iswj => throw _privateConstructorUsedError;
  @JsonKey(name: "sort")
  int? get sort => throw _privateConstructorUsedError;
  @JsonKey(name: "tzyq")
  int? get tzyq => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "cycle")
  int? get cycle => throw _privateConstructorUsedError;
  @JsonKey(name: "istzbug")
  int? get istzbug => throw _privateConstructorUsedError;
  @JsonKey(name: "isnew")
  int? get isnew => throw _privateConstructorUsedError;
  @JsonKey(name: "doubled")
  int? get doubled => throw _privateConstructorUsedError;
  @JsonKey(name: "countequity")
  int? get countequity => throw _privateConstructorUsedError;
  @JsonKey(name: "bugunmber")
  int? get bugunmber => throw _privateConstructorUsedError;
  @JsonKey(name: "ismake")
  int? get ismake => throw _privateConstructorUsedError;
  @JsonKey(name: "endingtime")
  String? get endingtime => throw _privateConstructorUsedError;
  @JsonKey(name: "isaouttm")
  int? get isaouttm => throw _privateConstructorUsedError;
  @JsonKey(name: "interval_time")
  int? get intervalTime => throw _privateConstructorUsedError;
  @JsonKey(name: "rise_time")
  String? get riseTime => throw _privateConstructorUsedError;
  @JsonKey(name: "frequency")
  int? get frequency => throw _privateConstructorUsedError;
  @JsonKey(name: "rise_settings")
  String? get riseSettings => throw _privateConstructorUsedError;
  @JsonKey(name: "rise")
  double? get rise => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon")
  String? get coupon => throw _privateConstructorUsedError;
  @JsonKey(name: "givecoupon")
  String? get givecoupon => throw _privateConstructorUsedError;
  @JsonKey(name: "oldmoney")
  String? get oldmoney => throw _privateConstructorUsedError;
  @JsonKey(name: "daikuan")
  String? get daikuan => throw _privateConstructorUsedError;
  @JsonKey(name: "equity")
  String? get equity => throw _privateConstructorUsedError;
  @JsonKey(name: "integralgive")
  String? get integralgive => throw _privateConstructorUsedError;
  @JsonKey(name: "nextintegralgive")
  int? get nextintegralgive => throw _privateConstructorUsedError;
  @JsonKey(name: "ticket")
  int? get ticket => throw _privateConstructorUsedError;
  @JsonKey(name: "beans")
  int? get beans => throw _privateConstructorUsedError;
  @JsonKey(name: "xxtcbl")
  String? get xxtcbl => throw _privateConstructorUsedError;
  @JsonKey(name: "xxtcbll")
  String? get xxtcbll => throw _privateConstructorUsedError;
  @JsonKey(name: "xxtcblll")
  String? get xxtcblll => throw _privateConstructorUsedError;
  @JsonKey(name: "xxtcbllll")
  String? get xxtcbllll => throw _privateConstructorUsedError;
  @JsonKey(name: "jiechuhetong")
  int? get jiechuhetong => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  int? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "discountlist")
  String? get discountlist => throw _privateConstructorUsedError;
  @JsonKey(name: "capital")
  int? get capital => throw _privateConstructorUsedError;
  @JsonKey(name: "specialbenefits")
  String? get specialbenefits => throw _privateConstructorUsedError;
  @JsonKey(name: "bjzk")
  int? get bjzk => throw _privateConstructorUsedError;
  @JsonKey(name: "endtime")
  String? get endtime => throw _privateConstructorUsedError;
  @JsonKey(name: "zengsongid")
  int? get zengsongid => throw _privateConstructorUsedError;
  @JsonKey(name: "nextpid")
  int? get nextpid => throw _privateConstructorUsedError;
  @JsonKey(name: "jfpid")
  int? get jfpid => throw _privateConstructorUsedError;
  @JsonKey(name: "joining")
  int? get joining => throw _privateConstructorUsedError;
  @JsonKey(name: "organizer")
  int? get organizer => throw _privateConstructorUsedError;
  @JsonKey(name: "isgroup")
  int? get isgroup => throw _privateConstructorUsedError;
  @JsonKey(name: "is_group_lerver")
  int? get isGroupLerver => throw _privateConstructorUsedError;
  @JsonKey(name: "extmoney")
  int? get extmoney => throw _privateConstructorUsedError;
  @JsonKey(name: "extday")
  int? get extday => throw _privateConstructorUsedError;
  @JsonKey(name: "groupcbl")
  String? get groupcbl => throw _privateConstructorUsedError;
  @JsonKey(name: "isnorate")
  int? get isnorate => throw _privateConstructorUsedError;
  @JsonKey(name: "presale")
  int? get presale => throw _privateConstructorUsedError;
  @JsonKey(name: "firstbuy")
  int? get firstbuy => throw _privateConstructorUsedError;
  @JsonKey(name: "insurance")
  int? get insurance => throw _privateConstructorUsedError;
  @JsonKey(name: "ft_after_success")
  int? get ftAfterSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "present_level")
  int? get presentLevel => throw _privateConstructorUsedError;
  @JsonKey(name: "return_dividends")
  int? get returnDividends => throw _privateConstructorUsedError;
  @JsonKey(name: "return_capital")
  int? get returnCapital => throw _privateConstructorUsedError;
  @JsonKey(name: "is_aggregated_amount")
  int? get isAggregatedAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "firstbuy_text")
  String? get firstbuyText => throw _privateConstructorUsedError;
  @JsonKey(name: "invite_only")
  int? get inviteOnly => throw _privateConstructorUsedError;
  @JsonKey(name: "dividend_method")
  String? get dividendMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "ismake2")
  int? get ismake2 => throw _privateConstructorUsedError;
  @JsonKey(name: "supportuse")
  List<String>? get supportuse => throw _privateConstructorUsedError;
  @JsonKey(name: "investgift")
  List<String>? get investgift => throw _privateConstructorUsedError;
  @JsonKey(name: "allreward")
  List<String>? get allreward => throw _privateConstructorUsedError;
  @JsonKey(name: "demand_tag_list")
  List<dynamic>? get demandTagList => throw _privateConstructorUsedError;
  @JsonKey(name: "attention_tag_list")
  List<String>? get attentionTagList => throw _privateConstructorUsedError;
  @JsonKey(name: "group_demand_tag_list")
  List<dynamic>? get groupDemandTagList => throw _privateConstructorUsedError;
  @JsonKey(name: "present_level_name")
  String? get presentLevelName => throw _privateConstructorUsedError;
  @JsonKey(name: "present_level_text")
  String? get presentLevelText => throw _privateConstructorUsedError;
  @JsonKey(name: "special_tag_list")
  List<dynamic>? get specialTagList => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "category_id") int? categoryId,
      @JsonKey(name: "category_name") String? categoryName,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "bljg") String? bljg,
      @JsonKey(name: "xmgm") int? xmgm,
      @JsonKey(name: "xmjd") int? xmjd,
      @JsonKey(name: "qtje") int? qtje,
      @JsonKey(name: "zgje") String? zgje,
      @JsonKey(name: "isgao") int? isgao,
      @JsonKey(name: "ktje") dynamic ktje,
      @JsonKey(name: "jyrsy") String? jyrsy,
      @JsonKey(name: "tqsyyj") String? tqsyyj,
      @JsonKey(name: "shijian") String? shijian,
      @JsonKey(name: "pic") String? pic,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "qxdw") String? qxdw,
      @JsonKey(name: "hkfs") int? hkfs,
      @JsonKey(name: "cishu") dynamic cishu,
      @JsonKey(name: "tzzt") int? tzzt,
      @JsonKey(name: "isft") int? isft,
      @JsonKey(name: "ftjl") int? ftjl,
      @JsonKey(name: "level") int? level,
      @JsonKey(name: "issy") int? issy,
      @JsonKey(name: "issj") int? issj,
      @JsonKey(name: "isdt") int? isdt,
      @JsonKey(name: "iswj") int? iswj,
      @JsonKey(name: "sort") int? sort,
      @JsonKey(name: "tzyq") int? tzyq,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "cycle") int? cycle,
      @JsonKey(name: "istzbug") int? istzbug,
      @JsonKey(name: "isnew") int? isnew,
      @JsonKey(name: "doubled") int? doubled,
      @JsonKey(name: "countequity") int? countequity,
      @JsonKey(name: "bugunmber") int? bugunmber,
      @JsonKey(name: "ismake") int? ismake,
      @JsonKey(name: "endingtime") String? endingtime,
      @JsonKey(name: "isaouttm") int? isaouttm,
      @JsonKey(name: "interval_time") int? intervalTime,
      @JsonKey(name: "rise_time") String? riseTime,
      @JsonKey(name: "frequency") int? frequency,
      @JsonKey(name: "rise_settings") String? riseSettings,
      @JsonKey(name: "rise") double? rise,
      @JsonKey(name: "coupon") String? coupon,
      @JsonKey(name: "givecoupon") String? givecoupon,
      @JsonKey(name: "oldmoney") String? oldmoney,
      @JsonKey(name: "daikuan") String? daikuan,
      @JsonKey(name: "equity") String? equity,
      @JsonKey(name: "integralgive") String? integralgive,
      @JsonKey(name: "nextintegralgive") int? nextintegralgive,
      @JsonKey(name: "ticket") int? ticket,
      @JsonKey(name: "beans") int? beans,
      @JsonKey(name: "xxtcbl") String? xxtcbl,
      @JsonKey(name: "xxtcbll") String? xxtcbll,
      @JsonKey(name: "xxtcblll") String? xxtcblll,
      @JsonKey(name: "xxtcbllll") String? xxtcbllll,
      @JsonKey(name: "jiechuhetong") int? jiechuhetong,
      @JsonKey(name: "discount") int? discount,
      @JsonKey(name: "discountlist") String? discountlist,
      @JsonKey(name: "capital") int? capital,
      @JsonKey(name: "specialbenefits") String? specialbenefits,
      @JsonKey(name: "bjzk") int? bjzk,
      @JsonKey(name: "endtime") String? endtime,
      @JsonKey(name: "zengsongid") int? zengsongid,
      @JsonKey(name: "nextpid") int? nextpid,
      @JsonKey(name: "jfpid") int? jfpid,
      @JsonKey(name: "joining") int? joining,
      @JsonKey(name: "organizer") int? organizer,
      @JsonKey(name: "isgroup") int? isgroup,
      @JsonKey(name: "is_group_lerver") int? isGroupLerver,
      @JsonKey(name: "extmoney") int? extmoney,
      @JsonKey(name: "extday") int? extday,
      @JsonKey(name: "groupcbl") String? groupcbl,
      @JsonKey(name: "isnorate") int? isnorate,
      @JsonKey(name: "presale") int? presale,
      @JsonKey(name: "firstbuy") int? firstbuy,
      @JsonKey(name: "insurance") int? insurance,
      @JsonKey(name: "ft_after_success") int? ftAfterSuccess,
      @JsonKey(name: "present_level") int? presentLevel,
      @JsonKey(name: "return_dividends") int? returnDividends,
      @JsonKey(name: "return_capital") int? returnCapital,
      @JsonKey(name: "is_aggregated_amount") int? isAggregatedAmount,
      @JsonKey(name: "firstbuy_text") String? firstbuyText,
      @JsonKey(name: "invite_only") int? inviteOnly,
      @JsonKey(name: "dividend_method") String? dividendMethod,
      @JsonKey(name: "ismake2") int? ismake2,
      @JsonKey(name: "supportuse") List<String>? supportuse,
      @JsonKey(name: "investgift") List<String>? investgift,
      @JsonKey(name: "allreward") List<String>? allreward,
      @JsonKey(name: "demand_tag_list") List<dynamic>? demandTagList,
      @JsonKey(name: "attention_tag_list") List<String>? attentionTagList,
      @JsonKey(name: "group_demand_tag_list") List<dynamic>? groupDemandTagList,
      @JsonKey(name: "present_level_name") String? presentLevelName,
      @JsonKey(name: "present_level_text") String? presentLevelText,
      @JsonKey(name: "special_tag_list") List<dynamic>? specialTagList});
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
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? title = freezed,
    Object? bljg = freezed,
    Object? xmgm = freezed,
    Object? xmjd = freezed,
    Object? qtje = freezed,
    Object? zgje = freezed,
    Object? isgao = freezed,
    Object? ktje = freezed,
    Object? jyrsy = freezed,
    Object? tqsyyj = freezed,
    Object? shijian = freezed,
    Object? pic = freezed,
    Object? content = freezed,
    Object? qxdw = freezed,
    Object? hkfs = freezed,
    Object? cishu = freezed,
    Object? tzzt = freezed,
    Object? isft = freezed,
    Object? ftjl = freezed,
    Object? level = freezed,
    Object? issy = freezed,
    Object? issj = freezed,
    Object? isdt = freezed,
    Object? iswj = freezed,
    Object? sort = freezed,
    Object? tzyq = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? cycle = freezed,
    Object? istzbug = freezed,
    Object? isnew = freezed,
    Object? doubled = freezed,
    Object? countequity = freezed,
    Object? bugunmber = freezed,
    Object? ismake = freezed,
    Object? endingtime = freezed,
    Object? isaouttm = freezed,
    Object? intervalTime = freezed,
    Object? riseTime = freezed,
    Object? frequency = freezed,
    Object? riseSettings = freezed,
    Object? rise = freezed,
    Object? coupon = freezed,
    Object? givecoupon = freezed,
    Object? oldmoney = freezed,
    Object? daikuan = freezed,
    Object? equity = freezed,
    Object? integralgive = freezed,
    Object? nextintegralgive = freezed,
    Object? ticket = freezed,
    Object? beans = freezed,
    Object? xxtcbl = freezed,
    Object? xxtcbll = freezed,
    Object? xxtcblll = freezed,
    Object? xxtcbllll = freezed,
    Object? jiechuhetong = freezed,
    Object? discount = freezed,
    Object? discountlist = freezed,
    Object? capital = freezed,
    Object? specialbenefits = freezed,
    Object? bjzk = freezed,
    Object? endtime = freezed,
    Object? zengsongid = freezed,
    Object? nextpid = freezed,
    Object? jfpid = freezed,
    Object? joining = freezed,
    Object? organizer = freezed,
    Object? isgroup = freezed,
    Object? isGroupLerver = freezed,
    Object? extmoney = freezed,
    Object? extday = freezed,
    Object? groupcbl = freezed,
    Object? isnorate = freezed,
    Object? presale = freezed,
    Object? firstbuy = freezed,
    Object? insurance = freezed,
    Object? ftAfterSuccess = freezed,
    Object? presentLevel = freezed,
    Object? returnDividends = freezed,
    Object? returnCapital = freezed,
    Object? isAggregatedAmount = freezed,
    Object? firstbuyText = freezed,
    Object? inviteOnly = freezed,
    Object? dividendMethod = freezed,
    Object? ismake2 = freezed,
    Object? supportuse = freezed,
    Object? investgift = freezed,
    Object? allreward = freezed,
    Object? demandTagList = freezed,
    Object? attentionTagList = freezed,
    Object? groupDemandTagList = freezed,
    Object? presentLevelName = freezed,
    Object? presentLevelText = freezed,
    Object? specialTagList = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      bljg: freezed == bljg
          ? _value.bljg
          : bljg // ignore: cast_nullable_to_non_nullable
              as String?,
      xmgm: freezed == xmgm
          ? _value.xmgm
          : xmgm // ignore: cast_nullable_to_non_nullable
              as int?,
      xmjd: freezed == xmjd
          ? _value.xmjd
          : xmjd // ignore: cast_nullable_to_non_nullable
              as int?,
      qtje: freezed == qtje
          ? _value.qtje
          : qtje // ignore: cast_nullable_to_non_nullable
              as int?,
      zgje: freezed == zgje
          ? _value.zgje
          : zgje // ignore: cast_nullable_to_non_nullable
              as String?,
      isgao: freezed == isgao
          ? _value.isgao
          : isgao // ignore: cast_nullable_to_non_nullable
              as int?,
      ktje: freezed == ktje
          ? _value.ktje
          : ktje // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jyrsy: freezed == jyrsy
          ? _value.jyrsy
          : jyrsy // ignore: cast_nullable_to_non_nullable
              as String?,
      tqsyyj: freezed == tqsyyj
          ? _value.tqsyyj
          : tqsyyj // ignore: cast_nullable_to_non_nullable
              as String?,
      shijian: freezed == shijian
          ? _value.shijian
          : shijian // ignore: cast_nullable_to_non_nullable
              as String?,
      pic: freezed == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      qxdw: freezed == qxdw
          ? _value.qxdw
          : qxdw // ignore: cast_nullable_to_non_nullable
              as String?,
      hkfs: freezed == hkfs
          ? _value.hkfs
          : hkfs // ignore: cast_nullable_to_non_nullable
              as int?,
      cishu: freezed == cishu
          ? _value.cishu
          : cishu // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tzzt: freezed == tzzt
          ? _value.tzzt
          : tzzt // ignore: cast_nullable_to_non_nullable
              as int?,
      isft: freezed == isft
          ? _value.isft
          : isft // ignore: cast_nullable_to_non_nullable
              as int?,
      ftjl: freezed == ftjl
          ? _value.ftjl
          : ftjl // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      issy: freezed == issy
          ? _value.issy
          : issy // ignore: cast_nullable_to_non_nullable
              as int?,
      issj: freezed == issj
          ? _value.issj
          : issj // ignore: cast_nullable_to_non_nullable
              as int?,
      isdt: freezed == isdt
          ? _value.isdt
          : isdt // ignore: cast_nullable_to_non_nullable
              as int?,
      iswj: freezed == iswj
          ? _value.iswj
          : iswj // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
      tzyq: freezed == tzyq
          ? _value.tzyq
          : tzyq // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      cycle: freezed == cycle
          ? _value.cycle
          : cycle // ignore: cast_nullable_to_non_nullable
              as int?,
      istzbug: freezed == istzbug
          ? _value.istzbug
          : istzbug // ignore: cast_nullable_to_non_nullable
              as int?,
      isnew: freezed == isnew
          ? _value.isnew
          : isnew // ignore: cast_nullable_to_non_nullable
              as int?,
      doubled: freezed == doubled
          ? _value.doubled
          : doubled // ignore: cast_nullable_to_non_nullable
              as int?,
      countequity: freezed == countequity
          ? _value.countequity
          : countequity // ignore: cast_nullable_to_non_nullable
              as int?,
      bugunmber: freezed == bugunmber
          ? _value.bugunmber
          : bugunmber // ignore: cast_nullable_to_non_nullable
              as int?,
      ismake: freezed == ismake
          ? _value.ismake
          : ismake // ignore: cast_nullable_to_non_nullable
              as int?,
      endingtime: freezed == endingtime
          ? _value.endingtime
          : endingtime // ignore: cast_nullable_to_non_nullable
              as String?,
      isaouttm: freezed == isaouttm
          ? _value.isaouttm
          : isaouttm // ignore: cast_nullable_to_non_nullable
              as int?,
      intervalTime: freezed == intervalTime
          ? _value.intervalTime
          : intervalTime // ignore: cast_nullable_to_non_nullable
              as int?,
      riseTime: freezed == riseTime
          ? _value.riseTime
          : riseTime // ignore: cast_nullable_to_non_nullable
              as String?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int?,
      riseSettings: freezed == riseSettings
          ? _value.riseSettings
          : riseSettings // ignore: cast_nullable_to_non_nullable
              as String?,
      rise: freezed == rise
          ? _value.rise
          : rise // ignore: cast_nullable_to_non_nullable
              as double?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String?,
      givecoupon: freezed == givecoupon
          ? _value.givecoupon
          : givecoupon // ignore: cast_nullable_to_non_nullable
              as String?,
      oldmoney: freezed == oldmoney
          ? _value.oldmoney
          : oldmoney // ignore: cast_nullable_to_non_nullable
              as String?,
      daikuan: freezed == daikuan
          ? _value.daikuan
          : daikuan // ignore: cast_nullable_to_non_nullable
              as String?,
      equity: freezed == equity
          ? _value.equity
          : equity // ignore: cast_nullable_to_non_nullable
              as String?,
      integralgive: freezed == integralgive
          ? _value.integralgive
          : integralgive // ignore: cast_nullable_to_non_nullable
              as String?,
      nextintegralgive: freezed == nextintegralgive
          ? _value.nextintegralgive
          : nextintegralgive // ignore: cast_nullable_to_non_nullable
              as int?,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as int?,
      beans: freezed == beans
          ? _value.beans
          : beans // ignore: cast_nullable_to_non_nullable
              as int?,
      xxtcbl: freezed == xxtcbl
          ? _value.xxtcbl
          : xxtcbl // ignore: cast_nullable_to_non_nullable
              as String?,
      xxtcbll: freezed == xxtcbll
          ? _value.xxtcbll
          : xxtcbll // ignore: cast_nullable_to_non_nullable
              as String?,
      xxtcblll: freezed == xxtcblll
          ? _value.xxtcblll
          : xxtcblll // ignore: cast_nullable_to_non_nullable
              as String?,
      xxtcbllll: freezed == xxtcbllll
          ? _value.xxtcbllll
          : xxtcbllll // ignore: cast_nullable_to_non_nullable
              as String?,
      jiechuhetong: freezed == jiechuhetong
          ? _value.jiechuhetong
          : jiechuhetong // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      discountlist: freezed == discountlist
          ? _value.discountlist
          : discountlist // ignore: cast_nullable_to_non_nullable
              as String?,
      capital: freezed == capital
          ? _value.capital
          : capital // ignore: cast_nullable_to_non_nullable
              as int?,
      specialbenefits: freezed == specialbenefits
          ? _value.specialbenefits
          : specialbenefits // ignore: cast_nullable_to_non_nullable
              as String?,
      bjzk: freezed == bjzk
          ? _value.bjzk
          : bjzk // ignore: cast_nullable_to_non_nullable
              as int?,
      endtime: freezed == endtime
          ? _value.endtime
          : endtime // ignore: cast_nullable_to_non_nullable
              as String?,
      zengsongid: freezed == zengsongid
          ? _value.zengsongid
          : zengsongid // ignore: cast_nullable_to_non_nullable
              as int?,
      nextpid: freezed == nextpid
          ? _value.nextpid
          : nextpid // ignore: cast_nullable_to_non_nullable
              as int?,
      jfpid: freezed == jfpid
          ? _value.jfpid
          : jfpid // ignore: cast_nullable_to_non_nullable
              as int?,
      joining: freezed == joining
          ? _value.joining
          : joining // ignore: cast_nullable_to_non_nullable
              as int?,
      organizer: freezed == organizer
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as int?,
      isgroup: freezed == isgroup
          ? _value.isgroup
          : isgroup // ignore: cast_nullable_to_non_nullable
              as int?,
      isGroupLerver: freezed == isGroupLerver
          ? _value.isGroupLerver
          : isGroupLerver // ignore: cast_nullable_to_non_nullable
              as int?,
      extmoney: freezed == extmoney
          ? _value.extmoney
          : extmoney // ignore: cast_nullable_to_non_nullable
              as int?,
      extday: freezed == extday
          ? _value.extday
          : extday // ignore: cast_nullable_to_non_nullable
              as int?,
      groupcbl: freezed == groupcbl
          ? _value.groupcbl
          : groupcbl // ignore: cast_nullable_to_non_nullable
              as String?,
      isnorate: freezed == isnorate
          ? _value.isnorate
          : isnorate // ignore: cast_nullable_to_non_nullable
              as int?,
      presale: freezed == presale
          ? _value.presale
          : presale // ignore: cast_nullable_to_non_nullable
              as int?,
      firstbuy: freezed == firstbuy
          ? _value.firstbuy
          : firstbuy // ignore: cast_nullable_to_non_nullable
              as int?,
      insurance: freezed == insurance
          ? _value.insurance
          : insurance // ignore: cast_nullable_to_non_nullable
              as int?,
      ftAfterSuccess: freezed == ftAfterSuccess
          ? _value.ftAfterSuccess
          : ftAfterSuccess // ignore: cast_nullable_to_non_nullable
              as int?,
      presentLevel: freezed == presentLevel
          ? _value.presentLevel
          : presentLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      returnDividends: freezed == returnDividends
          ? _value.returnDividends
          : returnDividends // ignore: cast_nullable_to_non_nullable
              as int?,
      returnCapital: freezed == returnCapital
          ? _value.returnCapital
          : returnCapital // ignore: cast_nullable_to_non_nullable
              as int?,
      isAggregatedAmount: freezed == isAggregatedAmount
          ? _value.isAggregatedAmount
          : isAggregatedAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      firstbuyText: freezed == firstbuyText
          ? _value.firstbuyText
          : firstbuyText // ignore: cast_nullable_to_non_nullable
              as String?,
      inviteOnly: freezed == inviteOnly
          ? _value.inviteOnly
          : inviteOnly // ignore: cast_nullable_to_non_nullable
              as int?,
      dividendMethod: freezed == dividendMethod
          ? _value.dividendMethod
          : dividendMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      ismake2: freezed == ismake2
          ? _value.ismake2
          : ismake2 // ignore: cast_nullable_to_non_nullable
              as int?,
      supportuse: freezed == supportuse
          ? _value.supportuse
          : supportuse // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      investgift: freezed == investgift
          ? _value.investgift
          : investgift // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      allreward: freezed == allreward
          ? _value.allreward
          : allreward // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      demandTagList: freezed == demandTagList
          ? _value.demandTagList
          : demandTagList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      attentionTagList: freezed == attentionTagList
          ? _value.attentionTagList
          : attentionTagList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      groupDemandTagList: freezed == groupDemandTagList
          ? _value.groupDemandTagList
          : groupDemandTagList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      presentLevelName: freezed == presentLevelName
          ? _value.presentLevelName
          : presentLevelName // ignore: cast_nullable_to_non_nullable
              as String?,
      presentLevelText: freezed == presentLevelText
          ? _value.presentLevelText
          : presentLevelText // ignore: cast_nullable_to_non_nullable
              as String?,
      specialTagList: freezed == specialTagList
          ? _value.specialTagList
          : specialTagList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "category_id") int? categoryId,
      @JsonKey(name: "category_name") String? categoryName,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "bljg") String? bljg,
      @JsonKey(name: "xmgm") int? xmgm,
      @JsonKey(name: "xmjd") int? xmjd,
      @JsonKey(name: "qtje") int? qtje,
      @JsonKey(name: "zgje") String? zgje,
      @JsonKey(name: "isgao") int? isgao,
      @JsonKey(name: "ktje") dynamic ktje,
      @JsonKey(name: "jyrsy") String? jyrsy,
      @JsonKey(name: "tqsyyj") String? tqsyyj,
      @JsonKey(name: "shijian") String? shijian,
      @JsonKey(name: "pic") String? pic,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "qxdw") String? qxdw,
      @JsonKey(name: "hkfs") int? hkfs,
      @JsonKey(name: "cishu") dynamic cishu,
      @JsonKey(name: "tzzt") int? tzzt,
      @JsonKey(name: "isft") int? isft,
      @JsonKey(name: "ftjl") int? ftjl,
      @JsonKey(name: "level") int? level,
      @JsonKey(name: "issy") int? issy,
      @JsonKey(name: "issj") int? issj,
      @JsonKey(name: "isdt") int? isdt,
      @JsonKey(name: "iswj") int? iswj,
      @JsonKey(name: "sort") int? sort,
      @JsonKey(name: "tzyq") int? tzyq,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "cycle") int? cycle,
      @JsonKey(name: "istzbug") int? istzbug,
      @JsonKey(name: "isnew") int? isnew,
      @JsonKey(name: "doubled") int? doubled,
      @JsonKey(name: "countequity") int? countequity,
      @JsonKey(name: "bugunmber") int? bugunmber,
      @JsonKey(name: "ismake") int? ismake,
      @JsonKey(name: "endingtime") String? endingtime,
      @JsonKey(name: "isaouttm") int? isaouttm,
      @JsonKey(name: "interval_time") int? intervalTime,
      @JsonKey(name: "rise_time") String? riseTime,
      @JsonKey(name: "frequency") int? frequency,
      @JsonKey(name: "rise_settings") String? riseSettings,
      @JsonKey(name: "rise") double? rise,
      @JsonKey(name: "coupon") String? coupon,
      @JsonKey(name: "givecoupon") String? givecoupon,
      @JsonKey(name: "oldmoney") String? oldmoney,
      @JsonKey(name: "daikuan") String? daikuan,
      @JsonKey(name: "equity") String? equity,
      @JsonKey(name: "integralgive") String? integralgive,
      @JsonKey(name: "nextintegralgive") int? nextintegralgive,
      @JsonKey(name: "ticket") int? ticket,
      @JsonKey(name: "beans") int? beans,
      @JsonKey(name: "xxtcbl") String? xxtcbl,
      @JsonKey(name: "xxtcbll") String? xxtcbll,
      @JsonKey(name: "xxtcblll") String? xxtcblll,
      @JsonKey(name: "xxtcbllll") String? xxtcbllll,
      @JsonKey(name: "jiechuhetong") int? jiechuhetong,
      @JsonKey(name: "discount") int? discount,
      @JsonKey(name: "discountlist") String? discountlist,
      @JsonKey(name: "capital") int? capital,
      @JsonKey(name: "specialbenefits") String? specialbenefits,
      @JsonKey(name: "bjzk") int? bjzk,
      @JsonKey(name: "endtime") String? endtime,
      @JsonKey(name: "zengsongid") int? zengsongid,
      @JsonKey(name: "nextpid") int? nextpid,
      @JsonKey(name: "jfpid") int? jfpid,
      @JsonKey(name: "joining") int? joining,
      @JsonKey(name: "organizer") int? organizer,
      @JsonKey(name: "isgroup") int? isgroup,
      @JsonKey(name: "is_group_lerver") int? isGroupLerver,
      @JsonKey(name: "extmoney") int? extmoney,
      @JsonKey(name: "extday") int? extday,
      @JsonKey(name: "groupcbl") String? groupcbl,
      @JsonKey(name: "isnorate") int? isnorate,
      @JsonKey(name: "presale") int? presale,
      @JsonKey(name: "firstbuy") int? firstbuy,
      @JsonKey(name: "insurance") int? insurance,
      @JsonKey(name: "ft_after_success") int? ftAfterSuccess,
      @JsonKey(name: "present_level") int? presentLevel,
      @JsonKey(name: "return_dividends") int? returnDividends,
      @JsonKey(name: "return_capital") int? returnCapital,
      @JsonKey(name: "is_aggregated_amount") int? isAggregatedAmount,
      @JsonKey(name: "firstbuy_text") String? firstbuyText,
      @JsonKey(name: "invite_only") int? inviteOnly,
      @JsonKey(name: "dividend_method") String? dividendMethod,
      @JsonKey(name: "ismake2") int? ismake2,
      @JsonKey(name: "supportuse") List<String>? supportuse,
      @JsonKey(name: "investgift") List<String>? investgift,
      @JsonKey(name: "allreward") List<String>? allreward,
      @JsonKey(name: "demand_tag_list") List<dynamic>? demandTagList,
      @JsonKey(name: "attention_tag_list") List<String>? attentionTagList,
      @JsonKey(name: "group_demand_tag_list") List<dynamic>? groupDemandTagList,
      @JsonKey(name: "present_level_name") String? presentLevelName,
      @JsonKey(name: "present_level_text") String? presentLevelText,
      @JsonKey(name: "special_tag_list") List<dynamic>? specialTagList});
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
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? title = freezed,
    Object? bljg = freezed,
    Object? xmgm = freezed,
    Object? xmjd = freezed,
    Object? qtje = freezed,
    Object? zgje = freezed,
    Object? isgao = freezed,
    Object? ktje = freezed,
    Object? jyrsy = freezed,
    Object? tqsyyj = freezed,
    Object? shijian = freezed,
    Object? pic = freezed,
    Object? content = freezed,
    Object? qxdw = freezed,
    Object? hkfs = freezed,
    Object? cishu = freezed,
    Object? tzzt = freezed,
    Object? isft = freezed,
    Object? ftjl = freezed,
    Object? level = freezed,
    Object? issy = freezed,
    Object? issj = freezed,
    Object? isdt = freezed,
    Object? iswj = freezed,
    Object? sort = freezed,
    Object? tzyq = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? cycle = freezed,
    Object? istzbug = freezed,
    Object? isnew = freezed,
    Object? doubled = freezed,
    Object? countequity = freezed,
    Object? bugunmber = freezed,
    Object? ismake = freezed,
    Object? endingtime = freezed,
    Object? isaouttm = freezed,
    Object? intervalTime = freezed,
    Object? riseTime = freezed,
    Object? frequency = freezed,
    Object? riseSettings = freezed,
    Object? rise = freezed,
    Object? coupon = freezed,
    Object? givecoupon = freezed,
    Object? oldmoney = freezed,
    Object? daikuan = freezed,
    Object? equity = freezed,
    Object? integralgive = freezed,
    Object? nextintegralgive = freezed,
    Object? ticket = freezed,
    Object? beans = freezed,
    Object? xxtcbl = freezed,
    Object? xxtcbll = freezed,
    Object? xxtcblll = freezed,
    Object? xxtcbllll = freezed,
    Object? jiechuhetong = freezed,
    Object? discount = freezed,
    Object? discountlist = freezed,
    Object? capital = freezed,
    Object? specialbenefits = freezed,
    Object? bjzk = freezed,
    Object? endtime = freezed,
    Object? zengsongid = freezed,
    Object? nextpid = freezed,
    Object? jfpid = freezed,
    Object? joining = freezed,
    Object? organizer = freezed,
    Object? isgroup = freezed,
    Object? isGroupLerver = freezed,
    Object? extmoney = freezed,
    Object? extday = freezed,
    Object? groupcbl = freezed,
    Object? isnorate = freezed,
    Object? presale = freezed,
    Object? firstbuy = freezed,
    Object? insurance = freezed,
    Object? ftAfterSuccess = freezed,
    Object? presentLevel = freezed,
    Object? returnDividends = freezed,
    Object? returnCapital = freezed,
    Object? isAggregatedAmount = freezed,
    Object? firstbuyText = freezed,
    Object? inviteOnly = freezed,
    Object? dividendMethod = freezed,
    Object? ismake2 = freezed,
    Object? supportuse = freezed,
    Object? investgift = freezed,
    Object? allreward = freezed,
    Object? demandTagList = freezed,
    Object? attentionTagList = freezed,
    Object? groupDemandTagList = freezed,
    Object? presentLevelName = freezed,
    Object? presentLevelText = freezed,
    Object? specialTagList = freezed,
  }) {
    return _then(_$DatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      bljg: freezed == bljg
          ? _value.bljg
          : bljg // ignore: cast_nullable_to_non_nullable
              as String?,
      xmgm: freezed == xmgm
          ? _value.xmgm
          : xmgm // ignore: cast_nullable_to_non_nullable
              as int?,
      xmjd: freezed == xmjd
          ? _value.xmjd
          : xmjd // ignore: cast_nullable_to_non_nullable
              as int?,
      qtje: freezed == qtje
          ? _value.qtje
          : qtje // ignore: cast_nullable_to_non_nullable
              as int?,
      zgje: freezed == zgje
          ? _value.zgje
          : zgje // ignore: cast_nullable_to_non_nullable
              as String?,
      isgao: freezed == isgao
          ? _value.isgao
          : isgao // ignore: cast_nullable_to_non_nullable
              as int?,
      ktje: freezed == ktje
          ? _value.ktje
          : ktje // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jyrsy: freezed == jyrsy
          ? _value.jyrsy
          : jyrsy // ignore: cast_nullable_to_non_nullable
              as String?,
      tqsyyj: freezed == tqsyyj
          ? _value.tqsyyj
          : tqsyyj // ignore: cast_nullable_to_non_nullable
              as String?,
      shijian: freezed == shijian
          ? _value.shijian
          : shijian // ignore: cast_nullable_to_non_nullable
              as String?,
      pic: freezed == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      qxdw: freezed == qxdw
          ? _value.qxdw
          : qxdw // ignore: cast_nullable_to_non_nullable
              as String?,
      hkfs: freezed == hkfs
          ? _value.hkfs
          : hkfs // ignore: cast_nullable_to_non_nullable
              as int?,
      cishu: freezed == cishu
          ? _value.cishu
          : cishu // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tzzt: freezed == tzzt
          ? _value.tzzt
          : tzzt // ignore: cast_nullable_to_non_nullable
              as int?,
      isft: freezed == isft
          ? _value.isft
          : isft // ignore: cast_nullable_to_non_nullable
              as int?,
      ftjl: freezed == ftjl
          ? _value.ftjl
          : ftjl // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      issy: freezed == issy
          ? _value.issy
          : issy // ignore: cast_nullable_to_non_nullable
              as int?,
      issj: freezed == issj
          ? _value.issj
          : issj // ignore: cast_nullable_to_non_nullable
              as int?,
      isdt: freezed == isdt
          ? _value.isdt
          : isdt // ignore: cast_nullable_to_non_nullable
              as int?,
      iswj: freezed == iswj
          ? _value.iswj
          : iswj // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
      tzyq: freezed == tzyq
          ? _value.tzyq
          : tzyq // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      cycle: freezed == cycle
          ? _value.cycle
          : cycle // ignore: cast_nullable_to_non_nullable
              as int?,
      istzbug: freezed == istzbug
          ? _value.istzbug
          : istzbug // ignore: cast_nullable_to_non_nullable
              as int?,
      isnew: freezed == isnew
          ? _value.isnew
          : isnew // ignore: cast_nullable_to_non_nullable
              as int?,
      doubled: freezed == doubled
          ? _value.doubled
          : doubled // ignore: cast_nullable_to_non_nullable
              as int?,
      countequity: freezed == countequity
          ? _value.countequity
          : countequity // ignore: cast_nullable_to_non_nullable
              as int?,
      bugunmber: freezed == bugunmber
          ? _value.bugunmber
          : bugunmber // ignore: cast_nullable_to_non_nullable
              as int?,
      ismake: freezed == ismake
          ? _value.ismake
          : ismake // ignore: cast_nullable_to_non_nullable
              as int?,
      endingtime: freezed == endingtime
          ? _value.endingtime
          : endingtime // ignore: cast_nullable_to_non_nullable
              as String?,
      isaouttm: freezed == isaouttm
          ? _value.isaouttm
          : isaouttm // ignore: cast_nullable_to_non_nullable
              as int?,
      intervalTime: freezed == intervalTime
          ? _value.intervalTime
          : intervalTime // ignore: cast_nullable_to_non_nullable
              as int?,
      riseTime: freezed == riseTime
          ? _value.riseTime
          : riseTime // ignore: cast_nullable_to_non_nullable
              as String?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int?,
      riseSettings: freezed == riseSettings
          ? _value.riseSettings
          : riseSettings // ignore: cast_nullable_to_non_nullable
              as String?,
      rise: freezed == rise
          ? _value.rise
          : rise // ignore: cast_nullable_to_non_nullable
              as double?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String?,
      givecoupon: freezed == givecoupon
          ? _value.givecoupon
          : givecoupon // ignore: cast_nullable_to_non_nullable
              as String?,
      oldmoney: freezed == oldmoney
          ? _value.oldmoney
          : oldmoney // ignore: cast_nullable_to_non_nullable
              as String?,
      daikuan: freezed == daikuan
          ? _value.daikuan
          : daikuan // ignore: cast_nullable_to_non_nullable
              as String?,
      equity: freezed == equity
          ? _value.equity
          : equity // ignore: cast_nullable_to_non_nullable
              as String?,
      integralgive: freezed == integralgive
          ? _value.integralgive
          : integralgive // ignore: cast_nullable_to_non_nullable
              as String?,
      nextintegralgive: freezed == nextintegralgive
          ? _value.nextintegralgive
          : nextintegralgive // ignore: cast_nullable_to_non_nullable
              as int?,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as int?,
      beans: freezed == beans
          ? _value.beans
          : beans // ignore: cast_nullable_to_non_nullable
              as int?,
      xxtcbl: freezed == xxtcbl
          ? _value.xxtcbl
          : xxtcbl // ignore: cast_nullable_to_non_nullable
              as String?,
      xxtcbll: freezed == xxtcbll
          ? _value.xxtcbll
          : xxtcbll // ignore: cast_nullable_to_non_nullable
              as String?,
      xxtcblll: freezed == xxtcblll
          ? _value.xxtcblll
          : xxtcblll // ignore: cast_nullable_to_non_nullable
              as String?,
      xxtcbllll: freezed == xxtcbllll
          ? _value.xxtcbllll
          : xxtcbllll // ignore: cast_nullable_to_non_nullable
              as String?,
      jiechuhetong: freezed == jiechuhetong
          ? _value.jiechuhetong
          : jiechuhetong // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      discountlist: freezed == discountlist
          ? _value.discountlist
          : discountlist // ignore: cast_nullable_to_non_nullable
              as String?,
      capital: freezed == capital
          ? _value.capital
          : capital // ignore: cast_nullable_to_non_nullable
              as int?,
      specialbenefits: freezed == specialbenefits
          ? _value.specialbenefits
          : specialbenefits // ignore: cast_nullable_to_non_nullable
              as String?,
      bjzk: freezed == bjzk
          ? _value.bjzk
          : bjzk // ignore: cast_nullable_to_non_nullable
              as int?,
      endtime: freezed == endtime
          ? _value.endtime
          : endtime // ignore: cast_nullable_to_non_nullable
              as String?,
      zengsongid: freezed == zengsongid
          ? _value.zengsongid
          : zengsongid // ignore: cast_nullable_to_non_nullable
              as int?,
      nextpid: freezed == nextpid
          ? _value.nextpid
          : nextpid // ignore: cast_nullable_to_non_nullable
              as int?,
      jfpid: freezed == jfpid
          ? _value.jfpid
          : jfpid // ignore: cast_nullable_to_non_nullable
              as int?,
      joining: freezed == joining
          ? _value.joining
          : joining // ignore: cast_nullable_to_non_nullable
              as int?,
      organizer: freezed == organizer
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as int?,
      isgroup: freezed == isgroup
          ? _value.isgroup
          : isgroup // ignore: cast_nullable_to_non_nullable
              as int?,
      isGroupLerver: freezed == isGroupLerver
          ? _value.isGroupLerver
          : isGroupLerver // ignore: cast_nullable_to_non_nullable
              as int?,
      extmoney: freezed == extmoney
          ? _value.extmoney
          : extmoney // ignore: cast_nullable_to_non_nullable
              as int?,
      extday: freezed == extday
          ? _value.extday
          : extday // ignore: cast_nullable_to_non_nullable
              as int?,
      groupcbl: freezed == groupcbl
          ? _value.groupcbl
          : groupcbl // ignore: cast_nullable_to_non_nullable
              as String?,
      isnorate: freezed == isnorate
          ? _value.isnorate
          : isnorate // ignore: cast_nullable_to_non_nullable
              as int?,
      presale: freezed == presale
          ? _value.presale
          : presale // ignore: cast_nullable_to_non_nullable
              as int?,
      firstbuy: freezed == firstbuy
          ? _value.firstbuy
          : firstbuy // ignore: cast_nullable_to_non_nullable
              as int?,
      insurance: freezed == insurance
          ? _value.insurance
          : insurance // ignore: cast_nullable_to_non_nullable
              as int?,
      ftAfterSuccess: freezed == ftAfterSuccess
          ? _value.ftAfterSuccess
          : ftAfterSuccess // ignore: cast_nullable_to_non_nullable
              as int?,
      presentLevel: freezed == presentLevel
          ? _value.presentLevel
          : presentLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      returnDividends: freezed == returnDividends
          ? _value.returnDividends
          : returnDividends // ignore: cast_nullable_to_non_nullable
              as int?,
      returnCapital: freezed == returnCapital
          ? _value.returnCapital
          : returnCapital // ignore: cast_nullable_to_non_nullable
              as int?,
      isAggregatedAmount: freezed == isAggregatedAmount
          ? _value.isAggregatedAmount
          : isAggregatedAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      firstbuyText: freezed == firstbuyText
          ? _value.firstbuyText
          : firstbuyText // ignore: cast_nullable_to_non_nullable
              as String?,
      inviteOnly: freezed == inviteOnly
          ? _value.inviteOnly
          : inviteOnly // ignore: cast_nullable_to_non_nullable
              as int?,
      dividendMethod: freezed == dividendMethod
          ? _value.dividendMethod
          : dividendMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      ismake2: freezed == ismake2
          ? _value.ismake2
          : ismake2 // ignore: cast_nullable_to_non_nullable
              as int?,
      supportuse: freezed == supportuse
          ? _value._supportuse
          : supportuse // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      investgift: freezed == investgift
          ? _value._investgift
          : investgift // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      allreward: freezed == allreward
          ? _value._allreward
          : allreward // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      demandTagList: freezed == demandTagList
          ? _value._demandTagList
          : demandTagList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      attentionTagList: freezed == attentionTagList
          ? _value._attentionTagList
          : attentionTagList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      groupDemandTagList: freezed == groupDemandTagList
          ? _value._groupDemandTagList
          : groupDemandTagList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      presentLevelName: freezed == presentLevelName
          ? _value.presentLevelName
          : presentLevelName // ignore: cast_nullable_to_non_nullable
              as String?,
      presentLevelText: freezed == presentLevelText
          ? _value.presentLevelText
          : presentLevelText // ignore: cast_nullable_to_non_nullable
              as String?,
      specialTagList: freezed == specialTagList
          ? _value._specialTagList
          : specialTagList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "category_id") this.categoryId,
      @JsonKey(name: "category_name") this.categoryName,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "bljg") this.bljg,
      @JsonKey(name: "xmgm") this.xmgm,
      @JsonKey(name: "xmjd") this.xmjd,
      @JsonKey(name: "qtje") this.qtje,
      @JsonKey(name: "zgje") this.zgje,
      @JsonKey(name: "isgao") this.isgao,
      @JsonKey(name: "ktje") this.ktje,
      @JsonKey(name: "jyrsy") this.jyrsy,
      @JsonKey(name: "tqsyyj") this.tqsyyj,
      @JsonKey(name: "shijian") this.shijian,
      @JsonKey(name: "pic") this.pic,
      @JsonKey(name: "content") this.content,
      @JsonKey(name: "qxdw") this.qxdw,
      @JsonKey(name: "hkfs") this.hkfs,
      @JsonKey(name: "cishu") this.cishu,
      @JsonKey(name: "tzzt") this.tzzt,
      @JsonKey(name: "isft") this.isft,
      @JsonKey(name: "ftjl") this.ftjl,
      @JsonKey(name: "level") this.level,
      @JsonKey(name: "issy") this.issy,
      @JsonKey(name: "issj") this.issj,
      @JsonKey(name: "isdt") this.isdt,
      @JsonKey(name: "iswj") this.iswj,
      @JsonKey(name: "sort") this.sort,
      @JsonKey(name: "tzyq") this.tzyq,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "cycle") this.cycle,
      @JsonKey(name: "istzbug") this.istzbug,
      @JsonKey(name: "isnew") this.isnew,
      @JsonKey(name: "doubled") this.doubled,
      @JsonKey(name: "countequity") this.countequity,
      @JsonKey(name: "bugunmber") this.bugunmber,
      @JsonKey(name: "ismake") this.ismake,
      @JsonKey(name: "endingtime") this.endingtime,
      @JsonKey(name: "isaouttm") this.isaouttm,
      @JsonKey(name: "interval_time") this.intervalTime,
      @JsonKey(name: "rise_time") this.riseTime,
      @JsonKey(name: "frequency") this.frequency,
      @JsonKey(name: "rise_settings") this.riseSettings,
      @JsonKey(name: "rise") this.rise,
      @JsonKey(name: "coupon") this.coupon,
      @JsonKey(name: "givecoupon") this.givecoupon,
      @JsonKey(name: "oldmoney") this.oldmoney,
      @JsonKey(name: "daikuan") this.daikuan,
      @JsonKey(name: "equity") this.equity,
      @JsonKey(name: "integralgive") this.integralgive,
      @JsonKey(name: "nextintegralgive") this.nextintegralgive,
      @JsonKey(name: "ticket") this.ticket,
      @JsonKey(name: "beans") this.beans,
      @JsonKey(name: "xxtcbl") this.xxtcbl,
      @JsonKey(name: "xxtcbll") this.xxtcbll,
      @JsonKey(name: "xxtcblll") this.xxtcblll,
      @JsonKey(name: "xxtcbllll") this.xxtcbllll,
      @JsonKey(name: "jiechuhetong") this.jiechuhetong,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "discountlist") this.discountlist,
      @JsonKey(name: "capital") this.capital,
      @JsonKey(name: "specialbenefits") this.specialbenefits,
      @JsonKey(name: "bjzk") this.bjzk,
      @JsonKey(name: "endtime") this.endtime,
      @JsonKey(name: "zengsongid") this.zengsongid,
      @JsonKey(name: "nextpid") this.nextpid,
      @JsonKey(name: "jfpid") this.jfpid,
      @JsonKey(name: "joining") this.joining,
      @JsonKey(name: "organizer") this.organizer,
      @JsonKey(name: "isgroup") this.isgroup,
      @JsonKey(name: "is_group_lerver") this.isGroupLerver,
      @JsonKey(name: "extmoney") this.extmoney,
      @JsonKey(name: "extday") this.extday,
      @JsonKey(name: "groupcbl") this.groupcbl,
      @JsonKey(name: "isnorate") this.isnorate,
      @JsonKey(name: "presale") this.presale,
      @JsonKey(name: "firstbuy") this.firstbuy,
      @JsonKey(name: "insurance") this.insurance,
      @JsonKey(name: "ft_after_success") this.ftAfterSuccess,
      @JsonKey(name: "present_level") this.presentLevel,
      @JsonKey(name: "return_dividends") this.returnDividends,
      @JsonKey(name: "return_capital") this.returnCapital,
      @JsonKey(name: "is_aggregated_amount") this.isAggregatedAmount,
      @JsonKey(name: "firstbuy_text") this.firstbuyText,
      @JsonKey(name: "invite_only") this.inviteOnly,
      @JsonKey(name: "dividend_method") this.dividendMethod,
      @JsonKey(name: "ismake2") this.ismake2,
      @JsonKey(name: "supportuse") final List<String>? supportuse,
      @JsonKey(name: "investgift") final List<String>? investgift,
      @JsonKey(name: "allreward") final List<String>? allreward,
      @JsonKey(name: "demand_tag_list") final List<dynamic>? demandTagList,
      @JsonKey(name: "attention_tag_list") final List<String>? attentionTagList,
      @JsonKey(name: "group_demand_tag_list")
      final List<dynamic>? groupDemandTagList,
      @JsonKey(name: "present_level_name") this.presentLevelName,
      @JsonKey(name: "present_level_text") this.presentLevelText,
      @JsonKey(name: "special_tag_list") final List<dynamic>? specialTagList})
      : _supportuse = supportuse,
        _investgift = investgift,
        _allreward = allreward,
        _demandTagList = demandTagList,
        _attentionTagList = attentionTagList,
        _groupDemandTagList = groupDemandTagList,
        _specialTagList = specialTagList;

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "category_id")
  final int? categoryId;
  @override
  @JsonKey(name: "category_name")
  final String? categoryName;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "bljg")
  final String? bljg;
  @override
  @JsonKey(name: "xmgm")
  final int? xmgm;
  @override
  @JsonKey(name: "xmjd")
  final int? xmjd;
  @override
  @JsonKey(name: "qtje")
  final int? qtje;
  @override
  @JsonKey(name: "zgje")
  final String? zgje;
  @override
  @JsonKey(name: "isgao")
  final int? isgao;
  @override
  @JsonKey(name: "ktje")
  final dynamic ktje;
  @override
  @JsonKey(name: "jyrsy")
  final String? jyrsy;
  @override
  @JsonKey(name: "tqsyyj")
  final String? tqsyyj;
  @override
  @JsonKey(name: "shijian")
  final String? shijian;
  @override
  @JsonKey(name: "pic")
  final String? pic;
  @override
  @JsonKey(name: "content")
  final String? content;
  @override
  @JsonKey(name: "qxdw")
  final String? qxdw;
  @override
  @JsonKey(name: "hkfs")
  final int? hkfs;
  @override
  @JsonKey(name: "cishu")
  final dynamic cishu;
  @override
  @JsonKey(name: "tzzt")
  final int? tzzt;
  @override
  @JsonKey(name: "isft")
  final int? isft;
  @override
  @JsonKey(name: "ftjl")
  final int? ftjl;
  @override
  @JsonKey(name: "level")
  final int? level;
  @override
  @JsonKey(name: "issy")
  final int? issy;
  @override
  @JsonKey(name: "issj")
  final int? issj;
  @override
  @JsonKey(name: "isdt")
  final int? isdt;
  @override
  @JsonKey(name: "iswj")
  final int? iswj;
  @override
  @JsonKey(name: "sort")
  final int? sort;
  @override
  @JsonKey(name: "tzyq")
  final int? tzyq;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "cycle")
  final int? cycle;
  @override
  @JsonKey(name: "istzbug")
  final int? istzbug;
  @override
  @JsonKey(name: "isnew")
  final int? isnew;
  @override
  @JsonKey(name: "doubled")
  final int? doubled;
  @override
  @JsonKey(name: "countequity")
  final int? countequity;
  @override
  @JsonKey(name: "bugunmber")
  final int? bugunmber;
  @override
  @JsonKey(name: "ismake")
  final int? ismake;
  @override
  @JsonKey(name: "endingtime")
  final String? endingtime;
  @override
  @JsonKey(name: "isaouttm")
  final int? isaouttm;
  @override
  @JsonKey(name: "interval_time")
  final int? intervalTime;
  @override
  @JsonKey(name: "rise_time")
  final String? riseTime;
  @override
  @JsonKey(name: "frequency")
  final int? frequency;
  @override
  @JsonKey(name: "rise_settings")
  final String? riseSettings;
  @override
  @JsonKey(name: "rise")
  final double? rise;
  @override
  @JsonKey(name: "coupon")
  final String? coupon;
  @override
  @JsonKey(name: "givecoupon")
  final String? givecoupon;
  @override
  @JsonKey(name: "oldmoney")
  final String? oldmoney;
  @override
  @JsonKey(name: "daikuan")
  final String? daikuan;
  @override
  @JsonKey(name: "equity")
  final String? equity;
  @override
  @JsonKey(name: "integralgive")
  final String? integralgive;
  @override
  @JsonKey(name: "nextintegralgive")
  final int? nextintegralgive;
  @override
  @JsonKey(name: "ticket")
  final int? ticket;
  @override
  @JsonKey(name: "beans")
  final int? beans;
  @override
  @JsonKey(name: "xxtcbl")
  final String? xxtcbl;
  @override
  @JsonKey(name: "xxtcbll")
  final String? xxtcbll;
  @override
  @JsonKey(name: "xxtcblll")
  final String? xxtcblll;
  @override
  @JsonKey(name: "xxtcbllll")
  final String? xxtcbllll;
  @override
  @JsonKey(name: "jiechuhetong")
  final int? jiechuhetong;
  @override
  @JsonKey(name: "discount")
  final int? discount;
  @override
  @JsonKey(name: "discountlist")
  final String? discountlist;
  @override
  @JsonKey(name: "capital")
  final int? capital;
  @override
  @JsonKey(name: "specialbenefits")
  final String? specialbenefits;
  @override
  @JsonKey(name: "bjzk")
  final int? bjzk;
  @override
  @JsonKey(name: "endtime")
  final String? endtime;
  @override
  @JsonKey(name: "zengsongid")
  final int? zengsongid;
  @override
  @JsonKey(name: "nextpid")
  final int? nextpid;
  @override
  @JsonKey(name: "jfpid")
  final int? jfpid;
  @override
  @JsonKey(name: "joining")
  final int? joining;
  @override
  @JsonKey(name: "organizer")
  final int? organizer;
  @override
  @JsonKey(name: "isgroup")
  final int? isgroup;
  @override
  @JsonKey(name: "is_group_lerver")
  final int? isGroupLerver;
  @override
  @JsonKey(name: "extmoney")
  final int? extmoney;
  @override
  @JsonKey(name: "extday")
  final int? extday;
  @override
  @JsonKey(name: "groupcbl")
  final String? groupcbl;
  @override
  @JsonKey(name: "isnorate")
  final int? isnorate;
  @override
  @JsonKey(name: "presale")
  final int? presale;
  @override
  @JsonKey(name: "firstbuy")
  final int? firstbuy;
  @override
  @JsonKey(name: "insurance")
  final int? insurance;
  @override
  @JsonKey(name: "ft_after_success")
  final int? ftAfterSuccess;
  @override
  @JsonKey(name: "present_level")
  final int? presentLevel;
  @override
  @JsonKey(name: "return_dividends")
  final int? returnDividends;
  @override
  @JsonKey(name: "return_capital")
  final int? returnCapital;
  @override
  @JsonKey(name: "is_aggregated_amount")
  final int? isAggregatedAmount;
  @override
  @JsonKey(name: "firstbuy_text")
  final String? firstbuyText;
  @override
  @JsonKey(name: "invite_only")
  final int? inviteOnly;
  @override
  @JsonKey(name: "dividend_method")
  final String? dividendMethod;
  @override
  @JsonKey(name: "ismake2")
  final int? ismake2;
  final List<String>? _supportuse;
  @override
  @JsonKey(name: "supportuse")
  List<String>? get supportuse {
    final value = _supportuse;
    if (value == null) return null;
    if (_supportuse is EqualUnmodifiableListView) return _supportuse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _investgift;
  @override
  @JsonKey(name: "investgift")
  List<String>? get investgift {
    final value = _investgift;
    if (value == null) return null;
    if (_investgift is EqualUnmodifiableListView) return _investgift;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _allreward;
  @override
  @JsonKey(name: "allreward")
  List<String>? get allreward {
    final value = _allreward;
    if (value == null) return null;
    if (_allreward is EqualUnmodifiableListView) return _allreward;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _demandTagList;
  @override
  @JsonKey(name: "demand_tag_list")
  List<dynamic>? get demandTagList {
    final value = _demandTagList;
    if (value == null) return null;
    if (_demandTagList is EqualUnmodifiableListView) return _demandTagList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _attentionTagList;
  @override
  @JsonKey(name: "attention_tag_list")
  List<String>? get attentionTagList {
    final value = _attentionTagList;
    if (value == null) return null;
    if (_attentionTagList is EqualUnmodifiableListView)
      return _attentionTagList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _groupDemandTagList;
  @override
  @JsonKey(name: "group_demand_tag_list")
  List<dynamic>? get groupDemandTagList {
    final value = _groupDemandTagList;
    if (value == null) return null;
    if (_groupDemandTagList is EqualUnmodifiableListView)
      return _groupDemandTagList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "present_level_name")
  final String? presentLevelName;
  @override
  @JsonKey(name: "present_level_text")
  final String? presentLevelText;
  final List<dynamic>? _specialTagList;
  @override
  @JsonKey(name: "special_tag_list")
  List<dynamic>? get specialTagList {
    final value = _specialTagList;
    if (value == null) return null;
    if (_specialTagList is EqualUnmodifiableListView) return _specialTagList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Datum(id: $id, categoryId: $categoryId, categoryName: $categoryName, title: $title, bljg: $bljg, xmgm: $xmgm, xmjd: $xmjd, qtje: $qtje, zgje: $zgje, isgao: $isgao, ktje: $ktje, jyrsy: $jyrsy, tqsyyj: $tqsyyj, shijian: $shijian, pic: $pic, content: $content, qxdw: $qxdw, hkfs: $hkfs, cishu: $cishu, tzzt: $tzzt, isft: $isft, ftjl: $ftjl, level: $level, issy: $issy, issj: $issj, isdt: $isdt, iswj: $iswj, sort: $sort, tzyq: $tzyq, createdAt: $createdAt, updatedAt: $updatedAt, cycle: $cycle, istzbug: $istzbug, isnew: $isnew, doubled: $doubled, countequity: $countequity, bugunmber: $bugunmber, ismake: $ismake, endingtime: $endingtime, isaouttm: $isaouttm, intervalTime: $intervalTime, riseTime: $riseTime, frequency: $frequency, riseSettings: $riseSettings, rise: $rise, coupon: $coupon, givecoupon: $givecoupon, oldmoney: $oldmoney, daikuan: $daikuan, equity: $equity, integralgive: $integralgive, nextintegralgive: $nextintegralgive, ticket: $ticket, beans: $beans, xxtcbl: $xxtcbl, xxtcbll: $xxtcbll, xxtcblll: $xxtcblll, xxtcbllll: $xxtcbllll, jiechuhetong: $jiechuhetong, discount: $discount, discountlist: $discountlist, capital: $capital, specialbenefits: $specialbenefits, bjzk: $bjzk, endtime: $endtime, zengsongid: $zengsongid, nextpid: $nextpid, jfpid: $jfpid, joining: $joining, organizer: $organizer, isgroup: $isgroup, isGroupLerver: $isGroupLerver, extmoney: $extmoney, extday: $extday, groupcbl: $groupcbl, isnorate: $isnorate, presale: $presale, firstbuy: $firstbuy, insurance: $insurance, ftAfterSuccess: $ftAfterSuccess, presentLevel: $presentLevel, returnDividends: $returnDividends, returnCapital: $returnCapital, isAggregatedAmount: $isAggregatedAmount, firstbuyText: $firstbuyText, inviteOnly: $inviteOnly, dividendMethod: $dividendMethod, ismake2: $ismake2, supportuse: $supportuse, investgift: $investgift, allreward: $allreward, demandTagList: $demandTagList, attentionTagList: $attentionTagList, groupDemandTagList: $groupDemandTagList, presentLevelName: $presentLevelName, presentLevelText: $presentLevelText, specialTagList: $specialTagList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.bljg, bljg) || other.bljg == bljg) &&
            (identical(other.xmgm, xmgm) || other.xmgm == xmgm) &&
            (identical(other.xmjd, xmjd) || other.xmjd == xmjd) &&
            (identical(other.qtje, qtje) || other.qtje == qtje) &&
            (identical(other.zgje, zgje) || other.zgje == zgje) &&
            (identical(other.isgao, isgao) || other.isgao == isgao) &&
            const DeepCollectionEquality().equals(other.ktje, ktje) &&
            (identical(other.jyrsy, jyrsy) || other.jyrsy == jyrsy) &&
            (identical(other.tqsyyj, tqsyyj) || other.tqsyyj == tqsyyj) &&
            (identical(other.shijian, shijian) || other.shijian == shijian) &&
            (identical(other.pic, pic) || other.pic == pic) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.qxdw, qxdw) || other.qxdw == qxdw) &&
            (identical(other.hkfs, hkfs) || other.hkfs == hkfs) &&
            const DeepCollectionEquality().equals(other.cishu, cishu) &&
            (identical(other.tzzt, tzzt) || other.tzzt == tzzt) &&
            (identical(other.isft, isft) || other.isft == isft) &&
            (identical(other.ftjl, ftjl) || other.ftjl == ftjl) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.issy, issy) || other.issy == issy) &&
            (identical(other.issj, issj) || other.issj == issj) &&
            (identical(other.isdt, isdt) || other.isdt == isdt) &&
            (identical(other.iswj, iswj) || other.iswj == iswj) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.tzyq, tzyq) || other.tzyq == tzyq) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.cycle, cycle) || other.cycle == cycle) &&
            (identical(other.istzbug, istzbug) || other.istzbug == istzbug) &&
            (identical(other.isnew, isnew) || other.isnew == isnew) &&
            (identical(other.doubled, doubled) || other.doubled == doubled) &&
            (identical(other.countequity, countequity) ||
                other.countequity == countequity) &&
            (identical(other.bugunmber, bugunmber) ||
                other.bugunmber == bugunmber) &&
            (identical(other.ismake, ismake) || other.ismake == ismake) &&
            (identical(other.endingtime, endingtime) ||
                other.endingtime == endingtime) &&
            (identical(other.isaouttm, isaouttm) ||
                other.isaouttm == isaouttm) &&
            (identical(other.intervalTime, intervalTime) ||
                other.intervalTime == intervalTime) &&
            (identical(other.riseTime, riseTime) ||
                other.riseTime == riseTime) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.riseSettings, riseSettings) ||
                other.riseSettings == riseSettings) &&
            (identical(other.rise, rise) || other.rise == rise) &&
            (identical(other.coupon, coupon) || other.coupon == coupon) &&
            (identical(other.givecoupon, givecoupon) ||
                other.givecoupon == givecoupon) &&
            (identical(other.oldmoney, oldmoney) ||
                other.oldmoney == oldmoney) &&
            (identical(other.daikuan, daikuan) || other.daikuan == daikuan) &&
            (identical(other.equity, equity) || other.equity == equity) &&
            (identical(other.integralgive, integralgive) ||
                other.integralgive == integralgive) &&
            (identical(other.nextintegralgive, nextintegralgive) ||
                other.nextintegralgive == nextintegralgive) &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.beans, beans) || other.beans == beans) &&
            (identical(other.xxtcbl, xxtcbl) || other.xxtcbl == xxtcbl) &&
            (identical(other.xxtcbll, xxtcbll) || other.xxtcbll == xxtcbll) &&
            (identical(other.xxtcblll, xxtcblll) ||
                other.xxtcblll == xxtcblll) &&
            (identical(other.xxtcbllll, xxtcbllll) ||
                other.xxtcbllll == xxtcbllll) &&
            (identical(other.jiechuhetong, jiechuhetong) ||
                other.jiechuhetong == jiechuhetong) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountlist, discountlist) ||
                other.discountlist == discountlist) &&
            (identical(other.capital, capital) || other.capital == capital) &&
            (identical(other.specialbenefits, specialbenefits) ||
                other.specialbenefits == specialbenefits) &&
            (identical(other.bjzk, bjzk) || other.bjzk == bjzk) &&
            (identical(other.endtime, endtime) || other.endtime == endtime) &&
            (identical(other.zengsongid, zengsongid) ||
                other.zengsongid == zengsongid) &&
            (identical(other.nextpid, nextpid) || other.nextpid == nextpid) &&
            (identical(other.jfpid, jfpid) || other.jfpid == jfpid) &&
            (identical(other.joining, joining) || other.joining == joining) &&
            (identical(other.organizer, organizer) ||
                other.organizer == organizer) &&
            (identical(other.isgroup, isgroup) || other.isgroup == isgroup) &&
            (identical(other.isGroupLerver, isGroupLerver) ||
                other.isGroupLerver == isGroupLerver) &&
            (identical(other.extmoney, extmoney) ||
                other.extmoney == extmoney) &&
            (identical(other.extday, extday) || other.extday == extday) &&
            (identical(other.groupcbl, groupcbl) ||
                other.groupcbl == groupcbl) &&
            (identical(other.isnorate, isnorate) ||
                other.isnorate == isnorate) &&
            (identical(other.presale, presale) || other.presale == presale) &&
            (identical(other.firstbuy, firstbuy) ||
                other.firstbuy == firstbuy) &&
            (identical(other.insurance, insurance) ||
                other.insurance == insurance) &&
            (identical(other.ftAfterSuccess, ftAfterSuccess) ||
                other.ftAfterSuccess == ftAfterSuccess) &&
            (identical(other.presentLevel, presentLevel) ||
                other.presentLevel == presentLevel) &&
            (identical(other.returnDividends, returnDividends) ||
                other.returnDividends == returnDividends) &&
            (identical(other.returnCapital, returnCapital) ||
                other.returnCapital == returnCapital) &&
            (identical(other.isAggregatedAmount, isAggregatedAmount) ||
                other.isAggregatedAmount == isAggregatedAmount) &&
            (identical(other.firstbuyText, firstbuyText) ||
                other.firstbuyText == firstbuyText) &&
            (identical(other.inviteOnly, inviteOnly) ||
                other.inviteOnly == inviteOnly) &&
            (identical(other.dividendMethod, dividendMethod) ||
                other.dividendMethod == dividendMethod) &&
            (identical(other.ismake2, ismake2) || other.ismake2 == ismake2) &&
            const DeepCollectionEquality()
                .equals(other._supportuse, _supportuse) &&
            const DeepCollectionEquality()
                .equals(other._investgift, _investgift) &&
            const DeepCollectionEquality()
                .equals(other._allreward, _allreward) &&
            const DeepCollectionEquality()
                .equals(other._demandTagList, _demandTagList) &&
            const DeepCollectionEquality()
                .equals(other._attentionTagList, _attentionTagList) &&
            const DeepCollectionEquality().equals(other._groupDemandTagList, _groupDemandTagList) &&
            (identical(other.presentLevelName, presentLevelName) || other.presentLevelName == presentLevelName) &&
            (identical(other.presentLevelText, presentLevelText) || other.presentLevelText == presentLevelText) &&
            const DeepCollectionEquality().equals(other._specialTagList, _specialTagList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        categoryId,
        categoryName,
        title,
        bljg,
        xmgm,
        xmjd,
        qtje,
        zgje,
        isgao,
        const DeepCollectionEquality().hash(ktje),
        jyrsy,
        tqsyyj,
        shijian,
        pic,
        content,
        qxdw,
        hkfs,
        const DeepCollectionEquality().hash(cishu),
        tzzt,
        isft,
        ftjl,
        level,
        issy,
        issj,
        isdt,
        iswj,
        sort,
        tzyq,
        createdAt,
        updatedAt,
        cycle,
        istzbug,
        isnew,
        doubled,
        countequity,
        bugunmber,
        ismake,
        endingtime,
        isaouttm,
        intervalTime,
        riseTime,
        frequency,
        riseSettings,
        rise,
        coupon,
        givecoupon,
        oldmoney,
        daikuan,
        equity,
        integralgive,
        nextintegralgive,
        ticket,
        beans,
        xxtcbl,
        xxtcbll,
        xxtcblll,
        xxtcbllll,
        jiechuhetong,
        discount,
        discountlist,
        capital,
        specialbenefits,
        bjzk,
        endtime,
        zengsongid,
        nextpid,
        jfpid,
        joining,
        organizer,
        isgroup,
        isGroupLerver,
        extmoney,
        extday,
        groupcbl,
        isnorate,
        presale,
        firstbuy,
        insurance,
        ftAfterSuccess,
        presentLevel,
        returnDividends,
        returnCapital,
        isAggregatedAmount,
        firstbuyText,
        inviteOnly,
        dividendMethod,
        ismake2,
        const DeepCollectionEquality().hash(_supportuse),
        const DeepCollectionEquality().hash(_investgift),
        const DeepCollectionEquality().hash(_allreward),
        const DeepCollectionEquality().hash(_demandTagList),
        const DeepCollectionEquality().hash(_attentionTagList),
        const DeepCollectionEquality().hash(_groupDemandTagList),
        presentLevelName,
        presentLevelText,
        const DeepCollectionEquality().hash(_specialTagList)
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
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "category_id") final int? categoryId,
      @JsonKey(name: "category_name") final String? categoryName,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "bljg") final String? bljg,
      @JsonKey(name: "xmgm") final int? xmgm,
      @JsonKey(name: "xmjd") final int? xmjd,
      @JsonKey(name: "qtje") final int? qtje,
      @JsonKey(name: "zgje") final String? zgje,
      @JsonKey(name: "isgao") final int? isgao,
      @JsonKey(name: "ktje") final dynamic ktje,
      @JsonKey(name: "jyrsy") final String? jyrsy,
      @JsonKey(name: "tqsyyj") final String? tqsyyj,
      @JsonKey(name: "shijian") final String? shijian,
      @JsonKey(name: "pic") final String? pic,
      @JsonKey(name: "content") final String? content,
      @JsonKey(name: "qxdw") final String? qxdw,
      @JsonKey(name: "hkfs") final int? hkfs,
      @JsonKey(name: "cishu") final dynamic cishu,
      @JsonKey(name: "tzzt") final int? tzzt,
      @JsonKey(name: "isft") final int? isft,
      @JsonKey(name: "ftjl") final int? ftjl,
      @JsonKey(name: "level") final int? level,
      @JsonKey(name: "issy") final int? issy,
      @JsonKey(name: "issj") final int? issj,
      @JsonKey(name: "isdt") final int? isdt,
      @JsonKey(name: "iswj") final int? iswj,
      @JsonKey(name: "sort") final int? sort,
      @JsonKey(name: "tzyq") final int? tzyq,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "cycle") final int? cycle,
      @JsonKey(name: "istzbug") final int? istzbug,
      @JsonKey(name: "isnew") final int? isnew,
      @JsonKey(name: "doubled") final int? doubled,
      @JsonKey(name: "countequity") final int? countequity,
      @JsonKey(name: "bugunmber") final int? bugunmber,
      @JsonKey(name: "ismake") final int? ismake,
      @JsonKey(name: "endingtime") final String? endingtime,
      @JsonKey(name: "isaouttm") final int? isaouttm,
      @JsonKey(name: "interval_time") final int? intervalTime,
      @JsonKey(name: "rise_time") final String? riseTime,
      @JsonKey(name: "frequency") final int? frequency,
      @JsonKey(name: "rise_settings") final String? riseSettings,
      @JsonKey(name: "rise") final double? rise,
      @JsonKey(name: "coupon") final String? coupon,
      @JsonKey(name: "givecoupon") final String? givecoupon,
      @JsonKey(name: "oldmoney") final String? oldmoney,
      @JsonKey(name: "daikuan") final String? daikuan,
      @JsonKey(name: "equity") final String? equity,
      @JsonKey(name: "integralgive") final String? integralgive,
      @JsonKey(name: "nextintegralgive") final int? nextintegralgive,
      @JsonKey(name: "ticket") final int? ticket,
      @JsonKey(name: "beans") final int? beans,
      @JsonKey(name: "xxtcbl") final String? xxtcbl,
      @JsonKey(name: "xxtcbll") final String? xxtcbll,
      @JsonKey(name: "xxtcblll") final String? xxtcblll,
      @JsonKey(name: "xxtcbllll") final String? xxtcbllll,
      @JsonKey(name: "jiechuhetong") final int? jiechuhetong,
      @JsonKey(name: "discount") final int? discount,
      @JsonKey(name: "discountlist") final String? discountlist,
      @JsonKey(name: "capital") final int? capital,
      @JsonKey(name: "specialbenefits") final String? specialbenefits,
      @JsonKey(name: "bjzk") final int? bjzk,
      @JsonKey(name: "endtime") final String? endtime,
      @JsonKey(name: "zengsongid") final int? zengsongid,
      @JsonKey(name: "nextpid") final int? nextpid,
      @JsonKey(name: "jfpid") final int? jfpid,
      @JsonKey(name: "joining") final int? joining,
      @JsonKey(name: "organizer") final int? organizer,
      @JsonKey(name: "isgroup") final int? isgroup,
      @JsonKey(name: "is_group_lerver") final int? isGroupLerver,
      @JsonKey(name: "extmoney") final int? extmoney,
      @JsonKey(name: "extday") final int? extday,
      @JsonKey(name: "groupcbl") final String? groupcbl,
      @JsonKey(name: "isnorate") final int? isnorate,
      @JsonKey(name: "presale") final int? presale,
      @JsonKey(name: "firstbuy") final int? firstbuy,
      @JsonKey(name: "insurance") final int? insurance,
      @JsonKey(name: "ft_after_success") final int? ftAfterSuccess,
      @JsonKey(name: "present_level") final int? presentLevel,
      @JsonKey(name: "return_dividends") final int? returnDividends,
      @JsonKey(name: "return_capital") final int? returnCapital,
      @JsonKey(name: "is_aggregated_amount") final int? isAggregatedAmount,
      @JsonKey(name: "firstbuy_text") final String? firstbuyText,
      @JsonKey(name: "invite_only") final int? inviteOnly,
      @JsonKey(name: "dividend_method") final String? dividendMethod,
      @JsonKey(name: "ismake2") final int? ismake2,
      @JsonKey(name: "supportuse") final List<String>? supportuse,
      @JsonKey(name: "investgift") final List<String>? investgift,
      @JsonKey(name: "allreward") final List<String>? allreward,
      @JsonKey(name: "demand_tag_list") final List<dynamic>? demandTagList,
      @JsonKey(name: "attention_tag_list") final List<String>? attentionTagList,
      @JsonKey(name: "group_demand_tag_list")
      final List<dynamic>? groupDemandTagList,
      @JsonKey(name: "present_level_name") final String? presentLevelName,
      @JsonKey(name: "present_level_text") final String? presentLevelText,
      @JsonKey(name: "special_tag_list")
      final List<dynamic>? specialTagList}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "category_id")
  int? get categoryId;
  @override
  @JsonKey(name: "category_name")
  String? get categoryName;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "bljg")
  String? get bljg;
  @override
  @JsonKey(name: "xmgm")
  int? get xmgm;
  @override
  @JsonKey(name: "xmjd")
  int? get xmjd;
  @override
  @JsonKey(name: "qtje")
  int? get qtje;
  @override
  @JsonKey(name: "zgje")
  String? get zgje;
  @override
  @JsonKey(name: "isgao")
  int? get isgao;
  @override
  @JsonKey(name: "ktje")
  dynamic get ktje;
  @override
  @JsonKey(name: "jyrsy")
  String? get jyrsy;
  @override
  @JsonKey(name: "tqsyyj")
  String? get tqsyyj;
  @override
  @JsonKey(name: "shijian")
  String? get shijian;
  @override
  @JsonKey(name: "pic")
  String? get pic;
  @override
  @JsonKey(name: "content")
  String? get content;
  @override
  @JsonKey(name: "qxdw")
  String? get qxdw;
  @override
  @JsonKey(name: "hkfs")
  int? get hkfs;
  @override
  @JsonKey(name: "cishu")
  dynamic get cishu;
  @override
  @JsonKey(name: "tzzt")
  int? get tzzt;
  @override
  @JsonKey(name: "isft")
  int? get isft;
  @override
  @JsonKey(name: "ftjl")
  int? get ftjl;
  @override
  @JsonKey(name: "level")
  int? get level;
  @override
  @JsonKey(name: "issy")
  int? get issy;
  @override
  @JsonKey(name: "issj")
  int? get issj;
  @override
  @JsonKey(name: "isdt")
  int? get isdt;
  @override
  @JsonKey(name: "iswj")
  int? get iswj;
  @override
  @JsonKey(name: "sort")
  int? get sort;
  @override
  @JsonKey(name: "tzyq")
  int? get tzyq;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "cycle")
  int? get cycle;
  @override
  @JsonKey(name: "istzbug")
  int? get istzbug;
  @override
  @JsonKey(name: "isnew")
  int? get isnew;
  @override
  @JsonKey(name: "doubled")
  int? get doubled;
  @override
  @JsonKey(name: "countequity")
  int? get countequity;
  @override
  @JsonKey(name: "bugunmber")
  int? get bugunmber;
  @override
  @JsonKey(name: "ismake")
  int? get ismake;
  @override
  @JsonKey(name: "endingtime")
  String? get endingtime;
  @override
  @JsonKey(name: "isaouttm")
  int? get isaouttm;
  @override
  @JsonKey(name: "interval_time")
  int? get intervalTime;
  @override
  @JsonKey(name: "rise_time")
  String? get riseTime;
  @override
  @JsonKey(name: "frequency")
  int? get frequency;
  @override
  @JsonKey(name: "rise_settings")
  String? get riseSettings;
  @override
  @JsonKey(name: "rise")
  double? get rise;
  @override
  @JsonKey(name: "coupon")
  String? get coupon;
  @override
  @JsonKey(name: "givecoupon")
  String? get givecoupon;
  @override
  @JsonKey(name: "oldmoney")
  String? get oldmoney;
  @override
  @JsonKey(name: "daikuan")
  String? get daikuan;
  @override
  @JsonKey(name: "equity")
  String? get equity;
  @override
  @JsonKey(name: "integralgive")
  String? get integralgive;
  @override
  @JsonKey(name: "nextintegralgive")
  int? get nextintegralgive;
  @override
  @JsonKey(name: "ticket")
  int? get ticket;
  @override
  @JsonKey(name: "beans")
  int? get beans;
  @override
  @JsonKey(name: "xxtcbl")
  String? get xxtcbl;
  @override
  @JsonKey(name: "xxtcbll")
  String? get xxtcbll;
  @override
  @JsonKey(name: "xxtcblll")
  String? get xxtcblll;
  @override
  @JsonKey(name: "xxtcbllll")
  String? get xxtcbllll;
  @override
  @JsonKey(name: "jiechuhetong")
  int? get jiechuhetong;
  @override
  @JsonKey(name: "discount")
  int? get discount;
  @override
  @JsonKey(name: "discountlist")
  String? get discountlist;
  @override
  @JsonKey(name: "capital")
  int? get capital;
  @override
  @JsonKey(name: "specialbenefits")
  String? get specialbenefits;
  @override
  @JsonKey(name: "bjzk")
  int? get bjzk;
  @override
  @JsonKey(name: "endtime")
  String? get endtime;
  @override
  @JsonKey(name: "zengsongid")
  int? get zengsongid;
  @override
  @JsonKey(name: "nextpid")
  int? get nextpid;
  @override
  @JsonKey(name: "jfpid")
  int? get jfpid;
  @override
  @JsonKey(name: "joining")
  int? get joining;
  @override
  @JsonKey(name: "organizer")
  int? get organizer;
  @override
  @JsonKey(name: "isgroup")
  int? get isgroup;
  @override
  @JsonKey(name: "is_group_lerver")
  int? get isGroupLerver;
  @override
  @JsonKey(name: "extmoney")
  int? get extmoney;
  @override
  @JsonKey(name: "extday")
  int? get extday;
  @override
  @JsonKey(name: "groupcbl")
  String? get groupcbl;
  @override
  @JsonKey(name: "isnorate")
  int? get isnorate;
  @override
  @JsonKey(name: "presale")
  int? get presale;
  @override
  @JsonKey(name: "firstbuy")
  int? get firstbuy;
  @override
  @JsonKey(name: "insurance")
  int? get insurance;
  @override
  @JsonKey(name: "ft_after_success")
  int? get ftAfterSuccess;
  @override
  @JsonKey(name: "present_level")
  int? get presentLevel;
  @override
  @JsonKey(name: "return_dividends")
  int? get returnDividends;
  @override
  @JsonKey(name: "return_capital")
  int? get returnCapital;
  @override
  @JsonKey(name: "is_aggregated_amount")
  int? get isAggregatedAmount;
  @override
  @JsonKey(name: "firstbuy_text")
  String? get firstbuyText;
  @override
  @JsonKey(name: "invite_only")
  int? get inviteOnly;
  @override
  @JsonKey(name: "dividend_method")
  String? get dividendMethod;
  @override
  @JsonKey(name: "ismake2")
  int? get ismake2;
  @override
  @JsonKey(name: "supportuse")
  List<String>? get supportuse;
  @override
  @JsonKey(name: "investgift")
  List<String>? get investgift;
  @override
  @JsonKey(name: "allreward")
  List<String>? get allreward;
  @override
  @JsonKey(name: "demand_tag_list")
  List<dynamic>? get demandTagList;
  @override
  @JsonKey(name: "attention_tag_list")
  List<String>? get attentionTagList;
  @override
  @JsonKey(name: "group_demand_tag_list")
  List<dynamic>? get groupDemandTagList;
  @override
  @JsonKey(name: "present_level_name")
  String? get presentLevelName;
  @override
  @JsonKey(name: "present_level_text")
  String? get presentLevelText;
  @override
  @JsonKey(name: "special_tag_list")
  List<dynamic>? get specialTagList;
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
