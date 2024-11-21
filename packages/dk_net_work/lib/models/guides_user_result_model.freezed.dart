// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guides_user_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GuidesUserResultModel _$GuidesUserResultModelFromJson(
    Map<String, dynamic> json) {
  return _GuidesUserResultModel.fromJson(json);
}

/// @nodoc
mixin _$GuidesUserResultModel {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  String? get msg => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuidesUserResultModelCopyWith<GuidesUserResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuidesUserResultModelCopyWith<$Res> {
  factory $GuidesUserResultModelCopyWith(GuidesUserResultModel value,
          $Res Function(GuidesUserResultModel) then) =
      _$GuidesUserResultModelCopyWithImpl<$Res, GuidesUserResultModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GuidesUserResultModelCopyWithImpl<$Res,
        $Val extends GuidesUserResultModel>
    implements $GuidesUserResultModelCopyWith<$Res> {
  _$GuidesUserResultModelCopyWithImpl(this._value, this._then);

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
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GuidesUserResultModelImplCopyWith<$Res>
    implements $GuidesUserResultModelCopyWith<$Res> {
  factory _$$GuidesUserResultModelImplCopyWith(
          _$GuidesUserResultModelImpl value,
          $Res Function(_$GuidesUserResultModelImpl) then) =
      __$$GuidesUserResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "data") Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GuidesUserResultModelImplCopyWithImpl<$Res>
    extends _$GuidesUserResultModelCopyWithImpl<$Res,
        _$GuidesUserResultModelImpl>
    implements _$$GuidesUserResultModelImplCopyWith<$Res> {
  __$$GuidesUserResultModelImplCopyWithImpl(_$GuidesUserResultModelImpl _value,
      $Res Function(_$GuidesUserResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GuidesUserResultModelImpl(
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
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuidesUserResultModelImpl implements _GuidesUserResultModel {
  const _$GuidesUserResultModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "msg") this.msg,
      @JsonKey(name: "data") this.data});

  factory _$GuidesUserResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuidesUserResultModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "msg")
  final String? msg;
  @override
  @JsonKey(name: "data")
  final Data? data;

  @override
  String toString() {
    return 'GuidesUserResultModel(status: $status, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuidesUserResultModelImpl &&
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
  _$$GuidesUserResultModelImplCopyWith<_$GuidesUserResultModelImpl>
      get copyWith => __$$GuidesUserResultModelImplCopyWithImpl<
          _$GuidesUserResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuidesUserResultModelImplToJson(
      this,
    );
  }
}

abstract class _GuidesUserResultModel implements GuidesUserResultModel {
  const factory _GuidesUserResultModel(
      {@JsonKey(name: "status") final int? status,
      @JsonKey(name: "msg") final String? msg,
      @JsonKey(name: "data") final Data? data}) = _$GuidesUserResultModelImpl;

  factory _GuidesUserResultModel.fromJson(Map<String, dynamic> json) =
      _$GuidesUserResultModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "msg")
  String? get msg;
  @override
  @JsonKey(name: "data")
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$GuidesUserResultModelImplCopyWith<_$GuidesUserResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "list")
  List<GuideItemList>? get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({@JsonKey(name: "list") List<GuideItemList>? list});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<GuideItemList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "list") List<GuideItemList>? list});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$DataImpl(
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<GuideItemList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({@JsonKey(name: "list") final List<GuideItemList>? list})
      : _list = list;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  final List<GuideItemList>? _list;
  @override
  @JsonKey(name: "list")
  List<GuideItemList>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: "list") final List<GuideItemList>? list}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "list")
  List<GuideItemList>? get list;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GuideItemList _$GuideItemListFromJson(Map<String, dynamic> json) {
  return _GuideItemList.fromJson(json);
}

/// @nodoc
mixin _$GuideItemList {
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "arr")
  List<GuideItem>? get arr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuideItemListCopyWith<GuideItemList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuideItemListCopyWith<$Res> {
  factory $GuideItemListCopyWith(
          GuideItemList value, $Res Function(GuideItemList) then) =
      _$GuideItemListCopyWithImpl<$Res, GuideItemList>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "arr") List<GuideItem>? arr});
}

/// @nodoc
class _$GuideItemListCopyWithImpl<$Res, $Val extends GuideItemList>
    implements $GuideItemListCopyWith<$Res> {
  _$GuideItemListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? arr = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      arr: freezed == arr
          ? _value.arr
          : arr // ignore: cast_nullable_to_non_nullable
              as List<GuideItem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GuideItemListImplCopyWith<$Res>
    implements $GuideItemListCopyWith<$Res> {
  factory _$$GuideItemListImplCopyWith(
          _$GuideItemListImpl value, $Res Function(_$GuideItemListImpl) then) =
      __$$GuideItemListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String? name,
      @JsonKey(name: "arr") List<GuideItem>? arr});
}

/// @nodoc
class __$$GuideItemListImplCopyWithImpl<$Res>
    extends _$GuideItemListCopyWithImpl<$Res, _$GuideItemListImpl>
    implements _$$GuideItemListImplCopyWith<$Res> {
  __$$GuideItemListImplCopyWithImpl(
      _$GuideItemListImpl _value, $Res Function(_$GuideItemListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? arr = freezed,
  }) {
    return _then(_$GuideItemListImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      arr: freezed == arr
          ? _value._arr
          : arr // ignore: cast_nullable_to_non_nullable
              as List<GuideItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuideItemListImpl implements _GuideItemList {
  const _$GuideItemListImpl(
      {@JsonKey(name: "name") this.name,
      @JsonKey(name: "arr") final List<GuideItem>? arr})
      : _arr = arr;

  factory _$GuideItemListImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuideItemListImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String? name;
  final List<GuideItem>? _arr;
  @override
  @JsonKey(name: "arr")
  List<GuideItem>? get arr {
    final value = _arr;
    if (value == null) return null;
    if (_arr is EqualUnmodifiableListView) return _arr;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GuideItemList(name: $name, arr: $arr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuideItemListImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._arr, _arr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, const DeepCollectionEquality().hash(_arr));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuideItemListImplCopyWith<_$GuideItemListImpl> get copyWith =>
      __$$GuideItemListImplCopyWithImpl<_$GuideItemListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuideItemListImplToJson(
      this,
    );
  }
}

abstract class _GuideItemList implements GuideItemList {
  const factory _GuideItemList(
      {@JsonKey(name: "name") final String? name,
      @JsonKey(name: "arr") final List<GuideItem>? arr}) = _$GuideItemListImpl;

  factory _GuideItemList.fromJson(Map<String, dynamic> json) =
      _$GuideItemListImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "arr")
  List<GuideItem>? get arr;
  @override
  @JsonKey(ignore: true)
  _$$GuideItemListImplCopyWith<_$GuideItemListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GuideItem _$GuideItemFromJson(Map<String, dynamic> json) {
  return _GuideItem.fromJson(json);
}

/// @nodoc
mixin _$GuideItem {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "adverid")
  int? get adverid => throw _privateConstructorUsedError;
  @JsonKey(name: "thumb_url")
  String? get thumbUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: "sort")
  int? get sort => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  dynamic get description => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  dynamic get code => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuideItemCopyWith<GuideItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuideItemCopyWith<$Res> {
  factory $GuideItemCopyWith(GuideItem value, $Res Function(GuideItem) then) =
      _$GuideItemCopyWithImpl<$Res, GuideItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "adverid") int? adverid,
      @JsonKey(name: "thumb_url") String? thumbUrl,
      @JsonKey(name: "url") String? url,
      @JsonKey(name: "sort") int? sort,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") dynamic description,
      @JsonKey(name: "code") dynamic code,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$GuideItemCopyWithImpl<$Res, $Val extends GuideItem>
    implements $GuideItemCopyWith<$Res> {
  _$GuideItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? adverid = freezed,
    Object? thumbUrl = freezed,
    Object? url = freezed,
    Object? sort = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? code = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      adverid: freezed == adverid
          ? _value.adverid
          : adverid // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbUrl: freezed == thumbUrl
          ? _value.thumbUrl
          : thumbUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GuideItemImplCopyWith<$Res>
    implements $GuideItemCopyWith<$Res> {
  factory _$$GuideItemImplCopyWith(
          _$GuideItemImpl value, $Res Function(_$GuideItemImpl) then) =
      __$$GuideItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "adverid") int? adverid,
      @JsonKey(name: "thumb_url") String? thumbUrl,
      @JsonKey(name: "url") String? url,
      @JsonKey(name: "sort") int? sort,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "description") dynamic description,
      @JsonKey(name: "code") dynamic code,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$$GuideItemImplCopyWithImpl<$Res>
    extends _$GuideItemCopyWithImpl<$Res, _$GuideItemImpl>
    implements _$$GuideItemImplCopyWith<$Res> {
  __$$GuideItemImplCopyWithImpl(
      _$GuideItemImpl _value, $Res Function(_$GuideItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? adverid = freezed,
    Object? thumbUrl = freezed,
    Object? url = freezed,
    Object? sort = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? code = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$GuideItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      adverid: freezed == adverid
          ? _value.adverid
          : adverid // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbUrl: freezed == thumbUrl
          ? _value.thumbUrl
          : thumbUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuideItemImpl implements _GuideItem {
  const _$GuideItemImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "adverid") this.adverid,
      @JsonKey(name: "thumb_url") this.thumbUrl,
      @JsonKey(name: "url") this.url,
      @JsonKey(name: "sort") this.sort,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$GuideItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuideItemImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "adverid")
  final int? adverid;
  @override
  @JsonKey(name: "thumb_url")
  final String? thumbUrl;
  @override
  @JsonKey(name: "url")
  final String? url;
  @override
  @JsonKey(name: "sort")
  final int? sort;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "description")
  final dynamic description;
  @override
  @JsonKey(name: "code")
  final dynamic code;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString() {
    return 'GuideItem(id: $id, name: $name, adverid: $adverid, thumbUrl: $thumbUrl, url: $url, sort: $sort, title: $title, description: $description, code: $code, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuideItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.adverid, adverid) || other.adverid == adverid) &&
            (identical(other.thumbUrl, thumbUrl) ||
                other.thumbUrl == thumbUrl) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      adverid,
      thumbUrl,
      url,
      sort,
      title,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(code),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuideItemImplCopyWith<_$GuideItemImpl> get copyWith =>
      __$$GuideItemImplCopyWithImpl<_$GuideItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuideItemImplToJson(
      this,
    );
  }
}

abstract class _GuideItem implements GuideItem {
  const factory _GuideItem(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "adverid") final int? adverid,
      @JsonKey(name: "thumb_url") final String? thumbUrl,
      @JsonKey(name: "url") final String? url,
      @JsonKey(name: "sort") final int? sort,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "description") final dynamic description,
      @JsonKey(name: "code") final dynamic code,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt}) = _$GuideItemImpl;

  factory _GuideItem.fromJson(Map<String, dynamic> json) =
      _$GuideItemImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "adverid")
  int? get adverid;
  @override
  @JsonKey(name: "thumb_url")
  String? get thumbUrl;
  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(name: "sort")
  int? get sort;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "description")
  dynamic get description;
  @override
  @JsonKey(name: "code")
  dynamic get code;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$GuideItemImplCopyWith<_$GuideItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
