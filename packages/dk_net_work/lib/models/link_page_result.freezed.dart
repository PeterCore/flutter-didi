// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'link_page_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LinkPageResult _$LinkPageResultFromJson(Map<String, dynamic> json) {
  return _LinkPageResult.fromJson(json);
}

/// @nodoc
mixin _$LinkPageResult {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  String? get msg => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  ProfileData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinkPageResultCopyWith<LinkPageResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkPageResultCopyWith<$Res> {
  factory $LinkPageResultCopyWith(
          LinkPageResult value, $Res Function(LinkPageResult) then) =
      _$LinkPageResultCopyWithImpl<$Res, LinkPageResult>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "data") ProfileData? data});

  $ProfileDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LinkPageResultCopyWithImpl<$Res, $Val extends LinkPageResult>
    implements $LinkPageResultCopyWith<$Res> {
  _$LinkPageResultCopyWithImpl(this._value, this._then);

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
              as ProfileData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProfileDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LinkPageResultImplCopyWith<$Res>
    implements $LinkPageResultCopyWith<$Res> {
  factory _$$LinkPageResultImplCopyWith(_$LinkPageResultImpl value,
          $Res Function(_$LinkPageResultImpl) then) =
      __$$LinkPageResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "data") ProfileData? data});

  @override
  $ProfileDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$LinkPageResultImplCopyWithImpl<$Res>
    extends _$LinkPageResultCopyWithImpl<$Res, _$LinkPageResultImpl>
    implements _$$LinkPageResultImplCopyWith<$Res> {
  __$$LinkPageResultImplCopyWithImpl(
      _$LinkPageResultImpl _value, $Res Function(_$LinkPageResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_$LinkPageResultImpl(
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
              as ProfileData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkPageResultImpl implements _LinkPageResult {
  const _$LinkPageResultImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "msg") this.msg,
      @JsonKey(name: "data") this.data});

  factory _$LinkPageResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkPageResultImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "msg")
  final String? msg;
  @override
  @JsonKey(name: "data")
  final ProfileData? data;

  @override
  String toString() {
    return 'LinkPageResult(status: $status, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkPageResultImpl &&
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
  _$$LinkPageResultImplCopyWith<_$LinkPageResultImpl> get copyWith =>
      __$$LinkPageResultImplCopyWithImpl<_$LinkPageResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkPageResultImplToJson(
      this,
    );
  }
}

abstract class _LinkPageResult implements LinkPageResult {
  const factory _LinkPageResult(
      {@JsonKey(name: "status") final int? status,
      @JsonKey(name: "msg") final String? msg,
      @JsonKey(name: "data") final ProfileData? data}) = _$LinkPageResultImpl;

  factory _LinkPageResult.fromJson(Map<String, dynamic> json) =
      _$LinkPageResultImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "msg")
  String? get msg;
  @override
  @JsonKey(name: "data")
  ProfileData? get data;
  @override
  @JsonKey(ignore: true)
  _$$LinkPageResultImplCopyWith<_$LinkPageResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileData _$ProfileDataFromJson(Map<String, dynamic> json) {
  return _ProfileData.fromJson(json);
}

/// @nodoc
mixin _$ProfileData {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "parent")
  int? get parent => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "sort")
  int? get sort => throw _privateConstructorUsedError;
  @JsonKey(name: "thumb_url")
  String? get thumbUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "model")
  String? get model => throw _privateConstructorUsedError;
  @JsonKey(name: "color")
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: "ctitle")
  String? get ctitle => throw _privateConstructorUsedError;
  @JsonKey(name: "links")
  String? get links => throw _privateConstructorUsedError;
  @JsonKey(name: "ckeywords")
  String? get ckeywords => throw _privateConstructorUsedError;
  @JsonKey(name: "cdescription")
  String? get cdescription => throw _privateConstructorUsedError;
  @JsonKey(name: "ccontent")
  String? get ccontent => throw _privateConstructorUsedError;
  @JsonKey(name: "atindex")
  int? get atindex => throw _privateConstructorUsedError;
  @JsonKey(name: "atfoot")
  int? get atfoot => throw _privateConstructorUsedError;
  @JsonKey(name: "ismenus")
  int? get ismenus => throw _privateConstructorUsedError;
  @JsonKey(name: "classname")
  dynamic get classname => throw _privateConstructorUsedError;
  @JsonKey(name: "click_count")
  int? get clickCount => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "islist")
  int? get islist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileDataCopyWith<ProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDataCopyWith<$Res> {
  factory $ProfileDataCopyWith(
          ProfileData value, $Res Function(ProfileData) then) =
      _$ProfileDataCopyWithImpl<$Res, ProfileData>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "parent") int? parent,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "sort") int? sort,
      @JsonKey(name: "thumb_url") String? thumbUrl,
      @JsonKey(name: "model") String? model,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "ctitle") String? ctitle,
      @JsonKey(name: "links") String? links,
      @JsonKey(name: "ckeywords") String? ckeywords,
      @JsonKey(name: "cdescription") String? cdescription,
      @JsonKey(name: "ccontent") String? ccontent,
      @JsonKey(name: "atindex") int? atindex,
      @JsonKey(name: "atfoot") int? atfoot,
      @JsonKey(name: "ismenus") int? ismenus,
      @JsonKey(name: "classname") dynamic classname,
      @JsonKey(name: "click_count") int? clickCount,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "islist") int? islist});
}

/// @nodoc
class _$ProfileDataCopyWithImpl<$Res, $Val extends ProfileData>
    implements $ProfileDataCopyWith<$Res> {
  _$ProfileDataCopyWithImpl(this._value, this._then);

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
              as dynamic,
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
abstract class _$$ProfileDataImplCopyWith<$Res>
    implements $ProfileDataCopyWith<$Res> {
  factory _$$ProfileDataImplCopyWith(
          _$ProfileDataImpl value, $Res Function(_$ProfileDataImpl) then) =
      __$$ProfileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "parent") int? parent,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "sort") int? sort,
      @JsonKey(name: "thumb_url") String? thumbUrl,
      @JsonKey(name: "model") String? model,
      @JsonKey(name: "color") String? color,
      @JsonKey(name: "ctitle") String? ctitle,
      @JsonKey(name: "links") String? links,
      @JsonKey(name: "ckeywords") String? ckeywords,
      @JsonKey(name: "cdescription") String? cdescription,
      @JsonKey(name: "ccontent") String? ccontent,
      @JsonKey(name: "atindex") int? atindex,
      @JsonKey(name: "atfoot") int? atfoot,
      @JsonKey(name: "ismenus") int? ismenus,
      @JsonKey(name: "classname") dynamic classname,
      @JsonKey(name: "click_count") int? clickCount,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "islist") int? islist});
}

/// @nodoc
class __$$ProfileDataImplCopyWithImpl<$Res>
    extends _$ProfileDataCopyWithImpl<$Res, _$ProfileDataImpl>
    implements _$$ProfileDataImplCopyWith<$Res> {
  __$$ProfileDataImplCopyWithImpl(
      _$ProfileDataImpl _value, $Res Function(_$ProfileDataImpl) _then)
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
    return _then(_$ProfileDataImpl(
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
              as dynamic,
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
class _$ProfileDataImpl implements _ProfileData {
  const _$ProfileDataImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "parent") this.parent,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "sort") this.sort,
      @JsonKey(name: "thumb_url") this.thumbUrl,
      @JsonKey(name: "model") this.model,
      @JsonKey(name: "color") this.color,
      @JsonKey(name: "ctitle") this.ctitle,
      @JsonKey(name: "links") this.links,
      @JsonKey(name: "ckeywords") this.ckeywords,
      @JsonKey(name: "cdescription") this.cdescription,
      @JsonKey(name: "ccontent") this.ccontent,
      @JsonKey(name: "atindex") this.atindex,
      @JsonKey(name: "atfoot") this.atfoot,
      @JsonKey(name: "ismenus") this.ismenus,
      @JsonKey(name: "classname") this.classname,
      @JsonKey(name: "click_count") this.clickCount,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "islist") this.islist});

  factory _$ProfileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileDataImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "parent")
  final int? parent;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "sort")
  final int? sort;
  @override
  @JsonKey(name: "thumb_url")
  final String? thumbUrl;
  @override
  @JsonKey(name: "model")
  final String? model;
  @override
  @JsonKey(name: "color")
  final String? color;
  @override
  @JsonKey(name: "ctitle")
  final String? ctitle;
  @override
  @JsonKey(name: "links")
  final String? links;
  @override
  @JsonKey(name: "ckeywords")
  final String? ckeywords;
  @override
  @JsonKey(name: "cdescription")
  final String? cdescription;
  @override
  @JsonKey(name: "ccontent")
  final String? ccontent;
  @override
  @JsonKey(name: "atindex")
  final int? atindex;
  @override
  @JsonKey(name: "atfoot")
  final int? atfoot;
  @override
  @JsonKey(name: "ismenus")
  final int? ismenus;
  @override
  @JsonKey(name: "classname")
  final dynamic classname;
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
  @JsonKey(name: "islist")
  final int? islist;

  @override
  String toString() {
    return 'ProfileData(id: $id, parent: $parent, name: $name, sort: $sort, thumbUrl: $thumbUrl, model: $model, color: $color, ctitle: $ctitle, links: $links, ckeywords: $ckeywords, cdescription: $cdescription, ccontent: $ccontent, atindex: $atindex, atfoot: $atfoot, ismenus: $ismenus, classname: $classname, clickCount: $clickCount, createdAt: $createdAt, updatedAt: $updatedAt, islist: $islist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDataImpl &&
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
            const DeepCollectionEquality().equals(other.classname, classname) &&
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
        const DeepCollectionEquality().hash(classname),
        clickCount,
        createdAt,
        updatedAt,
        islist
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDataImplCopyWith<_$ProfileDataImpl> get copyWith =>
      __$$ProfileDataImplCopyWithImpl<_$ProfileDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileDataImplToJson(
      this,
    );
  }
}

abstract class _ProfileData implements ProfileData {
  const factory _ProfileData(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "parent") final int? parent,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "sort") final int? sort,
      @JsonKey(name: "thumb_url") final String? thumbUrl,
      @JsonKey(name: "model") final String? model,
      @JsonKey(name: "color") final String? color,
      @JsonKey(name: "ctitle") final String? ctitle,
      @JsonKey(name: "links") final String? links,
      @JsonKey(name: "ckeywords") final String? ckeywords,
      @JsonKey(name: "cdescription") final String? cdescription,
      @JsonKey(name: "ccontent") final String? ccontent,
      @JsonKey(name: "atindex") final int? atindex,
      @JsonKey(name: "atfoot") final int? atfoot,
      @JsonKey(name: "ismenus") final int? ismenus,
      @JsonKey(name: "classname") final dynamic classname,
      @JsonKey(name: "click_count") final int? clickCount,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "islist") final int? islist}) = _$ProfileDataImpl;

  factory _ProfileData.fromJson(Map<String, dynamic> json) =
      _$ProfileDataImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "parent")
  int? get parent;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "sort")
  int? get sort;
  @override
  @JsonKey(name: "thumb_url")
  String? get thumbUrl;
  @override
  @JsonKey(name: "model")
  String? get model;
  @override
  @JsonKey(name: "color")
  String? get color;
  @override
  @JsonKey(name: "ctitle")
  String? get ctitle;
  @override
  @JsonKey(name: "links")
  String? get links;
  @override
  @JsonKey(name: "ckeywords")
  String? get ckeywords;
  @override
  @JsonKey(name: "cdescription")
  String? get cdescription;
  @override
  @JsonKey(name: "ccontent")
  String? get ccontent;
  @override
  @JsonKey(name: "atindex")
  int? get atindex;
  @override
  @JsonKey(name: "atfoot")
  int? get atfoot;
  @override
  @JsonKey(name: "ismenus")
  int? get ismenus;
  @override
  @JsonKey(name: "classname")
  dynamic get classname;
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
  @JsonKey(name: "islist")
  int? get islist;
  @override
  @JsonKey(ignore: true)
  _$$ProfileDataImplCopyWith<_$ProfileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
