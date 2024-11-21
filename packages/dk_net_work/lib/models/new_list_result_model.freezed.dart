// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_list_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewListResultModel _$NewListResultModelFromJson(Map<String, dynamic> json) {
  return _NewListResultModel.fromJson(json);
}

/// @nodoc
mixin _$NewListResultModel {
  List<Articlescategory>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewListResultModelCopyWith<NewListResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewListResultModelCopyWith<$Res> {
  factory $NewListResultModelCopyWith(
          NewListResultModel value, $Res Function(NewListResultModel) then) =
      _$NewListResultModelCopyWithImpl<$Res, NewListResultModel>;
  @useResult
  $Res call({List<Articlescategory>? data});
}

/// @nodoc
class _$NewListResultModelCopyWithImpl<$Res, $Val extends NewListResultModel>
    implements $NewListResultModelCopyWith<$Res> {
  _$NewListResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Articlescategory>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewListResultModelImplCopyWith<$Res>
    implements $NewListResultModelCopyWith<$Res> {
  factory _$$NewListResultModelImplCopyWith(_$NewListResultModelImpl value,
          $Res Function(_$NewListResultModelImpl) then) =
      __$$NewListResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Articlescategory>? data});
}

/// @nodoc
class __$$NewListResultModelImplCopyWithImpl<$Res>
    extends _$NewListResultModelCopyWithImpl<$Res, _$NewListResultModelImpl>
    implements _$$NewListResultModelImplCopyWith<$Res> {
  __$$NewListResultModelImplCopyWithImpl(_$NewListResultModelImpl _value,
      $Res Function(_$NewListResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$NewListResultModelImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Articlescategory>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewListResultModelImpl implements _NewListResultModel {
  const _$NewListResultModelImpl({final List<Articlescategory>? data})
      : _data = data;

  factory _$NewListResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewListResultModelImplFromJson(json);

  final List<Articlescategory>? _data;
  @override
  List<Articlescategory>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NewListResultModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewListResultModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewListResultModelImplCopyWith<_$NewListResultModelImpl> get copyWith =>
      __$$NewListResultModelImplCopyWithImpl<_$NewListResultModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewListResultModelImplToJson(
      this,
    );
  }
}

abstract class _NewListResultModel implements NewListResultModel {
  const factory _NewListResultModel({final List<Articlescategory>? data}) =
      _$NewListResultModelImpl;

  factory _NewListResultModel.fromJson(Map<String, dynamic> json) =
      _$NewListResultModelImpl.fromJson;

  @override
  List<Articlescategory>? get data;
  @override
  @JsonKey(ignore: true)
  _$$NewListResultModelImplCopyWith<_$NewListResultModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Articlescategory _$ArticlescategoryFromJson(Map<String, dynamic> json) {
  return _Articlescategory.fromJson(json);
}

/// @nodoc
mixin _$Articlescategory {
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
  @JsonKey(name: "top_status")
  int? get topStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "top_time")
  String? get topTime => throw _privateConstructorUsedError;
  dynamic get extend => throw _privateConstructorUsedError;
  int? get sort => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "top_sort")
  int? get topSort => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticlescategoryCopyWith<Articlescategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticlescategoryCopyWith<$Res> {
  factory $ArticlescategoryCopyWith(
          Articlescategory value, $Res Function(Articlescategory) then) =
      _$ArticlescategoryCopyWithImpl<$Res, Articlescategory>;
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
      @JsonKey(name: "top_status") int? topStatus,
      @JsonKey(name: "top_time") String? topTime,
      dynamic extend,
      int? sort,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "top_sort") int? topSort});
}

/// @nodoc
class _$ArticlescategoryCopyWithImpl<$Res, $Val extends Articlescategory>
    implements $ArticlescategoryCopyWith<$Res> {
  _$ArticlescategoryCopyWithImpl(this._value, this._then);

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
    Object? topStatus = freezed,
    Object? topTime = freezed,
    Object? extend = freezed,
    Object? sort = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? topSort = freezed,
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
      topStatus: freezed == topStatus
          ? _value.topStatus
          : topStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      topTime: freezed == topTime
          ? _value.topTime
          : topTime // ignore: cast_nullable_to_non_nullable
              as String?,
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
      topSort: freezed == topSort
          ? _value.topSort
          : topSort // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticlescategoryImplCopyWith<$Res>
    implements $ArticlescategoryCopyWith<$Res> {
  factory _$$ArticlescategoryImplCopyWith(_$ArticlescategoryImpl value,
          $Res Function(_$ArticlescategoryImpl) then) =
      __$$ArticlescategoryImplCopyWithImpl<$Res>;
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
      @JsonKey(name: "top_status") int? topStatus,
      @JsonKey(name: "top_time") String? topTime,
      dynamic extend,
      int? sort,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "top_sort") int? topSort});
}

/// @nodoc
class __$$ArticlescategoryImplCopyWithImpl<$Res>
    extends _$ArticlescategoryCopyWithImpl<$Res, _$ArticlescategoryImpl>
    implements _$$ArticlescategoryImplCopyWith<$Res> {
  __$$ArticlescategoryImplCopyWithImpl(_$ArticlescategoryImpl _value,
      $Res Function(_$ArticlescategoryImpl) _then)
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
    Object? topStatus = freezed,
    Object? topTime = freezed,
    Object? extend = freezed,
    Object? sort = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? topSort = freezed,
  }) {
    return _then(_$ArticlescategoryImpl(
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
      topStatus: freezed == topStatus
          ? _value.topStatus
          : topStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      topTime: freezed == topTime
          ? _value.topTime
          : topTime // ignore: cast_nullable_to_non_nullable
              as String?,
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
      topSort: freezed == topSort
          ? _value.topSort
          : topSort // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticlescategoryImpl implements _Articlescategory {
  const _$ArticlescategoryImpl(
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
      @JsonKey(name: "top_status") this.topStatus,
      @JsonKey(name: "top_time") this.topTime,
      this.extend,
      this.sort,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "top_sort") this.topSort});

  factory _$ArticlescategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticlescategoryImplFromJson(json);

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
  @JsonKey(name: "top_status")
  final int? topStatus;
  @override
  @JsonKey(name: "top_time")
  final String? topTime;
  @override
  final dynamic extend;
  @override
  final int? sort;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "top_sort")
  final int? topSort;

  @override
  String toString() {
    return 'Articlescategory(id: $id, categoryId: $categoryId, categoryName: $categoryName, title: $title, author: $author, keyinfo: $keyinfo, descr: $descr, image: $image, photos: $photos, content: $content, status: $status, clickCount: $clickCount, topStatus: $topStatus, topTime: $topTime, extend: $extend, sort: $sort, createdAt: $createdAt, updatedAt: $updatedAt, topSort: $topSort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticlescategoryImpl &&
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
            (identical(other.topStatus, topStatus) ||
                other.topStatus == topStatus) &&
            (identical(other.topTime, topTime) || other.topTime == topTime) &&
            const DeepCollectionEquality().equals(other.extend, extend) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.topSort, topSort) || other.topSort == topSort));
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
        topStatus,
        topTime,
        const DeepCollectionEquality().hash(extend),
        sort,
        createdAt,
        updatedAt,
        topSort
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticlescategoryImplCopyWith<_$ArticlescategoryImpl> get copyWith =>
      __$$ArticlescategoryImplCopyWithImpl<_$ArticlescategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticlescategoryImplToJson(
      this,
    );
  }
}

abstract class _Articlescategory implements Articlescategory {
  const factory _Articlescategory(
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
      @JsonKey(name: "top_status") final int? topStatus,
      @JsonKey(name: "top_time") final String? topTime,
      final dynamic extend,
      final int? sort,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "top_sort") final int? topSort}) = _$ArticlescategoryImpl;

  factory _Articlescategory.fromJson(Map<String, dynamic> json) =
      _$ArticlescategoryImpl.fromJson;

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
  @JsonKey(name: "top_status")
  int? get topStatus;
  @override
  @JsonKey(name: "top_time")
  String? get topTime;
  @override
  dynamic get extend;
  @override
  int? get sort;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "top_sort")
  int? get topSort;
  @override
  @JsonKey(ignore: true)
  _$$ArticlescategoryImplCopyWith<_$ArticlescategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
