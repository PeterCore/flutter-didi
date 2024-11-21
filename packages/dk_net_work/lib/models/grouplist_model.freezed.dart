// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grouplist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GrouplistModel _$GrouplistModelFromJson(Map<String, dynamic> json) {
  return _GrouplistModel.fromJson(json);
}

/// @nodoc
mixin _$GrouplistModel {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  ListClass? get list => throw _privateConstructorUsedError;
  @JsonKey(name: "grouprules")
  String? get grouprules => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GrouplistModelCopyWith<GrouplistModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrouplistModelCopyWith<$Res> {
  factory $GrouplistModelCopyWith(
          GrouplistModel value, $Res Function(GrouplistModel) then) =
      _$GrouplistModelCopyWithImpl<$Res, GrouplistModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "list") ListClass? list,
      @JsonKey(name: "grouprules") String? grouprules});

  $ListClassCopyWith<$Res>? get list;
}

/// @nodoc
class _$GrouplistModelCopyWithImpl<$Res, $Val extends GrouplistModel>
    implements $GrouplistModelCopyWith<$Res> {
  _$GrouplistModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
    Object? grouprules = freezed,
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
      grouprules: freezed == grouprules
          ? _value.grouprules
          : grouprules // ignore: cast_nullable_to_non_nullable
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
abstract class _$$GrouplistModelImplCopyWith<$Res>
    implements $GrouplistModelCopyWith<$Res> {
  factory _$$GrouplistModelImplCopyWith(_$GrouplistModelImpl value,
          $Res Function(_$GrouplistModelImpl) then) =
      __$$GrouplistModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "list") ListClass? list,
      @JsonKey(name: "grouprules") String? grouprules});

  @override
  $ListClassCopyWith<$Res>? get list;
}

/// @nodoc
class __$$GrouplistModelImplCopyWithImpl<$Res>
    extends _$GrouplistModelCopyWithImpl<$Res, _$GrouplistModelImpl>
    implements _$$GrouplistModelImplCopyWith<$Res> {
  __$$GrouplistModelImplCopyWithImpl(
      _$GrouplistModelImpl _value, $Res Function(_$GrouplistModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
    Object? grouprules = freezed,
  }) {
    return _then(_$GrouplistModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ListClass?,
      grouprules: freezed == grouprules
          ? _value.grouprules
          : grouprules // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GrouplistModelImpl implements _GrouplistModel {
  const _$GrouplistModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "list") this.list,
      @JsonKey(name: "grouprules") this.grouprules});

  factory _$GrouplistModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GrouplistModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "list")
  final ListClass? list;
  @override
  @JsonKey(name: "grouprules")
  final String? grouprules;

  @override
  String toString() {
    return 'GrouplistModel(status: $status, list: $list, grouprules: $grouprules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GrouplistModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.grouprules, grouprules) ||
                other.grouprules == grouprules));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, list, grouprules);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GrouplistModelImplCopyWith<_$GrouplistModelImpl> get copyWith =>
      __$$GrouplistModelImplCopyWithImpl<_$GrouplistModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GrouplistModelImplToJson(
      this,
    );
  }
}

abstract class _GrouplistModel implements GrouplistModel {
  const factory _GrouplistModel(
          {@JsonKey(name: "status") final int? status,
          @JsonKey(name: "list") final ListClass? list,
          @JsonKey(name: "grouprules") final String? grouprules}) =
      _$GrouplistModelImpl;

  factory _GrouplistModel.fromJson(Map<String, dynamic> json) =
      _$GrouplistModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "list")
  ListClass? get list;
  @override
  @JsonKey(name: "grouprules")
  String? get grouprules;
  @override
  @JsonKey(ignore: true)
  _$$GrouplistModelImplCopyWith<_$GrouplistModelImpl> get copyWith =>
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
  @JsonKey(name: "userid")
  int? get userid => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "productid")
  int? get productid => throw _privateConstructorUsedError;
  @JsonKey(name: "money")
  int? get money => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "group_buy_code")
  String? get groupBuyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "participant_limit")
  int? get participantLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "bugnumber")
  int? get bugnumber => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "selfmoney")
  int? get selfmoney => throw _privateConstructorUsedError;
  @JsonKey(name: "relaname")
  String? get relaname => throw _privateConstructorUsedError;
  @JsonKey(name: "tele")
  String? get tele => throw _privateConstructorUsedError;
  @JsonKey(name: "orderid")
  String? get orderid => throw _privateConstructorUsedError;
  @JsonKey(name: "allmoney")
  int? get allmoney => throw _privateConstructorUsedError;
  @JsonKey(name: "renshu")
  int? get renshu => throw _privateConstructorUsedError;
  @JsonKey(name: "renshu2")
  int? get renshu2 => throw _privateConstructorUsedError;
  @JsonKey(name: "joinlist")
  List<Joinlist>? get joinlist => throw _privateConstructorUsedError;

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
      @JsonKey(name: "userid") int? userid,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "productid") int? productid,
      @JsonKey(name: "money") int? money,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "group_buy_code") String? groupBuyCode,
      @JsonKey(name: "participant_limit") int? participantLimit,
      @JsonKey(name: "bugnumber") int? bugnumber,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "selfmoney") int? selfmoney,
      @JsonKey(name: "relaname") String? relaname,
      @JsonKey(name: "tele") String? tele,
      @JsonKey(name: "orderid") String? orderid,
      @JsonKey(name: "allmoney") int? allmoney,
      @JsonKey(name: "renshu") int? renshu,
      @JsonKey(name: "renshu2") int? renshu2,
      @JsonKey(name: "joinlist") List<Joinlist>? joinlist});
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
    Object? userid = freezed,
    Object? username = freezed,
    Object? productid = freezed,
    Object? money = freezed,
    Object? status = freezed,
    Object? groupBuyCode = freezed,
    Object? participantLimit = freezed,
    Object? bugnumber = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? title = freezed,
    Object? selfmoney = freezed,
    Object? relaname = freezed,
    Object? tele = freezed,
    Object? orderid = freezed,
    Object? allmoney = freezed,
    Object? renshu = freezed,
    Object? renshu2 = freezed,
    Object? joinlist = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      productid: freezed == productid
          ? _value.productid
          : productid // ignore: cast_nullable_to_non_nullable
              as int?,
      money: freezed == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      groupBuyCode: freezed == groupBuyCode
          ? _value.groupBuyCode
          : groupBuyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      participantLimit: freezed == participantLimit
          ? _value.participantLimit
          : participantLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      bugnumber: freezed == bugnumber
          ? _value.bugnumber
          : bugnumber // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      selfmoney: freezed == selfmoney
          ? _value.selfmoney
          : selfmoney // ignore: cast_nullable_to_non_nullable
              as int?,
      relaname: freezed == relaname
          ? _value.relaname
          : relaname // ignore: cast_nullable_to_non_nullable
              as String?,
      tele: freezed == tele
          ? _value.tele
          : tele // ignore: cast_nullable_to_non_nullable
              as String?,
      orderid: freezed == orderid
          ? _value.orderid
          : orderid // ignore: cast_nullable_to_non_nullable
              as String?,
      allmoney: freezed == allmoney
          ? _value.allmoney
          : allmoney // ignore: cast_nullable_to_non_nullable
              as int?,
      renshu: freezed == renshu
          ? _value.renshu
          : renshu // ignore: cast_nullable_to_non_nullable
              as int?,
      renshu2: freezed == renshu2
          ? _value.renshu2
          : renshu2 // ignore: cast_nullable_to_non_nullable
              as int?,
      joinlist: freezed == joinlist
          ? _value.joinlist
          : joinlist // ignore: cast_nullable_to_non_nullable
              as List<Joinlist>?,
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
      @JsonKey(name: "userid") int? userid,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "productid") int? productid,
      @JsonKey(name: "money") int? money,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "group_buy_code") String? groupBuyCode,
      @JsonKey(name: "participant_limit") int? participantLimit,
      @JsonKey(name: "bugnumber") int? bugnumber,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "selfmoney") int? selfmoney,
      @JsonKey(name: "relaname") String? relaname,
      @JsonKey(name: "tele") String? tele,
      @JsonKey(name: "orderid") String? orderid,
      @JsonKey(name: "allmoney") int? allmoney,
      @JsonKey(name: "renshu") int? renshu,
      @JsonKey(name: "renshu2") int? renshu2,
      @JsonKey(name: "joinlist") List<Joinlist>? joinlist});
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
    Object? userid = freezed,
    Object? username = freezed,
    Object? productid = freezed,
    Object? money = freezed,
    Object? status = freezed,
    Object? groupBuyCode = freezed,
    Object? participantLimit = freezed,
    Object? bugnumber = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? title = freezed,
    Object? selfmoney = freezed,
    Object? relaname = freezed,
    Object? tele = freezed,
    Object? orderid = freezed,
    Object? allmoney = freezed,
    Object? renshu = freezed,
    Object? renshu2 = freezed,
    Object? joinlist = freezed,
  }) {
    return _then(_$DatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      productid: freezed == productid
          ? _value.productid
          : productid // ignore: cast_nullable_to_non_nullable
              as int?,
      money: freezed == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      groupBuyCode: freezed == groupBuyCode
          ? _value.groupBuyCode
          : groupBuyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      participantLimit: freezed == participantLimit
          ? _value.participantLimit
          : participantLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      bugnumber: freezed == bugnumber
          ? _value.bugnumber
          : bugnumber // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      selfmoney: freezed == selfmoney
          ? _value.selfmoney
          : selfmoney // ignore: cast_nullable_to_non_nullable
              as int?,
      relaname: freezed == relaname
          ? _value.relaname
          : relaname // ignore: cast_nullable_to_non_nullable
              as String?,
      tele: freezed == tele
          ? _value.tele
          : tele // ignore: cast_nullable_to_non_nullable
              as String?,
      orderid: freezed == orderid
          ? _value.orderid
          : orderid // ignore: cast_nullable_to_non_nullable
              as String?,
      allmoney: freezed == allmoney
          ? _value.allmoney
          : allmoney // ignore: cast_nullable_to_non_nullable
              as int?,
      renshu: freezed == renshu
          ? _value.renshu
          : renshu // ignore: cast_nullable_to_non_nullable
              as int?,
      renshu2: freezed == renshu2
          ? _value.renshu2
          : renshu2 // ignore: cast_nullable_to_non_nullable
              as int?,
      joinlist: freezed == joinlist
          ? _value._joinlist
          : joinlist // ignore: cast_nullable_to_non_nullable
              as List<Joinlist>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "userid") this.userid,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "productid") this.productid,
      @JsonKey(name: "money") this.money,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "group_buy_code") this.groupBuyCode,
      @JsonKey(name: "participant_limit") this.participantLimit,
      @JsonKey(name: "bugnumber") this.bugnumber,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "selfmoney") this.selfmoney,
      @JsonKey(name: "relaname") this.relaname,
      @JsonKey(name: "tele") this.tele,
      @JsonKey(name: "orderid") this.orderid,
      @JsonKey(name: "allmoney") this.allmoney,
      @JsonKey(name: "renshu") this.renshu,
      @JsonKey(name: "renshu2") this.renshu2,
      @JsonKey(name: "joinlist") final List<Joinlist>? joinlist})
      : _joinlist = joinlist;

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "userid")
  final int? userid;
  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "productid")
  final int? productid;
  @override
  @JsonKey(name: "money")
  final int? money;
  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "group_buy_code")
  final String? groupBuyCode;
  @override
  @JsonKey(name: "participant_limit")
  final int? participantLimit;
  @override
  @JsonKey(name: "bugnumber")
  final int? bugnumber;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "selfmoney")
  final int? selfmoney;
  @override
  @JsonKey(name: "relaname")
  final String? relaname;
  @override
  @JsonKey(name: "tele")
  final String? tele;
  @override
  @JsonKey(name: "orderid")
  final String? orderid;
  @override
  @JsonKey(name: "allmoney")
  final int? allmoney;
  @override
  @JsonKey(name: "renshu")
  final int? renshu;
  @override
  @JsonKey(name: "renshu2")
  final int? renshu2;
  final List<Joinlist>? _joinlist;
  @override
  @JsonKey(name: "joinlist")
  List<Joinlist>? get joinlist {
    final value = _joinlist;
    if (value == null) return null;
    if (_joinlist is EqualUnmodifiableListView) return _joinlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Datum(id: $id, userid: $userid, username: $username, productid: $productid, money: $money, status: $status, groupBuyCode: $groupBuyCode, participantLimit: $participantLimit, bugnumber: $bugnumber, createdAt: $createdAt, updatedAt: $updatedAt, title: $title, selfmoney: $selfmoney, relaname: $relaname, tele: $tele, orderid: $orderid, allmoney: $allmoney, renshu: $renshu, renshu2: $renshu2, joinlist: $joinlist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.productid, productid) ||
                other.productid == productid) &&
            (identical(other.money, money) || other.money == money) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.groupBuyCode, groupBuyCode) ||
                other.groupBuyCode == groupBuyCode) &&
            (identical(other.participantLimit, participantLimit) ||
                other.participantLimit == participantLimit) &&
            (identical(other.bugnumber, bugnumber) ||
                other.bugnumber == bugnumber) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.selfmoney, selfmoney) ||
                other.selfmoney == selfmoney) &&
            (identical(other.relaname, relaname) ||
                other.relaname == relaname) &&
            (identical(other.tele, tele) || other.tele == tele) &&
            (identical(other.orderid, orderid) || other.orderid == orderid) &&
            (identical(other.allmoney, allmoney) ||
                other.allmoney == allmoney) &&
            (identical(other.renshu, renshu) || other.renshu == renshu) &&
            (identical(other.renshu2, renshu2) || other.renshu2 == renshu2) &&
            const DeepCollectionEquality().equals(other._joinlist, _joinlist));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userid,
        username,
        productid,
        money,
        status,
        groupBuyCode,
        participantLimit,
        bugnumber,
        createdAt,
        updatedAt,
        title,
        selfmoney,
        relaname,
        tele,
        orderid,
        allmoney,
        renshu,
        renshu2,
        const DeepCollectionEquality().hash(_joinlist)
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
      @JsonKey(name: "userid") final int? userid,
      @JsonKey(name: "username") final String? username,
      @JsonKey(name: "productid") final int? productid,
      @JsonKey(name: "money") final int? money,
      @JsonKey(name: "status") final int? status,
      @JsonKey(name: "group_buy_code") final String? groupBuyCode,
      @JsonKey(name: "participant_limit") final int? participantLimit,
      @JsonKey(name: "bugnumber") final int? bugnumber,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "updated_at") final DateTime? updatedAt,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "selfmoney") final int? selfmoney,
      @JsonKey(name: "relaname") final String? relaname,
      @JsonKey(name: "tele") final String? tele,
      @JsonKey(name: "orderid") final String? orderid,
      @JsonKey(name: "allmoney") final int? allmoney,
      @JsonKey(name: "renshu") final int? renshu,
      @JsonKey(name: "renshu2") final int? renshu2,
      @JsonKey(name: "joinlist") final List<Joinlist>? joinlist}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "userid")
  int? get userid;
  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "productid")
  int? get productid;
  @override
  @JsonKey(name: "money")
  int? get money;
  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "group_buy_code")
  String? get groupBuyCode;
  @override
  @JsonKey(name: "participant_limit")
  int? get participantLimit;
  @override
  @JsonKey(name: "bugnumber")
  int? get bugnumber;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "selfmoney")
  int? get selfmoney;
  @override
  @JsonKey(name: "relaname")
  String? get relaname;
  @override
  @JsonKey(name: "tele")
  String? get tele;
  @override
  @JsonKey(name: "orderid")
  String? get orderid;
  @override
  @JsonKey(name: "allmoney")
  int? get allmoney;
  @override
  @JsonKey(name: "renshu")
  int? get renshu;
  @override
  @JsonKey(name: "renshu2")
  int? get renshu2;
  @override
  @JsonKey(name: "joinlist")
  List<Joinlist>? get joinlist;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Joinlist _$JoinlistFromJson(Map<String, dynamic> json) {
  return _Joinlist.fromJson(json);
}

/// @nodoc
mixin _$Joinlist {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userid")
  int? get userid => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "group_buy_id")
  int? get groupBuyId => throw _privateConstructorUsedError;
  @JsonKey(name: "money")
  int? get money => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "bugnumber")
  int? get bugnumber => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "relaname")
  String? get relaname => throw _privateConstructorUsedError;
  @JsonKey(name: "tele")
  String? get tele => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JoinlistCopyWith<Joinlist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinlistCopyWith<$Res> {
  factory $JoinlistCopyWith(Joinlist value, $Res Function(Joinlist) then) =
      _$JoinlistCopyWithImpl<$Res, Joinlist>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "userid") int? userid,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "group_buy_id") int? groupBuyId,
      @JsonKey(name: "money") int? money,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "bugnumber") int? bugnumber,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "relaname") String? relaname,
      @JsonKey(name: "tele") String? tele});
}

/// @nodoc
class _$JoinlistCopyWithImpl<$Res, $Val extends Joinlist>
    implements $JoinlistCopyWith<$Res> {
  _$JoinlistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userid = freezed,
    Object? username = freezed,
    Object? groupBuyId = freezed,
    Object? money = freezed,
    Object? status = freezed,
    Object? bugnumber = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? relaname = freezed,
    Object? tele = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      groupBuyId: freezed == groupBuyId
          ? _value.groupBuyId
          : groupBuyId // ignore: cast_nullable_to_non_nullable
              as int?,
      money: freezed == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      bugnumber: freezed == bugnumber
          ? _value.bugnumber
          : bugnumber // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      relaname: freezed == relaname
          ? _value.relaname
          : relaname // ignore: cast_nullable_to_non_nullable
              as String?,
      tele: freezed == tele
          ? _value.tele
          : tele // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JoinlistImplCopyWith<$Res>
    implements $JoinlistCopyWith<$Res> {
  factory _$$JoinlistImplCopyWith(
          _$JoinlistImpl value, $Res Function(_$JoinlistImpl) then) =
      __$$JoinlistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "userid") int? userid,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "group_buy_id") int? groupBuyId,
      @JsonKey(name: "money") int? money,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "bugnumber") int? bugnumber,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "relaname") String? relaname,
      @JsonKey(name: "tele") String? tele});
}

/// @nodoc
class __$$JoinlistImplCopyWithImpl<$Res>
    extends _$JoinlistCopyWithImpl<$Res, _$JoinlistImpl>
    implements _$$JoinlistImplCopyWith<$Res> {
  __$$JoinlistImplCopyWithImpl(
      _$JoinlistImpl _value, $Res Function(_$JoinlistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userid = freezed,
    Object? username = freezed,
    Object? groupBuyId = freezed,
    Object? money = freezed,
    Object? status = freezed,
    Object? bugnumber = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? relaname = freezed,
    Object? tele = freezed,
  }) {
    return _then(_$JoinlistImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      groupBuyId: freezed == groupBuyId
          ? _value.groupBuyId
          : groupBuyId // ignore: cast_nullable_to_non_nullable
              as int?,
      money: freezed == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      bugnumber: freezed == bugnumber
          ? _value.bugnumber
          : bugnumber // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      relaname: freezed == relaname
          ? _value.relaname
          : relaname // ignore: cast_nullable_to_non_nullable
              as String?,
      tele: freezed == tele
          ? _value.tele
          : tele // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JoinlistImpl implements _Joinlist {
  const _$JoinlistImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "userid") this.userid,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "group_buy_id") this.groupBuyId,
      @JsonKey(name: "money") this.money,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "bugnumber") this.bugnumber,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "relaname") this.relaname,
      @JsonKey(name: "tele") this.tele});

  factory _$JoinlistImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinlistImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "userid")
  final int? userid;
  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "group_buy_id")
  final int? groupBuyId;
  @override
  @JsonKey(name: "money")
  final int? money;
  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "bugnumber")
  final int? bugnumber;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "relaname")
  final String? relaname;
  @override
  @JsonKey(name: "tele")
  final String? tele;

  @override
  String toString() {
    return 'Joinlist(id: $id, userid: $userid, username: $username, groupBuyId: $groupBuyId, money: $money, status: $status, bugnumber: $bugnumber, createdAt: $createdAt, updatedAt: $updatedAt, relaname: $relaname, tele: $tele)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinlistImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.groupBuyId, groupBuyId) ||
                other.groupBuyId == groupBuyId) &&
            (identical(other.money, money) || other.money == money) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.bugnumber, bugnumber) ||
                other.bugnumber == bugnumber) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.relaname, relaname) ||
                other.relaname == relaname) &&
            (identical(other.tele, tele) || other.tele == tele));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userid, username, groupBuyId,
      money, status, bugnumber, createdAt, updatedAt, relaname, tele);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinlistImplCopyWith<_$JoinlistImpl> get copyWith =>
      __$$JoinlistImplCopyWithImpl<_$JoinlistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinlistImplToJson(
      this,
    );
  }
}

abstract class _Joinlist implements Joinlist {
  const factory _Joinlist(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "userid") final int? userid,
      @JsonKey(name: "username") final String? username,
      @JsonKey(name: "group_buy_id") final int? groupBuyId,
      @JsonKey(name: "money") final int? money,
      @JsonKey(name: "status") final int? status,
      @JsonKey(name: "bugnumber") final int? bugnumber,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "updated_at") final DateTime? updatedAt,
      @JsonKey(name: "relaname") final String? relaname,
      @JsonKey(name: "tele") final String? tele}) = _$JoinlistImpl;

  factory _Joinlist.fromJson(Map<String, dynamic> json) =
      _$JoinlistImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "userid")
  int? get userid;
  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "group_buy_id")
  int? get groupBuyId;
  @override
  @JsonKey(name: "money")
  int? get money;
  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "bugnumber")
  int? get bugnumber;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "relaname")
  String? get relaname;
  @override
  @JsonKey(name: "tele")
  String? get tele;
  @override
  @JsonKey(ignore: true)
  _$$JoinlistImplCopyWith<_$JoinlistImpl> get copyWith =>
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
