// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_category_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductCategoryResultModel _$ProductCategoryResultModelFromJson(
    Map<String, dynamic> json) {
  return _ProductCategoryResultModel.fromJson(json);
}

/// @nodoc
mixin _$ProductCategoryResultModel {
  @JsonKey(name: "ProductsCategory")
  List<ProductsCategory>? get productsCategory =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCategoryResultModelCopyWith<ProductCategoryResultModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryResultModelCopyWith<$Res> {
  factory $ProductCategoryResultModelCopyWith(ProductCategoryResultModel value,
          $Res Function(ProductCategoryResultModel) then) =
      _$ProductCategoryResultModelCopyWithImpl<$Res,
          ProductCategoryResultModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "ProductsCategory")
      List<ProductsCategory>? productsCategory});
}

/// @nodoc
class _$ProductCategoryResultModelCopyWithImpl<$Res,
        $Val extends ProductCategoryResultModel>
    implements $ProductCategoryResultModelCopyWith<$Res> {
  _$ProductCategoryResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsCategory = freezed,
  }) {
    return _then(_value.copyWith(
      productsCategory: freezed == productsCategory
          ? _value.productsCategory
          : productsCategory // ignore: cast_nullable_to_non_nullable
              as List<ProductsCategory>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductCategoryResultModelImplCopyWith<$Res>
    implements $ProductCategoryResultModelCopyWith<$Res> {
  factory _$$ProductCategoryResultModelImplCopyWith(
          _$ProductCategoryResultModelImpl value,
          $Res Function(_$ProductCategoryResultModelImpl) then) =
      __$$ProductCategoryResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ProductsCategory")
      List<ProductsCategory>? productsCategory});
}

/// @nodoc
class __$$ProductCategoryResultModelImplCopyWithImpl<$Res>
    extends _$ProductCategoryResultModelCopyWithImpl<$Res,
        _$ProductCategoryResultModelImpl>
    implements _$$ProductCategoryResultModelImplCopyWith<$Res> {
  __$$ProductCategoryResultModelImplCopyWithImpl(
      _$ProductCategoryResultModelImpl _value,
      $Res Function(_$ProductCategoryResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productsCategory = freezed,
  }) {
    return _then(_$ProductCategoryResultModelImpl(
      productsCategory: freezed == productsCategory
          ? _value._productsCategory
          : productsCategory // ignore: cast_nullable_to_non_nullable
              as List<ProductsCategory>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductCategoryResultModelImpl implements _ProductCategoryResultModel {
  const _$ProductCategoryResultModelImpl(
      {@JsonKey(name: "ProductsCategory")
      final List<ProductsCategory>? productsCategory})
      : _productsCategory = productsCategory;

  factory _$ProductCategoryResultModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProductCategoryResultModelImplFromJson(json);

  final List<ProductsCategory>? _productsCategory;
  @override
  @JsonKey(name: "ProductsCategory")
  List<ProductsCategory>? get productsCategory {
    final value = _productsCategory;
    if (value == null) return null;
    if (_productsCategory is EqualUnmodifiableListView)
      return _productsCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductCategoryResultModel(productsCategory: $productsCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCategoryResultModelImpl &&
            const DeepCollectionEquality()
                .equals(other._productsCategory, _productsCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productsCategory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCategoryResultModelImplCopyWith<_$ProductCategoryResultModelImpl>
      get copyWith => __$$ProductCategoryResultModelImplCopyWithImpl<
          _$ProductCategoryResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductCategoryResultModelImplToJson(
      this,
    );
  }
}

abstract class _ProductCategoryResultModel
    implements ProductCategoryResultModel {
  const factory _ProductCategoryResultModel(
          {@JsonKey(name: "ProductsCategory")
          final List<ProductsCategory>? productsCategory}) =
      _$ProductCategoryResultModelImpl;

  factory _ProductCategoryResultModel.fromJson(Map<String, dynamic> json) =
      _$ProductCategoryResultModelImpl.fromJson;

  @override
  @JsonKey(name: "ProductsCategory")
  List<ProductsCategory>? get productsCategory;
  @override
  @JsonKey(ignore: true)
  _$$ProductCategoryResultModelImplCopyWith<_$ProductCategoryResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductsCategory _$ProductsCategoryFromJson(Map<String, dynamic> json) {
  return _ProductsCategory.fromJson(json);
}

/// @nodoc
mixin _$ProductsCategory {
  int? get id => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  String? get msg => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "NextCategoryList")
  List<ProductsCategory>? get nextCategoryList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsCategoryCopyWith<ProductsCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsCategoryCopyWith<$Res> {
  factory $ProductsCategoryCopyWith(
          ProductsCategory value, $Res Function(ProductsCategory) then) =
      _$ProductsCategoryCopyWithImpl<$Res, ProductsCategory>;
  @useResult
  $Res call(
      {int? id,
      int? status,
      String? msg,
      String? name,
      @JsonKey(name: "NextCategoryList")
      List<ProductsCategory>? nextCategoryList});
}

/// @nodoc
class _$ProductsCategoryCopyWithImpl<$Res, $Val extends ProductsCategory>
    implements $ProductsCategoryCopyWith<$Res> {
  _$ProductsCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? msg = freezed,
    Object? name = freezed,
    Object? nextCategoryList = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nextCategoryList: freezed == nextCategoryList
          ? _value.nextCategoryList
          : nextCategoryList // ignore: cast_nullable_to_non_nullable
              as List<ProductsCategory>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsCategoryImplCopyWith<$Res>
    implements $ProductsCategoryCopyWith<$Res> {
  factory _$$ProductsCategoryImplCopyWith(_$ProductsCategoryImpl value,
          $Res Function(_$ProductsCategoryImpl) then) =
      __$$ProductsCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? status,
      String? msg,
      String? name,
      @JsonKey(name: "NextCategoryList")
      List<ProductsCategory>? nextCategoryList});
}

/// @nodoc
class __$$ProductsCategoryImplCopyWithImpl<$Res>
    extends _$ProductsCategoryCopyWithImpl<$Res, _$ProductsCategoryImpl>
    implements _$$ProductsCategoryImplCopyWith<$Res> {
  __$$ProductsCategoryImplCopyWithImpl(_$ProductsCategoryImpl _value,
      $Res Function(_$ProductsCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? msg = freezed,
    Object? name = freezed,
    Object? nextCategoryList = freezed,
  }) {
    return _then(_$ProductsCategoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nextCategoryList: freezed == nextCategoryList
          ? _value._nextCategoryList
          : nextCategoryList // ignore: cast_nullable_to_non_nullable
              as List<ProductsCategory>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsCategoryImpl implements _ProductsCategory {
  const _$ProductsCategoryImpl(
      {this.id,
      this.status,
      this.msg,
      this.name,
      @JsonKey(name: "NextCategoryList")
      final List<ProductsCategory>? nextCategoryList})
      : _nextCategoryList = nextCategoryList;

  factory _$ProductsCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsCategoryImplFromJson(json);

  @override
  final int? id;
  @override
  final int? status;
  @override
  final String? msg;
  @override
  final String? name;
  final List<ProductsCategory>? _nextCategoryList;
  @override
  @JsonKey(name: "NextCategoryList")
  List<ProductsCategory>? get nextCategoryList {
    final value = _nextCategoryList;
    if (value == null) return null;
    if (_nextCategoryList is EqualUnmodifiableListView)
      return _nextCategoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductsCategory(id: $id, status: $status, msg: $msg, name: $name, nextCategoryList: $nextCategoryList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._nextCategoryList, _nextCategoryList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, msg, name,
      const DeepCollectionEquality().hash(_nextCategoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsCategoryImplCopyWith<_$ProductsCategoryImpl> get copyWith =>
      __$$ProductsCategoryImplCopyWithImpl<_$ProductsCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsCategoryImplToJson(
      this,
    );
  }
}

abstract class _ProductsCategory implements ProductsCategory {
  const factory _ProductsCategory(
      {final int? id,
      final int? status,
      final String? msg,
      final String? name,
      @JsonKey(name: "NextCategoryList")
      final List<ProductsCategory>? nextCategoryList}) = _$ProductsCategoryImpl;

  factory _ProductsCategory.fromJson(Map<String, dynamic> json) =
      _$ProductsCategoryImpl.fromJson;

  @override
  int? get id;
  @override
  int? get status;
  @override
  String? get msg;
  @override
  String? get name;
  @override
  @JsonKey(name: "NextCategoryList")
  List<ProductsCategory>? get nextCategoryList;
  @override
  @JsonKey(ignore: true)
  _$$ProductsCategoryImplCopyWith<_$ProductsCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
