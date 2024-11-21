// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_detail_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContentDetailResult _$ContentDetailResultFromJson(Map<String, dynamic> json) {
  return _ContentDetailResult.fromJson(json);
}

/// @nodoc
mixin _$ContentDetailResult {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  String? get msg => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  ContentDetailData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentDetailResultCopyWith<ContentDetailResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentDetailResultCopyWith<$Res> {
  factory $ContentDetailResultCopyWith(
          ContentDetailResult value, $Res Function(ContentDetailResult) then) =
      _$ContentDetailResultCopyWithImpl<$Res, ContentDetailResult>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "data") ContentDetailData? data});

  $ContentDetailDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ContentDetailResultCopyWithImpl<$Res, $Val extends ContentDetailResult>
    implements $ContentDetailResultCopyWith<$Res> {
  _$ContentDetailResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ContentDetailData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContentDetailDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ContentDetailDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContentDetailResultImplCopyWith<$Res>
    implements $ContentDetailResultCopyWith<$Res> {
  factory _$$ContentDetailResultImplCopyWith(_$ContentDetailResultImpl value,
          $Res Function(_$ContentDetailResultImpl) then) =
      __$$ContentDetailResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "data") ContentDetailData? data});

  @override
  $ContentDetailDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ContentDetailResultImplCopyWithImpl<$Res>
    extends _$ContentDetailResultCopyWithImpl<$Res, _$ContentDetailResultImpl>
    implements _$$ContentDetailResultImplCopyWith<$Res> {
  __$$ContentDetailResultImplCopyWithImpl(_$ContentDetailResultImpl _value,
      $Res Function(_$ContentDetailResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ContentDetailResultImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ContentDetailData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentDetailResultImpl implements _ContentDetailResult {
  const _$ContentDetailResultImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "msg") this.msg,
      @JsonKey(name: "data") this.data});

  factory _$ContentDetailResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentDetailResultImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "msg")
  final String? msg;
  @override
  @JsonKey(name: "data")
  final ContentDetailData? data;

  @override
  String toString() {
    return 'ContentDetailResult(status: $status, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentDetailResultImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, msg, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentDetailResultImplCopyWith<_$ContentDetailResultImpl> get copyWith =>
      __$$ContentDetailResultImplCopyWithImpl<_$ContentDetailResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentDetailResultImplToJson(
      this,
    );
  }
}

abstract class _ContentDetailResult implements ContentDetailResult {
  const factory _ContentDetailResult(
          {@JsonKey(name: "status") final int? status,
          @JsonKey(name: "msg") final String? msg,
          @JsonKey(name: "data") final ContentDetailData? data}) =
      _$ContentDetailResultImpl;

  factory _ContentDetailResult.fromJson(Map<String, dynamic> json) =
      _$ContentDetailResultImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "msg")
  String? get msg;
  @override
  @JsonKey(name: "data")
  ContentDetailData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ContentDetailResultImplCopyWith<_$ContentDetailResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContentDetailData _$ContentDetailDataFromJson(Map<String, dynamic> json) {
  return _ContentDetailData.fromJson(json);
}

/// @nodoc
mixin _$ContentDetailData {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "category_name")
  String? get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "author")
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: "keyinfo")
  String? get keyinfo => throw _privateConstructorUsedError;
  @JsonKey(name: "descr")
  String? get descr => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "photos")
  String? get photos => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "click_count")
  int? get clickCount => throw _privateConstructorUsedError;
  @JsonKey(name: "pop_count")
  int? get popCount => throw _privateConstructorUsedError;
  @JsonKey(name: "top_status")
  int? get topStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "top_time")
  DateTime? get topTime => throw _privateConstructorUsedError;
  @JsonKey(name: "extend")
  dynamic get extend => throw _privateConstructorUsedError;
  @JsonKey(name: "sort")
  int? get sort => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "top_sort")
  int? get topSort => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentDetailDataCopyWith<ContentDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentDetailDataCopyWith<$Res> {
  factory $ContentDetailDataCopyWith(
          ContentDetailData value, $Res Function(ContentDetailData) then) =
      _$ContentDetailDataCopyWithImpl<$Res, ContentDetailData>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "category_id") int? categoryId,
      @JsonKey(name: "category_name") String? categoryName,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "author") String? author,
      @JsonKey(name: "keyinfo") String? keyinfo,
      @JsonKey(name: "descr") String? descr,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "photos") String? photos,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "click_count") int? clickCount,
      @JsonKey(name: "pop_count") int? popCount,
      @JsonKey(name: "top_status") int? topStatus,
      @JsonKey(name: "top_time") DateTime? topTime,
      @JsonKey(name: "extend") dynamic extend,
      @JsonKey(name: "sort") int? sort,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "top_sort") int? topSort});
}

/// @nodoc
class _$ContentDetailDataCopyWithImpl<$Res, $Val extends ContentDetailData>
    implements $ContentDetailDataCopyWith<$Res> {
  _$ContentDetailDataCopyWithImpl(this._value, this._then);

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
    Object? popCount = freezed,
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
      popCount: freezed == popCount
          ? _value.popCount
          : popCount // ignore: cast_nullable_to_non_nullable
              as int?,
      topStatus: freezed == topStatus
          ? _value.topStatus
          : topStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      topTime: freezed == topTime
          ? _value.topTime
          : topTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$$ContentDetailDataImplCopyWith<$Res>
    implements $ContentDetailDataCopyWith<$Res> {
  factory _$$ContentDetailDataImplCopyWith(_$ContentDetailDataImpl value,
          $Res Function(_$ContentDetailDataImpl) then) =
      __$$ContentDetailDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "category_id") int? categoryId,
      @JsonKey(name: "category_name") String? categoryName,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "author") String? author,
      @JsonKey(name: "keyinfo") String? keyinfo,
      @JsonKey(name: "descr") String? descr,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "photos") String? photos,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "click_count") int? clickCount,
      @JsonKey(name: "pop_count") int? popCount,
      @JsonKey(name: "top_status") int? topStatus,
      @JsonKey(name: "top_time") DateTime? topTime,
      @JsonKey(name: "extend") dynamic extend,
      @JsonKey(name: "sort") int? sort,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "top_sort") int? topSort});
}

/// @nodoc
class __$$ContentDetailDataImplCopyWithImpl<$Res>
    extends _$ContentDetailDataCopyWithImpl<$Res, _$ContentDetailDataImpl>
    implements _$$ContentDetailDataImplCopyWith<$Res> {
  __$$ContentDetailDataImplCopyWithImpl(_$ContentDetailDataImpl _value,
      $Res Function(_$ContentDetailDataImpl) _then)
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
    Object? popCount = freezed,
    Object? topStatus = freezed,
    Object? topTime = freezed,
    Object? extend = freezed,
    Object? sort = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? topSort = freezed,
  }) {
    return _then(_$ContentDetailDataImpl(
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
      popCount: freezed == popCount
          ? _value.popCount
          : popCount // ignore: cast_nullable_to_non_nullable
              as int?,
      topStatus: freezed == topStatus
          ? _value.topStatus
          : topStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      topTime: freezed == topTime
          ? _value.topTime
          : topTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
class _$ContentDetailDataImpl implements _ContentDetailData {
  const _$ContentDetailDataImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "category_id") this.categoryId,
      @JsonKey(name: "category_name") this.categoryName,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "author") this.author,
      @JsonKey(name: "keyinfo") this.keyinfo,
      @JsonKey(name: "descr") this.descr,
      @JsonKey(name: "image") this.image,
      @JsonKey(name: "photos") this.photos,
      @JsonKey(name: "content") this.content,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "click_count") this.clickCount,
      @JsonKey(name: "pop_count") this.popCount,
      @JsonKey(name: "top_status") this.topStatus,
      @JsonKey(name: "top_time") this.topTime,
      @JsonKey(name: "extend") this.extend,
      @JsonKey(name: "sort") this.sort,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "top_sort") this.topSort});

  factory _$ContentDetailDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentDetailDataImplFromJson(json);

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
  @JsonKey(name: "author")
  final String? author;
  @override
  @JsonKey(name: "keyinfo")
  final String? keyinfo;
  @override
  @JsonKey(name: "descr")
  final String? descr;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "photos")
  final String? photos;
  @override
  @JsonKey(name: "content")
  final String? content;
  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "click_count")
  final int? clickCount;
  @override
  @JsonKey(name: "pop_count")
  final int? popCount;
  @override
  @JsonKey(name: "top_status")
  final int? topStatus;
  @override
  @JsonKey(name: "top_time")
  final DateTime? topTime;
  @override
  @JsonKey(name: "extend")
  final dynamic extend;
  @override
  @JsonKey(name: "sort")
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
    return 'ContentDetailData(id: $id, categoryId: $categoryId, categoryName: $categoryName, title: $title, author: $author, keyinfo: $keyinfo, descr: $descr, image: $image, photos: $photos, content: $content, status: $status, clickCount: $clickCount, popCount: $popCount, topStatus: $topStatus, topTime: $topTime, extend: $extend, sort: $sort, createdAt: $createdAt, updatedAt: $updatedAt, topSort: $topSort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentDetailDataImpl &&
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
            (identical(other.popCount, popCount) ||
                other.popCount == popCount) &&
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
        popCount,
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
  _$$ContentDetailDataImplCopyWith<_$ContentDetailDataImpl> get copyWith =>
      __$$ContentDetailDataImplCopyWithImpl<_$ContentDetailDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentDetailDataImplToJson(
      this,
    );
  }
}

abstract class _ContentDetailData implements ContentDetailData {
  const factory _ContentDetailData(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "category_id") final int? categoryId,
      @JsonKey(name: "category_name") final String? categoryName,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "author") final String? author,
      @JsonKey(name: "keyinfo") final String? keyinfo,
      @JsonKey(name: "descr") final String? descr,
      @JsonKey(name: "image") final String? image,
      @JsonKey(name: "photos") final String? photos,
      @JsonKey(name: "content") final String? content,
      @JsonKey(name: "status") final int? status,
      @JsonKey(name: "click_count") final int? clickCount,
      @JsonKey(name: "pop_count") final int? popCount,
      @JsonKey(name: "top_status") final int? topStatus,
      @JsonKey(name: "top_time") final DateTime? topTime,
      @JsonKey(name: "extend") final dynamic extend,
      @JsonKey(name: "sort") final int? sort,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "top_sort") final int? topSort}) = _$ContentDetailDataImpl;

  factory _ContentDetailData.fromJson(Map<String, dynamic> json) =
      _$ContentDetailDataImpl.fromJson;

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
  @JsonKey(name: "author")
  String? get author;
  @override
  @JsonKey(name: "keyinfo")
  String? get keyinfo;
  @override
  @JsonKey(name: "descr")
  String? get descr;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "photos")
  String? get photos;
  @override
  @JsonKey(name: "content")
  String? get content;
  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "click_count")
  int? get clickCount;
  @override
  @JsonKey(name: "pop_count")
  int? get popCount;
  @override
  @JsonKey(name: "top_status")
  int? get topStatus;
  @override
  @JsonKey(name: "top_time")
  DateTime? get topTime;
  @override
  @JsonKey(name: "extend")
  dynamic get extend;
  @override
  @JsonKey(name: "sort")
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
  _$$ContentDetailDataImplCopyWith<_$ContentDetailDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
