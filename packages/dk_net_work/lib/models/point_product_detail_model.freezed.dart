// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'point_product_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PointProductDetailModel _$PointProductDetailModelFromJson(
    Map<String, dynamic> json) {
  return _PointProductDetailModel.fromJson(json);
}

/// @nodoc
mixin _$PointProductDetailModel {
  int? get status => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;
  String? get ruleArea => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointProductDetailModelCopyWith<PointProductDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointProductDetailModelCopyWith<$Res> {
  factory $PointProductDetailModelCopyWith(PointProductDetailModel value,
          $Res Function(PointProductDetailModel) then) =
      _$PointProductDetailModelCopyWithImpl<$Res, PointProductDetailModel>;
  @useResult
  $Res call({int? status, String? title, Product? product, String? ruleArea});

  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$PointProductDetailModelCopyWithImpl<$Res,
        $Val extends PointProductDetailModel>
    implements $PointProductDetailModelCopyWith<$Res> {
  _$PointProductDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? title = freezed,
    Object? product = freezed,
    Object? ruleArea = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      ruleArea: freezed == ruleArea
          ? _value.ruleArea
          : ruleArea // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PointProductDetailModelImplCopyWith<$Res>
    implements $PointProductDetailModelCopyWith<$Res> {
  factory _$$PointProductDetailModelImplCopyWith(
          _$PointProductDetailModelImpl value,
          $Res Function(_$PointProductDetailModelImpl) then) =
      __$$PointProductDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? title, Product? product, String? ruleArea});

  @override
  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$PointProductDetailModelImplCopyWithImpl<$Res>
    extends _$PointProductDetailModelCopyWithImpl<$Res,
        _$PointProductDetailModelImpl>
    implements _$$PointProductDetailModelImplCopyWith<$Res> {
  __$$PointProductDetailModelImplCopyWithImpl(
      _$PointProductDetailModelImpl _value,
      $Res Function(_$PointProductDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? title = freezed,
    Object? product = freezed,
    Object? ruleArea = freezed,
  }) {
    return _then(_$PointProductDetailModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      ruleArea: freezed == ruleArea
          ? _value.ruleArea
          : ruleArea // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PointProductDetailModelImpl implements _PointProductDetailModel {
  const _$PointProductDetailModelImpl(
      {this.status, this.title, this.product, this.ruleArea});

  factory _$PointProductDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PointProductDetailModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? title;
  @override
  final Product? product;
  @override
  final String? ruleArea;

  @override
  String toString() {
    return 'PointProductDetailModel(status: $status, title: $title, product: $product, ruleArea: $ruleArea)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PointProductDetailModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.ruleArea, ruleArea) ||
                other.ruleArea == ruleArea));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, title, product, ruleArea);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PointProductDetailModelImplCopyWith<_$PointProductDetailModelImpl>
      get copyWith => __$$PointProductDetailModelImplCopyWithImpl<
          _$PointProductDetailModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PointProductDetailModelImplToJson(
      this,
    );
  }
}

abstract class _PointProductDetailModel implements PointProductDetailModel {
  const factory _PointProductDetailModel(
      {final int? status,
      final String? title,
      final Product? product,
      final String? ruleArea}) = _$PointProductDetailModelImpl;

  factory _PointProductDetailModel.fromJson(Map<String, dynamic> json) =
      _$PointProductDetailModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get title;
  @override
  Product? get product;
  @override
  String? get ruleArea;
  @override
  @JsonKey(ignore: true)
  _$$PointProductDetailModelImplCopyWith<_$PointProductDetailModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int? get id => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  String? get categoryName => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get keyinfo => throw _privateConstructorUsedError;
  String? get descr => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<String>? get photos => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  int? get clickCount => throw _privateConstructorUsedError;
  int? get integral => throw _privateConstructorUsedError;
  int? get topStatus => throw _privateConstructorUsedError;
  dynamic get topTime => throw _privateConstructorUsedError;
  dynamic get extend => throw _privateConstructorUsedError;
  int? get sort => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get ispoto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int? id,
      int? categoryId,
      String? categoryName,
      String? title,
      String? author,
      String? keyinfo,
      String? descr,
      String? image,
      List<String>? photos,
      String? content,
      int? status,
      int? clickCount,
      int? integral,
      int? topStatus,
      dynamic topTime,
      dynamic extend,
      int? sort,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? ispoto});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

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
    Object? ispoto = freezed,
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
              as List<String>?,
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
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ispoto: freezed == ispoto
          ? _value.ispoto
          : ispoto // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? categoryId,
      String? categoryName,
      String? title,
      String? author,
      String? keyinfo,
      String? descr,
      String? image,
      List<String>? photos,
      String? content,
      int? status,
      int? clickCount,
      int? integral,
      int? topStatus,
      dynamic topTime,
      dynamic extend,
      int? sort,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? ispoto});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
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
    Object? ispoto = freezed,
  }) {
    return _then(_$ProductImpl(
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
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ispoto: freezed == ispoto
          ? _value.ispoto
          : ispoto // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {this.id,
      this.categoryId,
      this.categoryName,
      this.title,
      this.author,
      this.keyinfo,
      this.descr,
      this.image,
      final List<String>? photos,
      this.content,
      this.status,
      this.clickCount,
      this.integral,
      this.topStatus,
      this.topTime,
      this.extend,
      this.sort,
      this.createdAt,
      this.updatedAt,
      this.ispoto})
      : _photos = photos;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final int? id;
  @override
  final int? categoryId;
  @override
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
  final List<String>? _photos;
  @override
  List<String>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? content;
  @override
  final int? status;
  @override
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
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? ispoto;

  @override
  String toString() {
    return 'Product(id: $id, categoryId: $categoryId, categoryName: $categoryName, title: $title, author: $author, keyinfo: $keyinfo, descr: $descr, image: $image, photos: $photos, content: $content, status: $status, clickCount: $clickCount, integral: $integral, topStatus: $topStatus, topTime: $topTime, extend: $extend, sort: $sort, createdAt: $createdAt, updatedAt: $updatedAt, ispoto: $ispoto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
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
            const DeepCollectionEquality().equals(other._photos, _photos) &&
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
            (identical(other.ispoto, ispoto) || other.ispoto == ispoto));
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
        const DeepCollectionEquality().hash(_photos),
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
        ispoto
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {final int? id,
      final int? categoryId,
      final String? categoryName,
      final String? title,
      final String? author,
      final String? keyinfo,
      final String? descr,
      final String? image,
      final List<String>? photos,
      final String? content,
      final int? status,
      final int? clickCount,
      final int? integral,
      final int? topStatus,
      final dynamic topTime,
      final dynamic extend,
      final int? sort,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final int? ispoto}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  int? get id;
  @override
  int? get categoryId;
  @override
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
  List<String>? get photos;
  @override
  String? get content;
  @override
  int? get status;
  @override
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
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  int? get ispoto;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
