// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_product_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryProductResultModel _$CategoryProductResultModelFromJson(
    Map<String, dynamic> json) {
  return _CategoryProductResultModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryProductResultModel {
  List<ListElement>? get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryProductResultModelCopyWith<CategoryProductResultModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryProductResultModelCopyWith<$Res> {
  factory $CategoryProductResultModelCopyWith(CategoryProductResultModel value,
          $Res Function(CategoryProductResultModel) then) =
      _$CategoryProductResultModelCopyWithImpl<$Res,
          CategoryProductResultModel>;
  @useResult
  $Res call({List<ListElement>? list});
}

/// @nodoc
class _$CategoryProductResultModelCopyWithImpl<$Res,
        $Val extends CategoryProductResultModel>
    implements $CategoryProductResultModelCopyWith<$Res> {
  _$CategoryProductResultModelCopyWithImpl(this._value, this._then);

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
              as List<ListElement>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryProductResultModelImplCopyWith<$Res>
    implements $CategoryProductResultModelCopyWith<$Res> {
  factory _$$CategoryProductResultModelImplCopyWith(
          _$CategoryProductResultModelImpl value,
          $Res Function(_$CategoryProductResultModelImpl) then) =
      __$$CategoryProductResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ListElement>? list});
}

/// @nodoc
class __$$CategoryProductResultModelImplCopyWithImpl<$Res>
    extends _$CategoryProductResultModelCopyWithImpl<$Res,
        _$CategoryProductResultModelImpl>
    implements _$$CategoryProductResultModelImplCopyWith<$Res> {
  __$$CategoryProductResultModelImplCopyWithImpl(
      _$CategoryProductResultModelImpl _value,
      $Res Function(_$CategoryProductResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$CategoryProductResultModelImpl(
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ListElement>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryProductResultModelImpl implements _CategoryProductResultModel {
  const _$CategoryProductResultModelImpl({final List<ListElement>? list})
      : _list = list;

  factory _$CategoryProductResultModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CategoryProductResultModelImplFromJson(json);

  final List<ListElement>? _list;
  @override
  List<ListElement>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoryProductResultModel(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProductResultModelImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryProductResultModelImplCopyWith<_$CategoryProductResultModelImpl>
      get copyWith => __$$CategoryProductResultModelImplCopyWithImpl<
          _$CategoryProductResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryProductResultModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryProductResultModel
    implements CategoryProductResultModel {
  const factory _CategoryProductResultModel({final List<ListElement>? list}) =
      _$CategoryProductResultModelImpl;

  factory _CategoryProductResultModel.fromJson(Map<String, dynamic> json) =
      _$CategoryProductResultModelImpl.fromJson;

  @override
  List<ListElement>? get list;
  @override
  @JsonKey(ignore: true)
  _$$CategoryProductResultModelImplCopyWith<_$CategoryProductResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ListElement _$ListElementFromJson(Map<String, dynamic> json) {
  return _ListElement.fromJson(json);
}

/// @nodoc
mixin _$ListElement {
  int? get id => throw _privateConstructorUsedError;
  int? get parent => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get sort => throw _privateConstructorUsedError;
  @JsonKey(name: "thumb_url")
  String? get thumbUrl => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  String? get ctitle => throw _privateConstructorUsedError;
  String? get links => throw _privateConstructorUsedError;
  String? get ckeywords => throw _privateConstructorUsedError;
  String? get cdescription => throw _privateConstructorUsedError;
  String? get ccontent => throw _privateConstructorUsedError;
  int? get atindex => throw _privateConstructorUsedError;
  int? get atfoot => throw _privateConstructorUsedError;
  int? get ismenus => throw _privateConstructorUsedError;
  String? get classname => throw _privateConstructorUsedError;
  @JsonKey(name: "click_count")
  int? get clickCount => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  int? get islist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListElementCopyWith<ListElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListElementCopyWith<$Res> {
  factory $ListElementCopyWith(
          ListElement value, $Res Function(ListElement) then) =
      _$ListElementCopyWithImpl<$Res, ListElement>;
  @useResult
  $Res call(
      {int? id,
      int? parent,
      String? name,
      int? sort,
      @JsonKey(name: "thumb_url") String? thumbUrl,
      String? model,
      String? color,
      String? ctitle,
      String? links,
      String? ckeywords,
      String? cdescription,
      String? ccontent,
      int? atindex,
      int? atfoot,
      int? ismenus,
      String? classname,
      @JsonKey(name: "click_count") int? clickCount,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      int? islist});
}

/// @nodoc
class _$ListElementCopyWithImpl<$Res, $Val extends ListElement>
    implements $ListElementCopyWith<$Res> {
  _$ListElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parent = freezed,
    Object? name = freezed,
    Object? sort = freezed,
    Object? thumbUrl = freezed,
    Object? model = freezed,
    Object? color = freezed,
    Object? ctitle = freezed,
    Object? links = freezed,
    Object? ckeywords = freezed,
    Object? cdescription = freezed,
    Object? ccontent = freezed,
    Object? atindex = freezed,
    Object? atfoot = freezed,
    Object? ismenus = freezed,
    Object? classname = freezed,
    Object? clickCount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? islist = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbUrl: freezed == thumbUrl
          ? _value.thumbUrl
          : thumbUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      ctitle: freezed == ctitle
          ? _value.ctitle
          : ctitle // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as String?,
      ckeywords: freezed == ckeywords
          ? _value.ckeywords
          : ckeywords // ignore: cast_nullable_to_non_nullable
              as String?,
      cdescription: freezed == cdescription
          ? _value.cdescription
          : cdescription // ignore: cast_nullable_to_non_nullable
              as String?,
      ccontent: freezed == ccontent
          ? _value.ccontent
          : ccontent // ignore: cast_nullable_to_non_nullable
              as String?,
      atindex: freezed == atindex
          ? _value.atindex
          : atindex // ignore: cast_nullable_to_non_nullable
              as int?,
      atfoot: freezed == atfoot
          ? _value.atfoot
          : atfoot // ignore: cast_nullable_to_non_nullable
              as int?,
      ismenus: freezed == ismenus
          ? _value.ismenus
          : ismenus // ignore: cast_nullable_to_non_nullable
              as int?,
      classname: freezed == classname
          ? _value.classname
          : classname // ignore: cast_nullable_to_non_nullable
              as String?,
      clickCount: freezed == clickCount
          ? _value.clickCount
          : clickCount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      islist: freezed == islist
          ? _value.islist
          : islist // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListElementImplCopyWith<$Res>
    implements $ListElementCopyWith<$Res> {
  factory _$$ListElementImplCopyWith(
          _$ListElementImpl value, $Res Function(_$ListElementImpl) then) =
      __$$ListElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? parent,
      String? name,
      int? sort,
      @JsonKey(name: "thumb_url") String? thumbUrl,
      String? model,
      String? color,
      String? ctitle,
      String? links,
      String? ckeywords,
      String? cdescription,
      String? ccontent,
      int? atindex,
      int? atfoot,
      int? ismenus,
      String? classname,
      @JsonKey(name: "click_count") int? clickCount,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      int? islist});
}

/// @nodoc
class __$$ListElementImplCopyWithImpl<$Res>
    extends _$ListElementCopyWithImpl<$Res, _$ListElementImpl>
    implements _$$ListElementImplCopyWith<$Res> {
  __$$ListElementImplCopyWithImpl(
      _$ListElementImpl _value, $Res Function(_$ListElementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parent = freezed,
    Object? name = freezed,
    Object? sort = freezed,
    Object? thumbUrl = freezed,
    Object? model = freezed,
    Object? color = freezed,
    Object? ctitle = freezed,
    Object? links = freezed,
    Object? ckeywords = freezed,
    Object? cdescription = freezed,
    Object? ccontent = freezed,
    Object? atindex = freezed,
    Object? atfoot = freezed,
    Object? ismenus = freezed,
    Object? classname = freezed,
    Object? clickCount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? islist = freezed,
  }) {
    return _then(_$ListElementImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbUrl: freezed == thumbUrl
          ? _value.thumbUrl
          : thumbUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      ctitle: freezed == ctitle
          ? _value.ctitle
          : ctitle // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as String?,
      ckeywords: freezed == ckeywords
          ? _value.ckeywords
          : ckeywords // ignore: cast_nullable_to_non_nullable
              as String?,
      cdescription: freezed == cdescription
          ? _value.cdescription
          : cdescription // ignore: cast_nullable_to_non_nullable
              as String?,
      ccontent: freezed == ccontent
          ? _value.ccontent
          : ccontent // ignore: cast_nullable_to_non_nullable
              as String?,
      atindex: freezed == atindex
          ? _value.atindex
          : atindex // ignore: cast_nullable_to_non_nullable
              as int?,
      atfoot: freezed == atfoot
          ? _value.atfoot
          : atfoot // ignore: cast_nullable_to_non_nullable
              as int?,
      ismenus: freezed == ismenus
          ? _value.ismenus
          : ismenus // ignore: cast_nullable_to_non_nullable
              as int?,
      classname: freezed == classname
          ? _value.classname
          : classname // ignore: cast_nullable_to_non_nullable
              as String?,
      clickCount: freezed == clickCount
          ? _value.clickCount
          : clickCount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      islist: freezed == islist
          ? _value.islist
          : islist // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListElementImpl implements _ListElement {
  const _$ListElementImpl(
      {this.id,
      this.parent,
      this.name,
      this.sort,
      @JsonKey(name: "thumb_url") this.thumbUrl,
      this.model,
      this.color,
      this.ctitle,
      this.links,
      this.ckeywords,
      this.cdescription,
      this.ccontent,
      this.atindex,
      this.atfoot,
      this.ismenus,
      this.classname,
      @JsonKey(name: "click_count") this.clickCount,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      this.islist});

  factory _$ListElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListElementImplFromJson(json);

  @override
  final int? id;
  @override
  final int? parent;
  @override
  final String? name;
  @override
  final int? sort;
  @override
  @JsonKey(name: "thumb_url")
  final String? thumbUrl;
  @override
  final String? model;
  @override
  final String? color;
  @override
  final String? ctitle;
  @override
  final String? links;
  @override
  final String? ckeywords;
  @override
  final String? cdescription;
  @override
  final String? ccontent;
  @override
  final int? atindex;
  @override
  final int? atfoot;
  @override
  final int? ismenus;
  @override
  final String? classname;
  @override
  @JsonKey(name: "click_count")
  final int? clickCount;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  final int? islist;

  @override
  String toString() {
    return 'ListElement(id: $id, parent: $parent, name: $name, sort: $sort, thumbUrl: $thumbUrl, model: $model, color: $color, ctitle: $ctitle, links: $links, ckeywords: $ckeywords, cdescription: $cdescription, ccontent: $ccontent, atindex: $atindex, atfoot: $atfoot, ismenus: $ismenus, classname: $classname, clickCount: $clickCount, createdAt: $createdAt, updatedAt: $updatedAt, islist: $islist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListElementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.thumbUrl, thumbUrl) ||
                other.thumbUrl == thumbUrl) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.ctitle, ctitle) || other.ctitle == ctitle) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.ckeywords, ckeywords) ||
                other.ckeywords == ckeywords) &&
            (identical(other.cdescription, cdescription) ||
                other.cdescription == cdescription) &&
            (identical(other.ccontent, ccontent) ||
                other.ccontent == ccontent) &&
            (identical(other.atindex, atindex) || other.atindex == atindex) &&
            (identical(other.atfoot, atfoot) || other.atfoot == atfoot) &&
            (identical(other.ismenus, ismenus) || other.ismenus == ismenus) &&
            (identical(other.classname, classname) ||
                other.classname == classname) &&
            (identical(other.clickCount, clickCount) ||
                other.clickCount == clickCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.islist, islist) || other.islist == islist));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        parent,
        name,
        sort,
        thumbUrl,
        model,
        color,
        ctitle,
        links,
        ckeywords,
        cdescription,
        ccontent,
        atindex,
        atfoot,
        ismenus,
        classname,
        clickCount,
        createdAt,
        updatedAt,
        islist
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListElementImplCopyWith<_$ListElementImpl> get copyWith =>
      __$$ListElementImplCopyWithImpl<_$ListElementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListElementImplToJson(
      this,
    );
  }
}

abstract class _ListElement implements ListElement {
  const factory _ListElement(
      {final int? id,
      final int? parent,
      final String? name,
      final int? sort,
      @JsonKey(name: "thumb_url") final String? thumbUrl,
      final String? model,
      final String? color,
      final String? ctitle,
      final String? links,
      final String? ckeywords,
      final String? cdescription,
      final String? ccontent,
      final int? atindex,
      final int? atfoot,
      final int? ismenus,
      final String? classname,
      @JsonKey(name: "click_count") final int? clickCount,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      final int? islist}) = _$ListElementImpl;

  factory _ListElement.fromJson(Map<String, dynamic> json) =
      _$ListElementImpl.fromJson;

  @override
  int? get id;
  @override
  int? get parent;
  @override
  String? get name;
  @override
  int? get sort;
  @override
  @JsonKey(name: "thumb_url")
  String? get thumbUrl;
  @override
  String? get model;
  @override
  String? get color;
  @override
  String? get ctitle;
  @override
  String? get links;
  @override
  String? get ckeywords;
  @override
  String? get cdescription;
  @override
  String? get ccontent;
  @override
  int? get atindex;
  @override
  int? get atfoot;
  @override
  int? get ismenus;
  @override
  String? get classname;
  @override
  @JsonKey(name: "click_count")
  int? get clickCount;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  int? get islist;
  @override
  @JsonKey(ignore: true)
  _$$ListElementImplCopyWith<_$ListElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
