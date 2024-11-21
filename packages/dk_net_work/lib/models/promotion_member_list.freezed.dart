// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_member_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PromotionMemberList _$PromotionMemberListFromJson(Map<String, dynamic> json) {
  return _PromotionMemberList.fromJson(json);
}

/// @nodoc
mixin _$PromotionMemberList {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "mtype")
  int? get mtype => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  MemberList? get list => throw _privateConstructorUsedError;
  @JsonKey(name: "pagesize")
  int? get pagesize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionMemberListCopyWith<PromotionMemberList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionMemberListCopyWith<$Res> {
  factory $PromotionMemberListCopyWith(
          PromotionMemberList value, $Res Function(PromotionMemberList) then) =
      _$PromotionMemberListCopyWithImpl<$Res, PromotionMemberList>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "mtype") int? mtype,
      @JsonKey(name: "list") MemberList? list,
      @JsonKey(name: "pagesize") int? pagesize});

  $MemberListCopyWith<$Res>? get list;
}

/// @nodoc
class _$PromotionMemberListCopyWithImpl<$Res, $Val extends PromotionMemberList>
    implements $PromotionMemberListCopyWith<$Res> {
  _$PromotionMemberListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? mtype = freezed,
    Object? list = freezed,
    Object? pagesize = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      mtype: freezed == mtype
          ? _value.mtype
          : mtype // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as MemberList?,
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MemberListCopyWith<$Res>? get list {
    if (_value.list == null) {
      return null;
    }

    return $MemberListCopyWith<$Res>(_value.list!, (value) {
      return _then(_value.copyWith(list: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PromotionMemberListImplCopyWith<$Res>
    implements $PromotionMemberListCopyWith<$Res> {
  factory _$$PromotionMemberListImplCopyWith(_$PromotionMemberListImpl value,
          $Res Function(_$PromotionMemberListImpl) then) =
      __$$PromotionMemberListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "mtype") int? mtype,
      @JsonKey(name: "list") MemberList? list,
      @JsonKey(name: "pagesize") int? pagesize});

  @override
  $MemberListCopyWith<$Res>? get list;
}

/// @nodoc
class __$$PromotionMemberListImplCopyWithImpl<$Res>
    extends _$PromotionMemberListCopyWithImpl<$Res, _$PromotionMemberListImpl>
    implements _$$PromotionMemberListImplCopyWith<$Res> {
  __$$PromotionMemberListImplCopyWithImpl(_$PromotionMemberListImpl _value,
      $Res Function(_$PromotionMemberListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? mtype = freezed,
    Object? list = freezed,
    Object? pagesize = freezed,
  }) {
    return _then(_$PromotionMemberListImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      mtype: freezed == mtype
          ? _value.mtype
          : mtype // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as MemberList?,
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionMemberListImpl implements _PromotionMemberList {
  const _$PromotionMemberListImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "mtype") this.mtype,
      @JsonKey(name: "list") this.list,
      @JsonKey(name: "pagesize") this.pagesize});

  factory _$PromotionMemberListImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionMemberListImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "mtype")
  final int? mtype;
  @override
  @JsonKey(name: "list")
  final MemberList? list;
  @override
  @JsonKey(name: "pagesize")
  final int? pagesize;

  @override
  String toString() {
    return 'PromotionMemberList(status: $status, mtype: $mtype, list: $list, pagesize: $pagesize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionMemberListImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.mtype, mtype) || other.mtype == mtype) &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.pagesize, pagesize) ||
                other.pagesize == pagesize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, mtype, list, pagesize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionMemberListImplCopyWith<_$PromotionMemberListImpl> get copyWith =>
      __$$PromotionMemberListImplCopyWithImpl<_$PromotionMemberListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionMemberListImplToJson(
      this,
    );
  }
}

abstract class _PromotionMemberList implements PromotionMemberList {
  const factory _PromotionMemberList(
          {@JsonKey(name: "status") final int? status,
          @JsonKey(name: "mtype") final int? mtype,
          @JsonKey(name: "list") final MemberList? list,
          @JsonKey(name: "pagesize") final int? pagesize}) =
      _$PromotionMemberListImpl;

  factory _PromotionMemberList.fromJson(Map<String, dynamic> json) =
      _$PromotionMemberListImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "mtype")
  int? get mtype;
  @override
  @JsonKey(name: "list")
  MemberList? get list;
  @override
  @JsonKey(name: "pagesize")
  int? get pagesize;
  @override
  @JsonKey(ignore: true)
  _$$PromotionMemberListImplCopyWith<_$PromotionMemberListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberList _$MemberListFromJson(Map<String, dynamic> json) {
  return _MemberList.fromJson(json);
}

/// @nodoc
mixin _$MemberList {
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<MemberItem>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "first_page_url")
  String? get firstPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "from")
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page")
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page_url")
  String? get lastPageUrl => throw _privateConstructorUsedError;
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
  $MemberListCopyWith<MemberList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberListCopyWith<$Res> {
  factory $MemberListCopyWith(
          MemberList value, $Res Function(MemberList) then) =
      _$MemberListCopyWithImpl<$Res, MemberList>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<MemberItem>? data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      @JsonKey(name: "next_page_url") dynamic nextPageUrl,
      @JsonKey(name: "path") String? path,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
      @JsonKey(name: "to") int? to,
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class _$MemberListCopyWithImpl<$Res, $Val extends MemberList>
    implements $MemberListCopyWith<$Res> {
  _$MemberListCopyWithImpl(this._value, this._then);

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
              as List<MemberItem>?,
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
abstract class _$$MemberListImplCopyWith<$Res>
    implements $MemberListCopyWith<$Res> {
  factory _$$MemberListImplCopyWith(
          _$MemberListImpl value, $Res Function(_$MemberListImpl) then) =
      __$$MemberListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<MemberItem>? data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      @JsonKey(name: "next_page_url") dynamic nextPageUrl,
      @JsonKey(name: "path") String? path,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "prev_page_url") dynamic prevPageUrl,
      @JsonKey(name: "to") int? to,
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class __$$MemberListImplCopyWithImpl<$Res>
    extends _$MemberListCopyWithImpl<$Res, _$MemberListImpl>
    implements _$$MemberListImplCopyWith<$Res> {
  __$$MemberListImplCopyWithImpl(
      _$MemberListImpl _value, $Res Function(_$MemberListImpl) _then)
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
    Object? nextPageUrl = freezed,
    Object? path = freezed,
    Object? perPage = freezed,
    Object? prevPageUrl = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_$MemberListImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MemberItem>?,
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
class _$MemberListImpl implements _MemberList {
  const _$MemberListImpl(
      {@JsonKey(name: "current_page") this.currentPage,
      @JsonKey(name: "data") final List<MemberItem>? data,
      @JsonKey(name: "first_page_url") this.firstPageUrl,
      @JsonKey(name: "from") this.from,
      @JsonKey(name: "last_page") this.lastPage,
      @JsonKey(name: "last_page_url") this.lastPageUrl,
      @JsonKey(name: "next_page_url") this.nextPageUrl,
      @JsonKey(name: "path") this.path,
      @JsonKey(name: "per_page") this.perPage,
      @JsonKey(name: "prev_page_url") this.prevPageUrl,
      @JsonKey(name: "to") this.to,
      @JsonKey(name: "total") this.total})
      : _data = data;

  factory _$MemberListImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberListImplFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  final List<MemberItem>? _data;
  @override
  @JsonKey(name: "data")
  List<MemberItem>? get data {
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
    return 'MemberList(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberListImpl &&
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
      const DeepCollectionEquality().hash(nextPageUrl),
      path,
      perPage,
      const DeepCollectionEquality().hash(prevPageUrl),
      to,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberListImplCopyWith<_$MemberListImpl> get copyWith =>
      __$$MemberListImplCopyWithImpl<_$MemberListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberListImplToJson(
      this,
    );
  }
}

abstract class _MemberList implements MemberList {
  const factory _MemberList(
      {@JsonKey(name: "current_page") final int? currentPage,
      @JsonKey(name: "data") final List<MemberItem>? data,
      @JsonKey(name: "first_page_url") final String? firstPageUrl,
      @JsonKey(name: "from") final int? from,
      @JsonKey(name: "last_page") final int? lastPage,
      @JsonKey(name: "last_page_url") final String? lastPageUrl,
      @JsonKey(name: "next_page_url") final dynamic nextPageUrl,
      @JsonKey(name: "path") final String? path,
      @JsonKey(name: "per_page") final int? perPage,
      @JsonKey(name: "prev_page_url") final dynamic prevPageUrl,
      @JsonKey(name: "to") final int? to,
      @JsonKey(name: "total") final int? total}) = _$MemberListImpl;

  factory _MemberList.fromJson(Map<String, dynamic> json) =
      _$MemberListImpl.fromJson;

  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  @JsonKey(name: "data")
  List<MemberItem>? get data;
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
  _$$MemberListImplCopyWith<_$MemberListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberItem _$MemberItemFromJson(Map<String, dynamic> json) {
  return _MemberItem.fromJson(json);
}

/// @nodoc
mixin _$MemberItem {
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "realname")
  String? get realname => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "txmoney")
  String? get txmoney => throw _privateConstructorUsedError;
  @JsonKey(name: "duodeli")
  int? get duodeli => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "invicode")
  String? get invicode => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "nextnunber")
  int? get nextnunber => throw _privateConstructorUsedError;
  @JsonKey(name: "nextwithdrawals")
  String? get nextwithdrawals => throw _privateConstructorUsedError;
  @JsonKey(name: "nextrecharges")
  String? get nextrecharges => throw _privateConstructorUsedError;
  @JsonKey(name: "touzi")
  String? get touzi => throw _privateConstructorUsedError;
  @JsonKey(name: "tixian")
  String? get tixian => throw _privateConstructorUsedError;
  @JsonKey(name: "yuebao")
  String? get yuebao => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberItemCopyWith<MemberItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberItemCopyWith<$Res> {
  factory $MemberItemCopyWith(
          MemberItem value, $Res Function(MemberItem) then) =
      _$MemberItemCopyWithImpl<$Res, MemberItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "realname") String? realname,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "txmoney") String? txmoney,
      @JsonKey(name: "duodeli") int? duodeli,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "invicode") String? invicode,
      @JsonKey(name: "date") DateTime? date,
      @JsonKey(name: "nextnunber") int? nextnunber,
      @JsonKey(name: "nextwithdrawals") String? nextwithdrawals,
      @JsonKey(name: "nextrecharges") String? nextrecharges,
      @JsonKey(name: "touzi") String? touzi,
      @JsonKey(name: "tixian") String? tixian,
      @JsonKey(name: "yuebao") String? yuebao});
}

/// @nodoc
class _$MemberItemCopyWithImpl<$Res, $Val extends MemberItem>
    implements $MemberItemCopyWith<$Res> {
  _$MemberItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? realname = freezed,
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? txmoney = freezed,
    Object? duodeli = freezed,
    Object? amount = freezed,
    Object? invicode = freezed,
    Object? date = freezed,
    Object? nextnunber = freezed,
    Object? nextwithdrawals = freezed,
    Object? nextrecharges = freezed,
    Object? touzi = freezed,
    Object? tixian = freezed,
    Object? yuebao = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      realname: freezed == realname
          ? _value.realname
          : realname // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      txmoney: freezed == txmoney
          ? _value.txmoney
          : txmoney // ignore: cast_nullable_to_non_nullable
              as String?,
      duodeli: freezed == duodeli
          ? _value.duodeli
          : duodeli // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      invicode: freezed == invicode
          ? _value.invicode
          : invicode // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nextnunber: freezed == nextnunber
          ? _value.nextnunber
          : nextnunber // ignore: cast_nullable_to_non_nullable
              as int?,
      nextwithdrawals: freezed == nextwithdrawals
          ? _value.nextwithdrawals
          : nextwithdrawals // ignore: cast_nullable_to_non_nullable
              as String?,
      nextrecharges: freezed == nextrecharges
          ? _value.nextrecharges
          : nextrecharges // ignore: cast_nullable_to_non_nullable
              as String?,
      touzi: freezed == touzi
          ? _value.touzi
          : touzi // ignore: cast_nullable_to_non_nullable
              as String?,
      tixian: freezed == tixian
          ? _value.tixian
          : tixian // ignore: cast_nullable_to_non_nullable
              as String?,
      yuebao: freezed == yuebao
          ? _value.yuebao
          : yuebao // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberItemImplCopyWith<$Res>
    implements $MemberItemCopyWith<$Res> {
  factory _$$MemberItemImplCopyWith(
          _$MemberItemImpl value, $Res Function(_$MemberItemImpl) then) =
      __$$MemberItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "realname") String? realname,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "txmoney") String? txmoney,
      @JsonKey(name: "duodeli") int? duodeli,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "invicode") String? invicode,
      @JsonKey(name: "date") DateTime? date,
      @JsonKey(name: "nextnunber") int? nextnunber,
      @JsonKey(name: "nextwithdrawals") String? nextwithdrawals,
      @JsonKey(name: "nextrecharges") String? nextrecharges,
      @JsonKey(name: "touzi") String? touzi,
      @JsonKey(name: "tixian") String? tixian,
      @JsonKey(name: "yuebao") String? yuebao});
}

/// @nodoc
class __$$MemberItemImplCopyWithImpl<$Res>
    extends _$MemberItemCopyWithImpl<$Res, _$MemberItemImpl>
    implements _$$MemberItemImplCopyWith<$Res> {
  __$$MemberItemImplCopyWithImpl(
      _$MemberItemImpl _value, $Res Function(_$MemberItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? realname = freezed,
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? txmoney = freezed,
    Object? duodeli = freezed,
    Object? amount = freezed,
    Object? invicode = freezed,
    Object? date = freezed,
    Object? nextnunber = freezed,
    Object? nextwithdrawals = freezed,
    Object? nextrecharges = freezed,
    Object? touzi = freezed,
    Object? tixian = freezed,
    Object? yuebao = freezed,
  }) {
    return _then(_$MemberItemImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      realname: freezed == realname
          ? _value.realname
          : realname // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      txmoney: freezed == txmoney
          ? _value.txmoney
          : txmoney // ignore: cast_nullable_to_non_nullable
              as String?,
      duodeli: freezed == duodeli
          ? _value.duodeli
          : duodeli // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      invicode: freezed == invicode
          ? _value.invicode
          : invicode // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      nextnunber: freezed == nextnunber
          ? _value.nextnunber
          : nextnunber // ignore: cast_nullable_to_non_nullable
              as int?,
      nextwithdrawals: freezed == nextwithdrawals
          ? _value.nextwithdrawals
          : nextwithdrawals // ignore: cast_nullable_to_non_nullable
              as String?,
      nextrecharges: freezed == nextrecharges
          ? _value.nextrecharges
          : nextrecharges // ignore: cast_nullable_to_non_nullable
              as String?,
      touzi: freezed == touzi
          ? _value.touzi
          : touzi // ignore: cast_nullable_to_non_nullable
              as String?,
      tixian: freezed == tixian
          ? _value.tixian
          : tixian // ignore: cast_nullable_to_non_nullable
              as String?,
      yuebao: freezed == yuebao
          ? _value.yuebao
          : yuebao // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemberItemImpl implements _MemberItem {
  const _$MemberItemImpl(
      {@JsonKey(name: "username") this.username,
      @JsonKey(name: "realname") this.realname,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "txmoney") this.txmoney,
      @JsonKey(name: "duodeli") this.duodeli,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "invicode") this.invicode,
      @JsonKey(name: "date") this.date,
      @JsonKey(name: "nextnunber") this.nextnunber,
      @JsonKey(name: "nextwithdrawals") this.nextwithdrawals,
      @JsonKey(name: "nextrecharges") this.nextrecharges,
      @JsonKey(name: "touzi") this.touzi,
      @JsonKey(name: "tixian") this.tixian,
      @JsonKey(name: "yuebao") this.yuebao});

  factory _$MemberItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberItemImplFromJson(json);

  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "realname")
  final String? realname;
  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "txmoney")
  final String? txmoney;
  @override
  @JsonKey(name: "duodeli")
  final int? duodeli;
  @override
  @JsonKey(name: "amount")
  final String? amount;
  @override
  @JsonKey(name: "invicode")
  final String? invicode;
  @override
  @JsonKey(name: "date")
  final DateTime? date;
  @override
  @JsonKey(name: "nextnunber")
  final int? nextnunber;
  @override
  @JsonKey(name: "nextwithdrawals")
  final String? nextwithdrawals;
  @override
  @JsonKey(name: "nextrecharges")
  final String? nextrecharges;
  @override
  @JsonKey(name: "touzi")
  final String? touzi;
  @override
  @JsonKey(name: "tixian")
  final String? tixian;
  @override
  @JsonKey(name: "yuebao")
  final String? yuebao;

  @override
  String toString() {
    return 'MemberItem(username: $username, realname: $realname, id: $id, createdAt: $createdAt, txmoney: $txmoney, duodeli: $duodeli, amount: $amount, invicode: $invicode, date: $date, nextnunber: $nextnunber, nextwithdrawals: $nextwithdrawals, nextrecharges: $nextrecharges, touzi: $touzi, tixian: $tixian, yuebao: $yuebao)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberItemImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.realname, realname) ||
                other.realname == realname) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.txmoney, txmoney) || other.txmoney == txmoney) &&
            (identical(other.duodeli, duodeli) || other.duodeli == duodeli) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.invicode, invicode) ||
                other.invicode == invicode) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.nextnunber, nextnunber) ||
                other.nextnunber == nextnunber) &&
            (identical(other.nextwithdrawals, nextwithdrawals) ||
                other.nextwithdrawals == nextwithdrawals) &&
            (identical(other.nextrecharges, nextrecharges) ||
                other.nextrecharges == nextrecharges) &&
            (identical(other.touzi, touzi) || other.touzi == touzi) &&
            (identical(other.tixian, tixian) || other.tixian == tixian) &&
            (identical(other.yuebao, yuebao) || other.yuebao == yuebao));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      realname,
      id,
      createdAt,
      txmoney,
      duodeli,
      amount,
      invicode,
      date,
      nextnunber,
      nextwithdrawals,
      nextrecharges,
      touzi,
      tixian,
      yuebao);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberItemImplCopyWith<_$MemberItemImpl> get copyWith =>
      __$$MemberItemImplCopyWithImpl<_$MemberItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberItemImplToJson(
      this,
    );
  }
}

abstract class _MemberItem implements MemberItem {
  const factory _MemberItem(
      {@JsonKey(name: "username") final String? username,
      @JsonKey(name: "realname") final String? realname,
      @JsonKey(name: "id") final int? id,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "txmoney") final String? txmoney,
      @JsonKey(name: "duodeli") final int? duodeli,
      @JsonKey(name: "amount") final String? amount,
      @JsonKey(name: "invicode") final String? invicode,
      @JsonKey(name: "date") final DateTime? date,
      @JsonKey(name: "nextnunber") final int? nextnunber,
      @JsonKey(name: "nextwithdrawals") final String? nextwithdrawals,
      @JsonKey(name: "nextrecharges") final String? nextrecharges,
      @JsonKey(name: "touzi") final String? touzi,
      @JsonKey(name: "tixian") final String? tixian,
      @JsonKey(name: "yuebao") final String? yuebao}) = _$MemberItemImpl;

  factory _MemberItem.fromJson(Map<String, dynamic> json) =
      _$MemberItemImpl.fromJson;

  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "realname")
  String? get realname;
  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "txmoney")
  String? get txmoney;
  @override
  @JsonKey(name: "duodeli")
  int? get duodeli;
  @override
  @JsonKey(name: "amount")
  String? get amount;
  @override
  @JsonKey(name: "invicode")
  String? get invicode;
  @override
  @JsonKey(name: "date")
  DateTime? get date;
  @override
  @JsonKey(name: "nextnunber")
  int? get nextnunber;
  @override
  @JsonKey(name: "nextwithdrawals")
  String? get nextwithdrawals;
  @override
  @JsonKey(name: "nextrecharges")
  String? get nextrecharges;
  @override
  @JsonKey(name: "touzi")
  String? get touzi;
  @override
  @JsonKey(name: "tixian")
  String? get tixian;
  @override
  @JsonKey(name: "yuebao")
  String? get yuebao;
  @override
  @JsonKey(ignore: true)
  _$$MemberItemImplCopyWith<_$MemberItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
