// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'welfare_coupon_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WelfareCouponResultModel _$WelfareCouponResultModelFromJson(
    Map<String, dynamic> json) {
  return _WelfareCouponResultModel.fromJson(json);
}

/// @nodoc
mixin _$WelfareCouponResultModel {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  WelfareList? get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WelfareCouponResultModelCopyWith<WelfareCouponResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelfareCouponResultModelCopyWith<$Res> {
  factory $WelfareCouponResultModelCopyWith(WelfareCouponResultModel value,
          $Res Function(WelfareCouponResultModel) then) =
      _$WelfareCouponResultModelCopyWithImpl<$Res, WelfareCouponResultModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "list") WelfareList? list});

  $WelfareListCopyWith<$Res>? get list;
}

/// @nodoc
class _$WelfareCouponResultModelCopyWithImpl<$Res,
        $Val extends WelfareCouponResultModel>
    implements $WelfareCouponResultModelCopyWith<$Res> {
  _$WelfareCouponResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as WelfareList?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WelfareListCopyWith<$Res>? get list {
    if (_value.list == null) {
      return null;
    }

    return $WelfareListCopyWith<$Res>(_value.list!, (value) {
      return _then(_value.copyWith(list: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WelfareCouponResultModelImplCopyWith<$Res>
    implements $WelfareCouponResultModelCopyWith<$Res> {
  factory _$$WelfareCouponResultModelImplCopyWith(
          _$WelfareCouponResultModelImpl value,
          $Res Function(_$WelfareCouponResultModelImpl) then) =
      __$$WelfareCouponResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "list") WelfareList? list});

  @override
  $WelfareListCopyWith<$Res>? get list;
}

/// @nodoc
class __$$WelfareCouponResultModelImplCopyWithImpl<$Res>
    extends _$WelfareCouponResultModelCopyWithImpl<$Res,
        _$WelfareCouponResultModelImpl>
    implements _$$WelfareCouponResultModelImplCopyWith<$Res> {
  __$$WelfareCouponResultModelImplCopyWithImpl(
      _$WelfareCouponResultModelImpl _value,
      $Res Function(_$WelfareCouponResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
  }) {
    return _then(_$WelfareCouponResultModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as WelfareList?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WelfareCouponResultModelImpl implements _WelfareCouponResultModel {
  const _$WelfareCouponResultModelImpl(
      {@JsonKey(name: "status") this.status, @JsonKey(name: "list") this.list});

  factory _$WelfareCouponResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WelfareCouponResultModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "list")
  final WelfareList? list;

  @override
  String toString() {
    return 'WelfareCouponResultModel(status: $status, list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WelfareCouponResultModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.list, list) || other.list == list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, list);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WelfareCouponResultModelImplCopyWith<_$WelfareCouponResultModelImpl>
      get copyWith => __$$WelfareCouponResultModelImplCopyWithImpl<
          _$WelfareCouponResultModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WelfareCouponResultModelImplToJson(
      this,
    );
  }
}

abstract class _WelfareCouponResultModel implements WelfareCouponResultModel {
  const factory _WelfareCouponResultModel(
          {@JsonKey(name: "status") final int? status,
          @JsonKey(name: "list") final WelfareList? list}) =
      _$WelfareCouponResultModelImpl;

  factory _WelfareCouponResultModel.fromJson(Map<String, dynamic> json) =
      _$WelfareCouponResultModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "list")
  WelfareList? get list;
  @override
  @JsonKey(ignore: true)
  _$$WelfareCouponResultModelImplCopyWith<_$WelfareCouponResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WelfareList _$WelfareListFromJson(Map<String, dynamic> json) {
  return _WelfareList.fromJson(json);
}

/// @nodoc
mixin _$WelfareList {
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<WelfareItem>? get data => throw _privateConstructorUsedError;
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
  $WelfareListCopyWith<WelfareList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelfareListCopyWith<$Res> {
  factory $WelfareListCopyWith(
          WelfareList value, $Res Function(WelfareList) then) =
      _$WelfareListCopyWithImpl<$Res, WelfareList>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<WelfareItem>? data,
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
class _$WelfareListCopyWithImpl<$Res, $Val extends WelfareList>
    implements $WelfareListCopyWith<$Res> {
  _$WelfareListCopyWithImpl(this._value, this._then);

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
              as List<WelfareItem>?,
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
abstract class _$$WelfareListImplCopyWith<$Res>
    implements $WelfareListCopyWith<$Res> {
  factory _$$WelfareListImplCopyWith(
          _$WelfareListImpl value, $Res Function(_$WelfareListImpl) then) =
      __$$WelfareListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<WelfareItem>? data,
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
class __$$WelfareListImplCopyWithImpl<$Res>
    extends _$WelfareListCopyWithImpl<$Res, _$WelfareListImpl>
    implements _$$WelfareListImplCopyWith<$Res> {
  __$$WelfareListImplCopyWithImpl(
      _$WelfareListImpl _value, $Res Function(_$WelfareListImpl) _then)
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
    return _then(_$WelfareListImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WelfareItem>?,
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
class _$WelfareListImpl implements _WelfareList {
  const _$WelfareListImpl(
      {@JsonKey(name: "current_page") this.currentPage,
      @JsonKey(name: "data") final List<WelfareItem>? data,
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

  factory _$WelfareListImpl.fromJson(Map<String, dynamic> json) =>
      _$$WelfareListImplFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  final List<WelfareItem>? _data;
  @override
  @JsonKey(name: "data")
  List<WelfareItem>? get data {
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
    return 'WelfareList(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, links: $links, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WelfareListImpl &&
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
  _$$WelfareListImplCopyWith<_$WelfareListImpl> get copyWith =>
      __$$WelfareListImplCopyWithImpl<_$WelfareListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WelfareListImplToJson(
      this,
    );
  }
}

abstract class _WelfareList implements WelfareList {
  const factory _WelfareList(
      {@JsonKey(name: "current_page") final int? currentPage,
      @JsonKey(name: "data") final List<WelfareItem>? data,
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
      @JsonKey(name: "total") final int? total}) = _$WelfareListImpl;

  factory _WelfareList.fromJson(Map<String, dynamic> json) =
      _$WelfareListImpl.fromJson;

  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  @JsonKey(name: "data")
  List<WelfareItem>? get data;
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
  _$$WelfareListImplCopyWith<_$WelfareListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WelfareItem _$WelfareItemFromJson(Map<String, dynamic> json) {
  return _WelfareItem.fromJson(json);
}

/// @nodoc
mixin _$WelfareItem {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "uid")
  int? get uid => throw _privateConstructorUsedError;
  @JsonKey(name: "uname")
  String? get uname => throw _privateConstructorUsedError;
  @JsonKey(name: "channel")
  int? get channel => throw _privateConstructorUsedError;
  @JsonKey(name: "couponsid")
  int? get couponsid => throw _privateConstructorUsedError;
  @JsonKey(name: "usebuyid")
  int? get usebuyid => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  int? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "money")
  int? get money => throw _privateConstructorUsedError;
  @JsonKey(name: "time")
  DateTime? get time => throw _privateConstructorUsedError;
  @JsonKey(name: "exptime")
  DateTime? get exptime => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "channelName")
  dynamic get channelName => throw _privateConstructorUsedError;
  @JsonKey(name: "statusName")
  dynamic get statusName => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  dynamic get content => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  DateTime? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WelfareItemCopyWith<WelfareItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelfareItemCopyWith<$Res> {
  factory $WelfareItemCopyWith(
          WelfareItem value, $Res Function(WelfareItem) then) =
      _$WelfareItemCopyWithImpl<$Res, WelfareItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "uid") int? uid,
      @JsonKey(name: "uname") String? uname,
      @JsonKey(name: "channel") int? channel,
      @JsonKey(name: "couponsid") int? couponsid,
      @JsonKey(name: "usebuyid") int? usebuyid,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "type") int? type,
      @JsonKey(name: "money") int? money,
      @JsonKey(name: "time") DateTime? time,
      @JsonKey(name: "exptime") DateTime? exptime,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "channelName") dynamic channelName,
      @JsonKey(name: "statusName") dynamic statusName,
      @JsonKey(name: "content") dynamic content,
      @JsonKey(name: "date") DateTime? date});
}

/// @nodoc
class _$WelfareItemCopyWithImpl<$Res, $Val extends WelfareItem>
    implements $WelfareItemCopyWith<$Res> {
  _$WelfareItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? uname = freezed,
    Object? channel = freezed,
    Object? couponsid = freezed,
    Object? usebuyid = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? money = freezed,
    Object? time = freezed,
    Object? exptime = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? channelName = freezed,
    Object? statusName = freezed,
    Object? content = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int?,
      uname: freezed == uname
          ? _value.uname
          : uname // ignore: cast_nullable_to_non_nullable
              as String?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as int?,
      couponsid: freezed == couponsid
          ? _value.couponsid
          : couponsid // ignore: cast_nullable_to_non_nullable
              as int?,
      usebuyid: freezed == usebuyid
          ? _value.usebuyid
          : usebuyid // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      money: freezed == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as int?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      exptime: freezed == exptime
          ? _value.exptime
          : exptime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusName: freezed == statusName
          ? _value.statusName
          : statusName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as dynamic,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WelfareItemImplCopyWith<$Res>
    implements $WelfareItemCopyWith<$Res> {
  factory _$$WelfareItemImplCopyWith(
          _$WelfareItemImpl value, $Res Function(_$WelfareItemImpl) then) =
      __$$WelfareItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "uid") int? uid,
      @JsonKey(name: "uname") String? uname,
      @JsonKey(name: "channel") int? channel,
      @JsonKey(name: "couponsid") int? couponsid,
      @JsonKey(name: "usebuyid") int? usebuyid,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "type") int? type,
      @JsonKey(name: "money") int? money,
      @JsonKey(name: "time") DateTime? time,
      @JsonKey(name: "exptime") DateTime? exptime,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "channelName") dynamic channelName,
      @JsonKey(name: "statusName") dynamic statusName,
      @JsonKey(name: "content") dynamic content,
      @JsonKey(name: "date") DateTime? date});
}

/// @nodoc
class __$$WelfareItemImplCopyWithImpl<$Res>
    extends _$WelfareItemCopyWithImpl<$Res, _$WelfareItemImpl>
    implements _$$WelfareItemImplCopyWith<$Res> {
  __$$WelfareItemImplCopyWithImpl(
      _$WelfareItemImpl _value, $Res Function(_$WelfareItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? uname = freezed,
    Object? channel = freezed,
    Object? couponsid = freezed,
    Object? usebuyid = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? money = freezed,
    Object? time = freezed,
    Object? exptime = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? channelName = freezed,
    Object? statusName = freezed,
    Object? content = freezed,
    Object? date = freezed,
  }) {
    return _then(_$WelfareItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int?,
      uname: freezed == uname
          ? _value.uname
          : uname // ignore: cast_nullable_to_non_nullable
              as String?,
      channel: freezed == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as int?,
      couponsid: freezed == couponsid
          ? _value.couponsid
          : couponsid // ignore: cast_nullable_to_non_nullable
              as int?,
      usebuyid: freezed == usebuyid
          ? _value.usebuyid
          : usebuyid // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int?,
      money: freezed == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as int?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      exptime: freezed == exptime
          ? _value.exptime
          : exptime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      channelName: freezed == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      statusName: freezed == statusName
          ? _value.statusName
          : statusName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as dynamic,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WelfareItemImpl implements _WelfareItem {
  const _$WelfareItemImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "uid") this.uid,
      @JsonKey(name: "uname") this.uname,
      @JsonKey(name: "channel") this.channel,
      @JsonKey(name: "couponsid") this.couponsid,
      @JsonKey(name: "usebuyid") this.usebuyid,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "type") this.type,
      @JsonKey(name: "money") this.money,
      @JsonKey(name: "time") this.time,
      @JsonKey(name: "exptime") this.exptime,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "channelName") this.channelName,
      @JsonKey(name: "statusName") this.statusName,
      @JsonKey(name: "content") this.content,
      @JsonKey(name: "date") this.date});

  factory _$WelfareItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$WelfareItemImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "uid")
  final int? uid;
  @override
  @JsonKey(name: "uname")
  final String? uname;
  @override
  @JsonKey(name: "channel")
  final int? channel;
  @override
  @JsonKey(name: "couponsid")
  final int? couponsid;
  @override
  @JsonKey(name: "usebuyid")
  final int? usebuyid;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "type")
  final int? type;
  @override
  @JsonKey(name: "money")
  final int? money;
  @override
  @JsonKey(name: "time")
  final DateTime? time;
  @override
  @JsonKey(name: "exptime")
  final DateTime? exptime;
  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "channelName")
  final dynamic channelName;
  @override
  @JsonKey(name: "statusName")
  final dynamic statusName;
  @override
  @JsonKey(name: "content")
  final dynamic content;
  @override
  @JsonKey(name: "date")
  final DateTime? date;

  @override
  String toString() {
    return 'WelfareItem(id: $id, uid: $uid, uname: $uname, channel: $channel, couponsid: $couponsid, usebuyid: $usebuyid, name: $name, type: $type, money: $money, time: $time, exptime: $exptime, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, channelName: $channelName, statusName: $statusName, content: $content, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WelfareItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.uname, uname) || other.uname == uname) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.couponsid, couponsid) ||
                other.couponsid == couponsid) &&
            (identical(other.usebuyid, usebuyid) ||
                other.usebuyid == usebuyid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.money, money) || other.money == money) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.exptime, exptime) || other.exptime == exptime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.channelName, channelName) &&
            const DeepCollectionEquality()
                .equals(other.statusName, statusName) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      uid,
      uname,
      channel,
      couponsid,
      usebuyid,
      name,
      type,
      money,
      time,
      exptime,
      status,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(channelName),
      const DeepCollectionEquality().hash(statusName),
      const DeepCollectionEquality().hash(content),
      date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WelfareItemImplCopyWith<_$WelfareItemImpl> get copyWith =>
      __$$WelfareItemImplCopyWithImpl<_$WelfareItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WelfareItemImplToJson(
      this,
    );
  }
}

abstract class _WelfareItem implements WelfareItem {
  const factory _WelfareItem(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "uid") final int? uid,
      @JsonKey(name: "uname") final String? uname,
      @JsonKey(name: "channel") final int? channel,
      @JsonKey(name: "couponsid") final int? couponsid,
      @JsonKey(name: "usebuyid") final int? usebuyid,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "type") final int? type,
      @JsonKey(name: "money") final int? money,
      @JsonKey(name: "time") final DateTime? time,
      @JsonKey(name: "exptime") final DateTime? exptime,
      @JsonKey(name: "status") final int? status,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "updated_at") final DateTime? updatedAt,
      @JsonKey(name: "channelName") final dynamic channelName,
      @JsonKey(name: "statusName") final dynamic statusName,
      @JsonKey(name: "content") final dynamic content,
      @JsonKey(name: "date") final DateTime? date}) = _$WelfareItemImpl;

  factory _WelfareItem.fromJson(Map<String, dynamic> json) =
      _$WelfareItemImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "uid")
  int? get uid;
  @override
  @JsonKey(name: "uname")
  String? get uname;
  @override
  @JsonKey(name: "channel")
  int? get channel;
  @override
  @JsonKey(name: "couponsid")
  int? get couponsid;
  @override
  @JsonKey(name: "usebuyid")
  int? get usebuyid;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "type")
  int? get type;
  @override
  @JsonKey(name: "money")
  int? get money;
  @override
  @JsonKey(name: "time")
  DateTime? get time;
  @override
  @JsonKey(name: "exptime")
  DateTime? get exptime;
  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "channelName")
  dynamic get channelName;
  @override
  @JsonKey(name: "statusName")
  dynamic get statusName;
  @override
  @JsonKey(name: "content")
  dynamic get content;
  @override
  @JsonKey(name: "date")
  DateTime? get date;
  @override
  @JsonKey(ignore: true)
  _$$WelfareItemImplCopyWith<_$WelfareItemImpl> get copyWith =>
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
