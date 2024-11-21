// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'point_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PointProductModel _$PointProductModelFromJson(Map<String, dynamic> json) {
  return _PointProductModel.fromJson(json);
}

/// @nodoc
mixin _$PointProductModel {
  int? get status => throw _privateConstructorUsedError;
  ListClass? get list => throw _privateConstructorUsedError;
  int? get isPoint => throw _privateConstructorUsedError;
  String? get pagesize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointProductModelCopyWith<PointProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointProductModelCopyWith<$Res> {
  factory $PointProductModelCopyWith(
          PointProductModel value, $Res Function(PointProductModel) then) =
      _$PointProductModelCopyWithImpl<$Res, PointProductModel>;
  @useResult
  $Res call({int? status, ListClass? list, int? isPoint, String? pagesize});

  $ListClassCopyWith<$Res>? get list;
}

/// @nodoc
class _$PointProductModelCopyWithImpl<$Res, $Val extends PointProductModel>
    implements $PointProductModelCopyWith<$Res> {
  _$PointProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
    Object? isPoint = freezed,
    Object? pagesize = freezed,
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
      isPoint: freezed == isPoint
          ? _value.isPoint
          : isPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
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
abstract class _$$PointProductModelImplCopyWith<$Res>
    implements $PointProductModelCopyWith<$Res> {
  factory _$$PointProductModelImplCopyWith(_$PointProductModelImpl value,
          $Res Function(_$PointProductModelImpl) then) =
      __$$PointProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, ListClass? list, int? isPoint, String? pagesize});

  @override
  $ListClassCopyWith<$Res>? get list;
}

/// @nodoc
class __$$PointProductModelImplCopyWithImpl<$Res>
    extends _$PointProductModelCopyWithImpl<$Res, _$PointProductModelImpl>
    implements _$$PointProductModelImplCopyWith<$Res> {
  __$$PointProductModelImplCopyWithImpl(_$PointProductModelImpl _value,
      $Res Function(_$PointProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
    Object? isPoint = freezed,
    Object? pagesize = freezed,
  }) {
    return _then(_$PointProductModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ListClass?,
      isPoint: freezed == isPoint
          ? _value.isPoint
          : isPoint // ignore: cast_nullable_to_non_nullable
              as int?,
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PointProductModelImpl implements _PointProductModel {
  const _$PointProductModelImpl(
      {this.status, this.list, this.isPoint, this.pagesize});

  factory _$PointProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PointProductModelImplFromJson(json);

  @override
  final int? status;
  @override
  final ListClass? list;
  @override
  final int? isPoint;
  @override
  final String? pagesize;

  @override
  String toString() {
    return 'PointProductModel(status: $status, list: $list, isPoint: $isPoint, pagesize: $pagesize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PointProductModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.isPoint, isPoint) || other.isPoint == isPoint) &&
            (identical(other.pagesize, pagesize) ||
                other.pagesize == pagesize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, list, isPoint, pagesize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PointProductModelImplCopyWith<_$PointProductModelImpl> get copyWith =>
      __$$PointProductModelImplCopyWithImpl<_$PointProductModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PointProductModelImplToJson(
      this,
    );
  }
}

abstract class _PointProductModel implements PointProductModel {
  const factory _PointProductModel(
      {final int? status,
      final ListClass? list,
      final int? isPoint,
      final String? pagesize}) = _$PointProductModelImpl;

  factory _PointProductModel.fromJson(Map<String, dynamic> json) =
      _$PointProductModelImpl.fromJson;

  @override
  int? get status;
  @override
  ListClass? get list;
  @override
  int? get isPoint;
  @override
  String? get pagesize;
  @override
  @JsonKey(ignore: true)
  _$$PointProductModelImplCopyWith<_$PointProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListClass _$ListClassFromJson(Map<String, dynamic> json) {
  return _ListClass.fromJson(json);
}

/// @nodoc
mixin _$ListClass {
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  List<ProductItem>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "first_page_url")
  String? get firstPageUrl => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page")
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page_url")
  String? get lastPageUrl => throw _privateConstructorUsedError;
  List<Link>? get links => throw _privateConstructorUsedError;
  @JsonKey(name: "next_page_url")
  String? get nextPageUrl => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "prev_page_url")
  String? get prevPageUrl => throw _privateConstructorUsedError;
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
      {@JsonKey(name: "current_page") int? currentPage,
      List<ProductItem>? data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      List<Link>? links,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      String? path,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "prev_page_url") String? prevPageUrl,
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
              as List<ProductItem>?,
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
abstract class _$$ListClassImplCopyWith<$Res>
    implements $ListClassCopyWith<$Res> {
  factory _$$ListClassImplCopyWith(
          _$ListClassImpl value, $Res Function(_$ListClassImpl) then) =
      __$$ListClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      List<ProductItem>? data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      List<Link>? links,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      String? path,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "prev_page_url") String? prevPageUrl,
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
              as List<ProductItem>?,
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
class _$ListClassImpl implements _ListClass {
  const _$ListClassImpl(
      {@JsonKey(name: "current_page") this.currentPage,
      final List<ProductItem>? data,
      @JsonKey(name: "first_page_url") this.firstPageUrl,
      this.from,
      @JsonKey(name: "last_page") this.lastPage,
      @JsonKey(name: "last_page_url") this.lastPageUrl,
      final List<Link>? links,
      @JsonKey(name: "next_page_url") this.nextPageUrl,
      this.path,
      @JsonKey(name: "per_page") this.perPage,
      @JsonKey(name: "prev_page_url") this.prevPageUrl,
      this.to,
      this.total})
      : _data = data,
        _links = links;

  factory _$ListClassImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListClassImplFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  final List<ProductItem>? _data;
  @override
  List<ProductItem>? get data {
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
  final int? from;
  @override
  @JsonKey(name: "last_page")
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
  @JsonKey(name: "per_page")
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
      final List<ProductItem>? data,
      @JsonKey(name: "first_page_url") final String? firstPageUrl,
      final int? from,
      @JsonKey(name: "last_page") final int? lastPage,
      @JsonKey(name: "last_page_url") final String? lastPageUrl,
      final List<Link>? links,
      @JsonKey(name: "next_page_url") final String? nextPageUrl,
      final String? path,
      @JsonKey(name: "per_page") final int? perPage,
      @JsonKey(name: "prev_page_url") final String? prevPageUrl,
      final int? to,
      final int? total}) = _$ListClassImpl;

  factory _ListClass.fromJson(Map<String, dynamic> json) =
      _$ListClassImpl.fromJson;

  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  List<ProductItem>? get data;
  @override
  @JsonKey(name: "first_page_url")
  String? get firstPageUrl;
  @override
  int? get from;
  @override
  @JsonKey(name: "last_page")
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
  @JsonKey(name: "per_page")
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
  _$$ListClassImplCopyWith<_$ListClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductItem _$ProductItemFromJson(Map<String, dynamic> json) {
  return _ProductItem.fromJson(json);
}

/// @nodoc
mixin _$ProductItem {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "category_name")
  String? get categoryName => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get keyinfo => throw _privateConstructorUsedError;
  String? get descr => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get photos => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "click_count")
  int? get clickCount => throw _privateConstructorUsedError;
  int? get integral => throw _privateConstructorUsedError;
  int? get topStatus => throw _privateConstructorUsedError;
  dynamic get topTime => throw _privateConstructorUsedError;
  dynamic get extend => throw _privateConstructorUsedError;
  int? get sort => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updateed_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductItemCopyWith<ProductItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductItemCopyWith<$Res> {
  factory $ProductItemCopyWith(
          ProductItem value, $Res Function(ProductItem) then) =
      _$ProductItemCopyWithImpl<$Res, ProductItem>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "category_id") int? categoryId,
      @JsonKey(name: "category_name") String? categoryName,
      String? title,
      String? author,
      String? keyinfo,
      String? descr,
      String? image,
      String? photos,
      String? content,
      int? status,
      @JsonKey(name: "click_count") int? clickCount,
      int? integral,
      int? topStatus,
      dynamic topTime,
      dynamic extend,
      int? sort,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updateed_at") String? updatedAt,
      String? date});
}

/// @nodoc
class _$ProductItemCopyWithImpl<$Res, $Val extends ProductItem>
    implements $ProductItemCopyWith<$Res> {
  _$ProductItemCopyWithImpl(this._value, this._then);

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
    Object? author = freezed,
    Object? keyinfo = freezed,
    Object? descr = freezed,
    Object? image = freezed,
    Object? photos = freezed,
    Object? content = freezed,
    Object? status = freezed,
    Object? clickCount = freezed,
    Object? integral = freezed,
    Object? topStatus = freezed,
    Object? topTime = freezed,
    Object? extend = freezed,
    Object? sort = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? date = freezed,
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
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      keyinfo: freezed == keyinfo
          ? _value.keyinfo
          : keyinfo // ignore: cast_nullable_to_non_nullable
              as String?,
      descr: freezed == descr
          ? _value.descr
          : descr // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      clickCount: freezed == clickCount
          ? _value.clickCount
          : clickCount // ignore: cast_nullable_to_non_nullable
              as int?,
      integral: freezed == integral
          ? _value.integral
          : integral // ignore: cast_nullable_to_non_nullable
              as int?,
      topStatus: freezed == topStatus
          ? _value.topStatus
          : topStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      topTime: freezed == topTime
          ? _value.topTime
          : topTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      extend: freezed == extend
          ? _value.extend
          : extend // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductItemImplCopyWith<$Res>
    implements $ProductItemCopyWith<$Res> {
  factory _$$ProductItemImplCopyWith(
          _$ProductItemImpl value, $Res Function(_$ProductItemImpl) then) =
      __$$ProductItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "category_id") int? categoryId,
      @JsonKey(name: "category_name") String? categoryName,
      String? title,
      String? author,
      String? keyinfo,
      String? descr,
      String? image,
      String? photos,
      String? content,
      int? status,
      @JsonKey(name: "click_count") int? clickCount,
      int? integral,
      int? topStatus,
      dynamic topTime,
      dynamic extend,
      int? sort,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updateed_at") String? updatedAt,
      String? date});
}

/// @nodoc
class __$$ProductItemImplCopyWithImpl<$Res>
    extends _$ProductItemCopyWithImpl<$Res, _$ProductItemImpl>
    implements _$$ProductItemImplCopyWith<$Res> {
  __$$ProductItemImplCopyWithImpl(
      _$ProductItemImpl _value, $Res Function(_$ProductItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? title = freezed,
    Object? author = freezed,
    Object? keyinfo = freezed,
    Object? descr = freezed,
    Object? image = freezed,
    Object? photos = freezed,
    Object? content = freezed,
    Object? status = freezed,
    Object? clickCount = freezed,
    Object? integral = freezed,
    Object? topStatus = freezed,
    Object? topTime = freezed,
    Object? extend = freezed,
    Object? sort = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? date = freezed,
  }) {
    return _then(_$ProductItemImpl(
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
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      keyinfo: freezed == keyinfo
          ? _value.keyinfo
          : keyinfo // ignore: cast_nullable_to_non_nullable
              as String?,
      descr: freezed == descr
          ? _value.descr
          : descr // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      clickCount: freezed == clickCount
          ? _value.clickCount
          : clickCount // ignore: cast_nullable_to_non_nullable
              as int?,
      integral: freezed == integral
          ? _value.integral
          : integral // ignore: cast_nullable_to_non_nullable
              as int?,
      topStatus: freezed == topStatus
          ? _value.topStatus
          : topStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      topTime: freezed == topTime
          ? _value.topTime
          : topTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      extend: freezed == extend
          ? _value.extend
          : extend // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
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
class _$ProductItemImpl implements _ProductItem {
  const _$ProductItemImpl(
      {this.id,
      @JsonKey(name: "category_id") this.categoryId,
      @JsonKey(name: "category_name") this.categoryName,
      this.title,
      this.author,
      this.keyinfo,
      this.descr,
      this.image,
      this.photos,
      this.content,
      this.status,
      @JsonKey(name: "click_count") this.clickCount,
      this.integral,
      this.topStatus,
      this.topTime,
      this.extend,
      this.sort,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updateed_at") this.updatedAt,
      this.date});

  factory _$ProductItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductItemImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "category_id")
  final int? categoryId;
  @override
  @JsonKey(name: "category_name")
  final String? categoryName;
  @override
  final String? title;
  @override
  final String? author;
  @override
  final String? keyinfo;
  @override
  final String? descr;
  @override
  final String? image;
  @override
  final String? photos;
  @override
  final String? content;
  @override
  final int? status;
  @override
  @JsonKey(name: "click_count")
  final int? clickCount;
  @override
  final int? integral;
  @override
  final int? topStatus;
  @override
  final dynamic topTime;
  @override
  final dynamic extend;
  @override
  final int? sort;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updateed_at")
  final String? updatedAt;
  @override
  final String? date;

  @override
  String toString() {
    return 'ProductItem(id: $id, categoryId: $categoryId, categoryName: $categoryName, title: $title, author: $author, keyinfo: $keyinfo, descr: $descr, image: $image, photos: $photos, content: $content, status: $status, clickCount: $clickCount, integral: $integral, topStatus: $topStatus, topTime: $topTime, extend: $extend, sort: $sort, createdAt: $createdAt, updatedAt: $updatedAt, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.keyinfo, keyinfo) || other.keyinfo == keyinfo) &&
            (identical(other.descr, descr) || other.descr == descr) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.photos, photos) || other.photos == photos) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.clickCount, clickCount) ||
                other.clickCount == clickCount) &&
            (identical(other.integral, integral) ||
                other.integral == integral) &&
            (identical(other.topStatus, topStatus) ||
                other.topStatus == topStatus) &&
            const DeepCollectionEquality().equals(other.topTime, topTime) &&
            const DeepCollectionEquality().equals(other.extend, extend) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        categoryId,
        categoryName,
        title,
        author,
        keyinfo,
        descr,
        image,
        photos,
        content,
        status,
        clickCount,
        integral,
        topStatus,
        const DeepCollectionEquality().hash(topTime),
        const DeepCollectionEquality().hash(extend),
        sort,
        createdAt,
        updatedAt,
        date
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductItemImplCopyWith<_$ProductItemImpl> get copyWith =>
      __$$ProductItemImplCopyWithImpl<_$ProductItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductItemImplToJson(
      this,
    );
  }
}

abstract class _ProductItem implements ProductItem {
  const factory _ProductItem(
      {final int? id,
      @JsonKey(name: "category_id") final int? categoryId,
      @JsonKey(name: "category_name") final String? categoryName,
      final String? title,
      final String? author,
      final String? keyinfo,
      final String? descr,
      final String? image,
      final String? photos,
      final String? content,
      final int? status,
      @JsonKey(name: "click_count") final int? clickCount,
      final int? integral,
      final int? topStatus,
      final dynamic topTime,
      final dynamic extend,
      final int? sort,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updateed_at") final String? updatedAt,
      final String? date}) = _$ProductItemImpl;

  factory _ProductItem.fromJson(Map<String, dynamic> json) =
      _$ProductItemImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "category_id")
  int? get categoryId;
  @override
  @JsonKey(name: "category_name")
  String? get categoryName;
  @override
  String? get title;
  @override
  String? get author;
  @override
  String? get keyinfo;
  @override
  String? get descr;
  @override
  String? get image;
  @override
  String? get photos;
  @override
  String? get content;
  @override
  int? get status;
  @override
  @JsonKey(name: "click_count")
  int? get clickCount;
  @override
  int? get integral;
  @override
  int? get topStatus;
  @override
  dynamic get topTime;
  @override
  dynamic get extend;
  @override
  int? get sort;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updateed_at")
  String? get updatedAt;
  @override
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$ProductItemImplCopyWith<_$ProductItemImpl> get copyWith =>
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
