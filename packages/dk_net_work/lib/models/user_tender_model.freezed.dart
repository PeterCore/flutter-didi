// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_tender_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserTenderModel _$UserTenderModelFromJson(Map<String, dynamic> json) {
  return _UserTenderModel.fromJson(json);
}

/// @nodoc
mixin _$UserTenderModel {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  ListClass? get list => throw _privateConstructorUsedError;
  @JsonKey(name: "pagesize")
  String? get pagesize => throw _privateConstructorUsedError;
  @JsonKey(name: "ys")
  String? get ys => throw _privateConstructorUsedError;
  @JsonKey(name: "ds")
  String? get ds => throw _privateConstructorUsedError;
  @JsonKey(name: "isshow")
  int? get isshow => throw _privateConstructorUsedError;
  @JsonKey(name: "integral")
  int? get integral => throw _privateConstructorUsedError;
  @JsonKey(name: "esignature")
  int? get esignature => throw _privateConstructorUsedError;
  @JsonKey(name: "insurance_switch")
  int? get insuranceSwitch => throw _privateConstructorUsedError;
  @JsonKey(name: "download_switch")
  int? get downloadSwitch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserTenderModelCopyWith<UserTenderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTenderModelCopyWith<$Res> {
  factory $UserTenderModelCopyWith(
          UserTenderModel value, $Res Function(UserTenderModel) then) =
      _$UserTenderModelCopyWithImpl<$Res, UserTenderModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "list") ListClass? list,
      @JsonKey(name: "pagesize") String? pagesize,
      @JsonKey(name: "ys") String? ys,
      @JsonKey(name: "ds") String? ds,
      @JsonKey(name: "isshow") int? isshow,
      @JsonKey(name: "integral") int? integral,
      @JsonKey(name: "esignature") int? esignature,
      @JsonKey(name: "insurance_switch") int? insuranceSwitch,
      @JsonKey(name: "download_switch") int? downloadSwitch});

  $ListClassCopyWith<$Res>? get list;
}

/// @nodoc
class _$UserTenderModelCopyWithImpl<$Res, $Val extends UserTenderModel>
    implements $UserTenderModelCopyWith<$Res> {
  _$UserTenderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
    Object? pagesize = freezed,
    Object? ys = freezed,
    Object? ds = freezed,
    Object? isshow = freezed,
    Object? integral = freezed,
    Object? esignature = freezed,
    Object? insuranceSwitch = freezed,
    Object? downloadSwitch = freezed,
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
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as String?,
      ys: freezed == ys
          ? _value.ys
          : ys // ignore: cast_nullable_to_non_nullable
              as String?,
      ds: freezed == ds
          ? _value.ds
          : ds // ignore: cast_nullable_to_non_nullable
              as String?,
      isshow: freezed == isshow
          ? _value.isshow
          : isshow // ignore: cast_nullable_to_non_nullable
              as int?,
      integral: freezed == integral
          ? _value.integral
          : integral // ignore: cast_nullable_to_non_nullable
              as int?,
      esignature: freezed == esignature
          ? _value.esignature
          : esignature // ignore: cast_nullable_to_non_nullable
              as int?,
      insuranceSwitch: freezed == insuranceSwitch
          ? _value.insuranceSwitch
          : insuranceSwitch // ignore: cast_nullable_to_non_nullable
              as int?,
      downloadSwitch: freezed == downloadSwitch
          ? _value.downloadSwitch
          : downloadSwitch // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$UserTenderModelImplCopyWith<$Res>
    implements $UserTenderModelCopyWith<$Res> {
  factory _$$UserTenderModelImplCopyWith(_$UserTenderModelImpl value,
          $Res Function(_$UserTenderModelImpl) then) =
      __$$UserTenderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "list") ListClass? list,
      @JsonKey(name: "pagesize") String? pagesize,
      @JsonKey(name: "ys") String? ys,
      @JsonKey(name: "ds") String? ds,
      @JsonKey(name: "isshow") int? isshow,
      @JsonKey(name: "integral") int? integral,
      @JsonKey(name: "esignature") int? esignature,
      @JsonKey(name: "insurance_switch") int? insuranceSwitch,
      @JsonKey(name: "download_switch") int? downloadSwitch});

  @override
  $ListClassCopyWith<$Res>? get list;
}

/// @nodoc
class __$$UserTenderModelImplCopyWithImpl<$Res>
    extends _$UserTenderModelCopyWithImpl<$Res, _$UserTenderModelImpl>
    implements _$$UserTenderModelImplCopyWith<$Res> {
  __$$UserTenderModelImplCopyWithImpl(
      _$UserTenderModelImpl _value, $Res Function(_$UserTenderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
    Object? pagesize = freezed,
    Object? ys = freezed,
    Object? ds = freezed,
    Object? isshow = freezed,
    Object? integral = freezed,
    Object? esignature = freezed,
    Object? insuranceSwitch = freezed,
    Object? downloadSwitch = freezed,
  }) {
    return _then(_$UserTenderModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ListClass?,
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as String?,
      ys: freezed == ys
          ? _value.ys
          : ys // ignore: cast_nullable_to_non_nullable
              as String?,
      ds: freezed == ds
          ? _value.ds
          : ds // ignore: cast_nullable_to_non_nullable
              as String?,
      isshow: freezed == isshow
          ? _value.isshow
          : isshow // ignore: cast_nullable_to_non_nullable
              as int?,
      integral: freezed == integral
          ? _value.integral
          : integral // ignore: cast_nullable_to_non_nullable
              as int?,
      esignature: freezed == esignature
          ? _value.esignature
          : esignature // ignore: cast_nullable_to_non_nullable
              as int?,
      insuranceSwitch: freezed == insuranceSwitch
          ? _value.insuranceSwitch
          : insuranceSwitch // ignore: cast_nullable_to_non_nullable
              as int?,
      downloadSwitch: freezed == downloadSwitch
          ? _value.downloadSwitch
          : downloadSwitch // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserTenderModelImpl implements _UserTenderModel {
  const _$UserTenderModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "list") this.list,
      @JsonKey(name: "pagesize") this.pagesize,
      @JsonKey(name: "ys") this.ys,
      @JsonKey(name: "ds") this.ds,
      @JsonKey(name: "isshow") this.isshow,
      @JsonKey(name: "integral") this.integral,
      @JsonKey(name: "esignature") this.esignature,
      @JsonKey(name: "insurance_switch") this.insuranceSwitch,
      @JsonKey(name: "download_switch") this.downloadSwitch});

  factory _$UserTenderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserTenderModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "list")
  final ListClass? list;
  @override
  @JsonKey(name: "pagesize")
  final String? pagesize;
  @override
  @JsonKey(name: "ys")
  final String? ys;
  @override
  @JsonKey(name: "ds")
  final String? ds;
  @override
  @JsonKey(name: "isshow")
  final int? isshow;
  @override
  @JsonKey(name: "integral")
  final int? integral;
  @override
  @JsonKey(name: "esignature")
  final int? esignature;
  @override
  @JsonKey(name: "insurance_switch")
  final int? insuranceSwitch;
  @override
  @JsonKey(name: "download_switch")
  final int? downloadSwitch;

  @override
  String toString() {
    return 'UserTenderModel(status: $status, list: $list, pagesize: $pagesize, ys: $ys, ds: $ds, isshow: $isshow, integral: $integral, esignature: $esignature, insuranceSwitch: $insuranceSwitch, downloadSwitch: $downloadSwitch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTenderModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.pagesize, pagesize) ||
                other.pagesize == pagesize) &&
            (identical(other.ys, ys) || other.ys == ys) &&
            (identical(other.ds, ds) || other.ds == ds) &&
            (identical(other.isshow, isshow) || other.isshow == isshow) &&
            (identical(other.integral, integral) ||
                other.integral == integral) &&
            (identical(other.esignature, esignature) ||
                other.esignature == esignature) &&
            (identical(other.insuranceSwitch, insuranceSwitch) ||
                other.insuranceSwitch == insuranceSwitch) &&
            (identical(other.downloadSwitch, downloadSwitch) ||
                other.downloadSwitch == downloadSwitch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, list, pagesize, ys, ds,
      isshow, integral, esignature, insuranceSwitch, downloadSwitch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTenderModelImplCopyWith<_$UserTenderModelImpl> get copyWith =>
      __$$UserTenderModelImplCopyWithImpl<_$UserTenderModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserTenderModelImplToJson(
      this,
    );
  }
}

abstract class _UserTenderModel implements UserTenderModel {
  const factory _UserTenderModel(
          {@JsonKey(name: "status") final int? status,
          @JsonKey(name: "list") final ListClass? list,
          @JsonKey(name: "pagesize") final String? pagesize,
          @JsonKey(name: "ys") final String? ys,
          @JsonKey(name: "ds") final String? ds,
          @JsonKey(name: "isshow") final int? isshow,
          @JsonKey(name: "integral") final int? integral,
          @JsonKey(name: "esignature") final int? esignature,
          @JsonKey(name: "insurance_switch") final int? insuranceSwitch,
          @JsonKey(name: "download_switch") final int? downloadSwitch}) =
      _$UserTenderModelImpl;

  factory _UserTenderModel.fromJson(Map<String, dynamic> json) =
      _$UserTenderModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "list")
  ListClass? get list;
  @override
  @JsonKey(name: "pagesize")
  String? get pagesize;
  @override
  @JsonKey(name: "ys")
  String? get ys;
  @override
  @JsonKey(name: "ds")
  String? get ds;
  @override
  @JsonKey(name: "isshow")
  int? get isshow;
  @override
  @JsonKey(name: "integral")
  int? get integral;
  @override
  @JsonKey(name: "esignature")
  int? get esignature;
  @override
  @JsonKey(name: "insurance_switch")
  int? get insuranceSwitch;
  @override
  @JsonKey(name: "download_switch")
  int? get downloadSwitch;
  @override
  @JsonKey(ignore: true)
  _$$UserTenderModelImplCopyWith<_$UserTenderModelImpl> get copyWith =>
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
  @JsonKey(name: "contract_no")
  String? get contractNo => throw _privateConstructorUsedError;
  @JsonKey(name: "userid")
  int? get userid => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "productid")
  int? get productid => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "benefit")
  int? get benefit => throw _privateConstructorUsedError;
  @JsonKey(name: "ip")
  String? get ip => throw _privateConstructorUsedError;
  @JsonKey(name: "useritem_time")
  DateTime? get useritemTime => throw _privateConstructorUsedError;
  @JsonKey(name: "useritem_time1")
  dynamic get useritemTime1 => throw _privateConstructorUsedError;
  @JsonKey(name: "useritem_time2")
  DateTime? get useritemTime2 => throw _privateConstructorUsedError;
  @JsonKey(name: "useritem_count")
  int? get useritemCount => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "sendday_count")
  int? get senddayCount => throw _privateConstructorUsedError;
  @JsonKey(name: "level")
  int? get level => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "bugcoupon")
  String? get bugcoupon => throw _privateConstructorUsedError;
  @JsonKey(name: "issort")
  int? get issort => throw _privateConstructorUsedError;
  @JsonKey(name: "daymoney")
  int? get daymoney => throw _privateConstructorUsedError;
  @JsonKey(name: "iszengsong_only")
  int? get iszengsongOnly => throw _privateConstructorUsedError;
  @JsonKey(name: "iszengsong")
  int? get iszengsong => throw _privateConstructorUsedError;
  @JsonKey(name: "insurance_amount")
  String? get insuranceAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "is_insurance")
  int? get isInsurance => throw _privateConstructorUsedError;
  @JsonKey(name: "sign_img")
  String? get signImg => throw _privateConstructorUsedError;
  @JsonKey(name: "is_aggregated_amount")
  int? get isAggregatedAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "jyrsy")
  String? get jyrsy => throw _privateConstructorUsedError;
  @JsonKey(name: "shijian")
  String? get shijian => throw _privateConstructorUsedError;
  @JsonKey(name: "qxdw")
  String? get qxdw => throw _privateConstructorUsedError;
  @JsonKey(name: "equity")
  int? get equity => throw _privateConstructorUsedError;
  @JsonKey(name: "rate")
  int? get rate => throw _privateConstructorUsedError;
  @JsonKey(name: "levelname")
  String? get levelname => throw _privateConstructorUsedError;
  @JsonKey(name: "moneyCount")
  String? get moneyCount => throw _privateConstructorUsedError;
  @JsonKey(name: "elseMoney")
  String? get elseMoney => throw _privateConstructorUsedError;
  @JsonKey(name: "shouyis")
  String? get shouyis => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  int? get url => throw _privateConstructorUsedError;
  @JsonKey(name: "remain_download")
  int? get remainDownload => throw _privateConstructorUsedError;

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
      @JsonKey(name: "contract_no") String? contractNo,
      @JsonKey(name: "userid") int? userid,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "productid") int? productid,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "benefit") int? benefit,
      @JsonKey(name: "ip") String? ip,
      @JsonKey(name: "useritem_time") DateTime? useritemTime,
      @JsonKey(name: "useritem_time1") dynamic useritemTime1,
      @JsonKey(name: "useritem_time2") DateTime? useritemTime2,
      @JsonKey(name: "useritem_count") int? useritemCount,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "sendday_count") int? senddayCount,
      @JsonKey(name: "level") int? level,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "bugcoupon") String? bugcoupon,
      @JsonKey(name: "issort") int? issort,
      @JsonKey(name: "daymoney") int? daymoney,
      @JsonKey(name: "iszengsong_only") int? iszengsongOnly,
      @JsonKey(name: "iszengsong") int? iszengsong,
      @JsonKey(name: "insurance_amount") String? insuranceAmount,
      @JsonKey(name: "is_insurance") int? isInsurance,
      @JsonKey(name: "sign_img") String? signImg,
      @JsonKey(name: "is_aggregated_amount") int? isAggregatedAmount,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "jyrsy") String? jyrsy,
      @JsonKey(name: "shijian") String? shijian,
      @JsonKey(name: "qxdw") String? qxdw,
      @JsonKey(name: "equity") int? equity,
      @JsonKey(name: "rate") int? rate,
      @JsonKey(name: "levelname") String? levelname,
      @JsonKey(name: "moneyCount") String? moneyCount,
      @JsonKey(name: "elseMoney") String? elseMoney,
      @JsonKey(name: "shouyis") String? shouyis,
      @JsonKey(name: "url") int? url,
      @JsonKey(name: "remain_download") int? remainDownload});
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
    Object? contractNo = freezed,
    Object? userid = freezed,
    Object? username = freezed,
    Object? productid = freezed,
    Object? amount = freezed,
    Object? benefit = freezed,
    Object? ip = freezed,
    Object? useritemTime = freezed,
    Object? useritemTime1 = freezed,
    Object? useritemTime2 = freezed,
    Object? useritemCount = freezed,
    Object? status = freezed,
    Object? senddayCount = freezed,
    Object? level = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? bugcoupon = freezed,
    Object? issort = freezed,
    Object? daymoney = freezed,
    Object? iszengsongOnly = freezed,
    Object? iszengsong = freezed,
    Object? insuranceAmount = freezed,
    Object? isInsurance = freezed,
    Object? signImg = freezed,
    Object? isAggregatedAmount = freezed,
    Object? title = freezed,
    Object? jyrsy = freezed,
    Object? shijian = freezed,
    Object? qxdw = freezed,
    Object? equity = freezed,
    Object? rate = freezed,
    Object? levelname = freezed,
    Object? moneyCount = freezed,
    Object? elseMoney = freezed,
    Object? shouyis = freezed,
    Object? url = freezed,
    Object? remainDownload = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      contractNo: freezed == contractNo
          ? _value.contractNo
          : contractNo // ignore: cast_nullable_to_non_nullable
              as String?,
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
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      benefit: freezed == benefit
          ? _value.benefit
          : benefit // ignore: cast_nullable_to_non_nullable
              as int?,
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      useritemTime: freezed == useritemTime
          ? _value.useritemTime
          : useritemTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      useritemTime1: freezed == useritemTime1
          ? _value.useritemTime1
          : useritemTime1 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      useritemTime2: freezed == useritemTime2
          ? _value.useritemTime2
          : useritemTime2 // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      useritemCount: freezed == useritemCount
          ? _value.useritemCount
          : useritemCount // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      senddayCount: freezed == senddayCount
          ? _value.senddayCount
          : senddayCount // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bugcoupon: freezed == bugcoupon
          ? _value.bugcoupon
          : bugcoupon // ignore: cast_nullable_to_non_nullable
              as String?,
      issort: freezed == issort
          ? _value.issort
          : issort // ignore: cast_nullable_to_non_nullable
              as int?,
      daymoney: freezed == daymoney
          ? _value.daymoney
          : daymoney // ignore: cast_nullable_to_non_nullable
              as int?,
      iszengsongOnly: freezed == iszengsongOnly
          ? _value.iszengsongOnly
          : iszengsongOnly // ignore: cast_nullable_to_non_nullable
              as int?,
      iszengsong: freezed == iszengsong
          ? _value.iszengsong
          : iszengsong // ignore: cast_nullable_to_non_nullable
              as int?,
      insuranceAmount: freezed == insuranceAmount
          ? _value.insuranceAmount
          : insuranceAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      isInsurance: freezed == isInsurance
          ? _value.isInsurance
          : isInsurance // ignore: cast_nullable_to_non_nullable
              as int?,
      signImg: freezed == signImg
          ? _value.signImg
          : signImg // ignore: cast_nullable_to_non_nullable
              as String?,
      isAggregatedAmount: freezed == isAggregatedAmount
          ? _value.isAggregatedAmount
          : isAggregatedAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      jyrsy: freezed == jyrsy
          ? _value.jyrsy
          : jyrsy // ignore: cast_nullable_to_non_nullable
              as String?,
      shijian: freezed == shijian
          ? _value.shijian
          : shijian // ignore: cast_nullable_to_non_nullable
              as String?,
      qxdw: freezed == qxdw
          ? _value.qxdw
          : qxdw // ignore: cast_nullable_to_non_nullable
              as String?,
      equity: freezed == equity
          ? _value.equity
          : equity // ignore: cast_nullable_to_non_nullable
              as int?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      levelname: freezed == levelname
          ? _value.levelname
          : levelname // ignore: cast_nullable_to_non_nullable
              as String?,
      moneyCount: freezed == moneyCount
          ? _value.moneyCount
          : moneyCount // ignore: cast_nullable_to_non_nullable
              as String?,
      elseMoney: freezed == elseMoney
          ? _value.elseMoney
          : elseMoney // ignore: cast_nullable_to_non_nullable
              as String?,
      shouyis: freezed == shouyis
          ? _value.shouyis
          : shouyis // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as int?,
      remainDownload: freezed == remainDownload
          ? _value.remainDownload
          : remainDownload // ignore: cast_nullable_to_non_nullable
              as int?,
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
      @JsonKey(name: "contract_no") String? contractNo,
      @JsonKey(name: "userid") int? userid,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "productid") int? productid,
      @JsonKey(name: "amount") int? amount,
      @JsonKey(name: "benefit") int? benefit,
      @JsonKey(name: "ip") String? ip,
      @JsonKey(name: "useritem_time") DateTime? useritemTime,
      @JsonKey(name: "useritem_time1") dynamic useritemTime1,
      @JsonKey(name: "useritem_time2") DateTime? useritemTime2,
      @JsonKey(name: "useritem_count") int? useritemCount,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "sendday_count") int? senddayCount,
      @JsonKey(name: "level") int? level,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "bugcoupon") String? bugcoupon,
      @JsonKey(name: "issort") int? issort,
      @JsonKey(name: "daymoney") int? daymoney,
      @JsonKey(name: "iszengsong_only") int? iszengsongOnly,
      @JsonKey(name: "iszengsong") int? iszengsong,
      @JsonKey(name: "insurance_amount") String? insuranceAmount,
      @JsonKey(name: "is_insurance") int? isInsurance,
      @JsonKey(name: "sign_img") String? signImg,
      @JsonKey(name: "is_aggregated_amount") int? isAggregatedAmount,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "jyrsy") String? jyrsy,
      @JsonKey(name: "shijian") String? shijian,
      @JsonKey(name: "qxdw") String? qxdw,
      @JsonKey(name: "equity") int? equity,
      @JsonKey(name: "rate") int? rate,
      @JsonKey(name: "levelname") String? levelname,
      @JsonKey(name: "moneyCount") String? moneyCount,
      @JsonKey(name: "elseMoney") String? elseMoney,
      @JsonKey(name: "shouyis") String? shouyis,
      @JsonKey(name: "url") int? url,
      @JsonKey(name: "remain_download") int? remainDownload});
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
    Object? contractNo = freezed,
    Object? userid = freezed,
    Object? username = freezed,
    Object? productid = freezed,
    Object? amount = freezed,
    Object? benefit = freezed,
    Object? ip = freezed,
    Object? useritemTime = freezed,
    Object? useritemTime1 = freezed,
    Object? useritemTime2 = freezed,
    Object? useritemCount = freezed,
    Object? status = freezed,
    Object? senddayCount = freezed,
    Object? level = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? bugcoupon = freezed,
    Object? issort = freezed,
    Object? daymoney = freezed,
    Object? iszengsongOnly = freezed,
    Object? iszengsong = freezed,
    Object? insuranceAmount = freezed,
    Object? isInsurance = freezed,
    Object? signImg = freezed,
    Object? isAggregatedAmount = freezed,
    Object? title = freezed,
    Object? jyrsy = freezed,
    Object? shijian = freezed,
    Object? qxdw = freezed,
    Object? equity = freezed,
    Object? rate = freezed,
    Object? levelname = freezed,
    Object? moneyCount = freezed,
    Object? elseMoney = freezed,
    Object? shouyis = freezed,
    Object? url = freezed,
    Object? remainDownload = freezed,
  }) {
    return _then(_$DatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      contractNo: freezed == contractNo
          ? _value.contractNo
          : contractNo // ignore: cast_nullable_to_non_nullable
              as String?,
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
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      benefit: freezed == benefit
          ? _value.benefit
          : benefit // ignore: cast_nullable_to_non_nullable
              as int?,
      ip: freezed == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String?,
      useritemTime: freezed == useritemTime
          ? _value.useritemTime
          : useritemTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      useritemTime1: freezed == useritemTime1
          ? _value.useritemTime1
          : useritemTime1 // ignore: cast_nullable_to_non_nullable
              as dynamic,
      useritemTime2: freezed == useritemTime2
          ? _value.useritemTime2
          : useritemTime2 // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      useritemCount: freezed == useritemCount
          ? _value.useritemCount
          : useritemCount // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      senddayCount: freezed == senddayCount
          ? _value.senddayCount
          : senddayCount // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bugcoupon: freezed == bugcoupon
          ? _value.bugcoupon
          : bugcoupon // ignore: cast_nullable_to_non_nullable
              as String?,
      issort: freezed == issort
          ? _value.issort
          : issort // ignore: cast_nullable_to_non_nullable
              as int?,
      daymoney: freezed == daymoney
          ? _value.daymoney
          : daymoney // ignore: cast_nullable_to_non_nullable
              as int?,
      iszengsongOnly: freezed == iszengsongOnly
          ? _value.iszengsongOnly
          : iszengsongOnly // ignore: cast_nullable_to_non_nullable
              as int?,
      iszengsong: freezed == iszengsong
          ? _value.iszengsong
          : iszengsong // ignore: cast_nullable_to_non_nullable
              as int?,
      insuranceAmount: freezed == insuranceAmount
          ? _value.insuranceAmount
          : insuranceAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      isInsurance: freezed == isInsurance
          ? _value.isInsurance
          : isInsurance // ignore: cast_nullable_to_non_nullable
              as int?,
      signImg: freezed == signImg
          ? _value.signImg
          : signImg // ignore: cast_nullable_to_non_nullable
              as String?,
      isAggregatedAmount: freezed == isAggregatedAmount
          ? _value.isAggregatedAmount
          : isAggregatedAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      jyrsy: freezed == jyrsy
          ? _value.jyrsy
          : jyrsy // ignore: cast_nullable_to_non_nullable
              as String?,
      shijian: freezed == shijian
          ? _value.shijian
          : shijian // ignore: cast_nullable_to_non_nullable
              as String?,
      qxdw: freezed == qxdw
          ? _value.qxdw
          : qxdw // ignore: cast_nullable_to_non_nullable
              as String?,
      equity: freezed == equity
          ? _value.equity
          : equity // ignore: cast_nullable_to_non_nullable
              as int?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      levelname: freezed == levelname
          ? _value.levelname
          : levelname // ignore: cast_nullable_to_non_nullable
              as String?,
      moneyCount: freezed == moneyCount
          ? _value.moneyCount
          : moneyCount // ignore: cast_nullable_to_non_nullable
              as String?,
      elseMoney: freezed == elseMoney
          ? _value.elseMoney
          : elseMoney // ignore: cast_nullable_to_non_nullable
              as String?,
      shouyis: freezed == shouyis
          ? _value.shouyis
          : shouyis // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as int?,
      remainDownload: freezed == remainDownload
          ? _value.remainDownload
          : remainDownload // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "contract_no") this.contractNo,
      @JsonKey(name: "userid") this.userid,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "productid") this.productid,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "benefit") this.benefit,
      @JsonKey(name: "ip") this.ip,
      @JsonKey(name: "useritem_time") this.useritemTime,
      @JsonKey(name: "useritem_time1") this.useritemTime1,
      @JsonKey(name: "useritem_time2") this.useritemTime2,
      @JsonKey(name: "useritem_count") this.useritemCount,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "sendday_count") this.senddayCount,
      @JsonKey(name: "level") this.level,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "bugcoupon") this.bugcoupon,
      @JsonKey(name: "issort") this.issort,
      @JsonKey(name: "daymoney") this.daymoney,
      @JsonKey(name: "iszengsong_only") this.iszengsongOnly,
      @JsonKey(name: "iszengsong") this.iszengsong,
      @JsonKey(name: "insurance_amount") this.insuranceAmount,
      @JsonKey(name: "is_insurance") this.isInsurance,
      @JsonKey(name: "sign_img") this.signImg,
      @JsonKey(name: "is_aggregated_amount") this.isAggregatedAmount,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "jyrsy") this.jyrsy,
      @JsonKey(name: "shijian") this.shijian,
      @JsonKey(name: "qxdw") this.qxdw,
      @JsonKey(name: "equity") this.equity,
      @JsonKey(name: "rate") this.rate,
      @JsonKey(name: "levelname") this.levelname,
      @JsonKey(name: "moneyCount") this.moneyCount,
      @JsonKey(name: "elseMoney") this.elseMoney,
      @JsonKey(name: "shouyis") this.shouyis,
      @JsonKey(name: "url") this.url,
      @JsonKey(name: "remain_download") this.remainDownload});

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "contract_no")
  final String? contractNo;
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
  @JsonKey(name: "amount")
  final int? amount;
  @override
  @JsonKey(name: "benefit")
  final int? benefit;
  @override
  @JsonKey(name: "ip")
  final String? ip;
  @override
  @JsonKey(name: "useritem_time")
  final DateTime? useritemTime;
  @override
  @JsonKey(name: "useritem_time1")
  final dynamic useritemTime1;
  @override
  @JsonKey(name: "useritem_time2")
  final DateTime? useritemTime2;
  @override
  @JsonKey(name: "useritem_count")
  final int? useritemCount;
  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "sendday_count")
  final int? senddayCount;
  @override
  @JsonKey(name: "level")
  final int? level;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "bugcoupon")
  final String? bugcoupon;
  @override
  @JsonKey(name: "issort")
  final int? issort;
  @override
  @JsonKey(name: "daymoney")
  final int? daymoney;
  @override
  @JsonKey(name: "iszengsong_only")
  final int? iszengsongOnly;
  @override
  @JsonKey(name: "iszengsong")
  final int? iszengsong;
  @override
  @JsonKey(name: "insurance_amount")
  final String? insuranceAmount;
  @override
  @JsonKey(name: "is_insurance")
  final int? isInsurance;
  @override
  @JsonKey(name: "sign_img")
  final String? signImg;
  @override
  @JsonKey(name: "is_aggregated_amount")
  final int? isAggregatedAmount;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "jyrsy")
  final String? jyrsy;
  @override
  @JsonKey(name: "shijian")
  final String? shijian;
  @override
  @JsonKey(name: "qxdw")
  final String? qxdw;
  @override
  @JsonKey(name: "equity")
  final int? equity;
  @override
  @JsonKey(name: "rate")
  final int? rate;
  @override
  @JsonKey(name: "levelname")
  final String? levelname;
  @override
  @JsonKey(name: "moneyCount")
  final String? moneyCount;
  @override
  @JsonKey(name: "elseMoney")
  final String? elseMoney;
  @override
  @JsonKey(name: "shouyis")
  final String? shouyis;
  @override
  @JsonKey(name: "url")
  final int? url;
  @override
  @JsonKey(name: "remain_download")
  final int? remainDownload;

  @override
  String toString() {
    return 'Datum(id: $id, contractNo: $contractNo, userid: $userid, username: $username, productid: $productid, amount: $amount, benefit: $benefit, ip: $ip, useritemTime: $useritemTime, useritemTime1: $useritemTime1, useritemTime2: $useritemTime2, useritemCount: $useritemCount, status: $status, senddayCount: $senddayCount, level: $level, createdAt: $createdAt, updatedAt: $updatedAt, bugcoupon: $bugcoupon, issort: $issort, daymoney: $daymoney, iszengsongOnly: $iszengsongOnly, iszengsong: $iszengsong, insuranceAmount: $insuranceAmount, isInsurance: $isInsurance, signImg: $signImg, isAggregatedAmount: $isAggregatedAmount, title: $title, jyrsy: $jyrsy, shijian: $shijian, qxdw: $qxdw, equity: $equity, rate: $rate, levelname: $levelname, moneyCount: $moneyCount, elseMoney: $elseMoney, shouyis: $shouyis, url: $url, remainDownload: $remainDownload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.contractNo, contractNo) ||
                other.contractNo == contractNo) &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.productid, productid) ||
                other.productid == productid) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.benefit, benefit) || other.benefit == benefit) &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.useritemTime, useritemTime) ||
                other.useritemTime == useritemTime) &&
            const DeepCollectionEquality()
                .equals(other.useritemTime1, useritemTime1) &&
            (identical(other.useritemTime2, useritemTime2) ||
                other.useritemTime2 == useritemTime2) &&
            (identical(other.useritemCount, useritemCount) ||
                other.useritemCount == useritemCount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.senddayCount, senddayCount) ||
                other.senddayCount == senddayCount) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.bugcoupon, bugcoupon) ||
                other.bugcoupon == bugcoupon) &&
            (identical(other.issort, issort) || other.issort == issort) &&
            (identical(other.daymoney, daymoney) ||
                other.daymoney == daymoney) &&
            (identical(other.iszengsongOnly, iszengsongOnly) ||
                other.iszengsongOnly == iszengsongOnly) &&
            (identical(other.iszengsong, iszengsong) ||
                other.iszengsong == iszengsong) &&
            (identical(other.insuranceAmount, insuranceAmount) ||
                other.insuranceAmount == insuranceAmount) &&
            (identical(other.isInsurance, isInsurance) ||
                other.isInsurance == isInsurance) &&
            (identical(other.signImg, signImg) || other.signImg == signImg) &&
            (identical(other.isAggregatedAmount, isAggregatedAmount) ||
                other.isAggregatedAmount == isAggregatedAmount) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.jyrsy, jyrsy) || other.jyrsy == jyrsy) &&
            (identical(other.shijian, shijian) || other.shijian == shijian) &&
            (identical(other.qxdw, qxdw) || other.qxdw == qxdw) &&
            (identical(other.equity, equity) || other.equity == equity) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.levelname, levelname) ||
                other.levelname == levelname) &&
            (identical(other.moneyCount, moneyCount) ||
                other.moneyCount == moneyCount) &&
            (identical(other.elseMoney, elseMoney) ||
                other.elseMoney == elseMoney) &&
            (identical(other.shouyis, shouyis) || other.shouyis == shouyis) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.remainDownload, remainDownload) ||
                other.remainDownload == remainDownload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        contractNo,
        userid,
        username,
        productid,
        amount,
        benefit,
        ip,
        useritemTime,
        const DeepCollectionEquality().hash(useritemTime1),
        useritemTime2,
        useritemCount,
        status,
        senddayCount,
        level,
        createdAt,
        updatedAt,
        bugcoupon,
        issort,
        daymoney,
        iszengsongOnly,
        iszengsong,
        insuranceAmount,
        isInsurance,
        signImg,
        isAggregatedAmount,
        title,
        jyrsy,
        shijian,
        qxdw,
        equity,
        rate,
        levelname,
        moneyCount,
        elseMoney,
        shouyis,
        url,
        remainDownload
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
          @JsonKey(name: "contract_no") final String? contractNo,
          @JsonKey(name: "userid") final int? userid,
          @JsonKey(name: "username") final String? username,
          @JsonKey(name: "productid") final int? productid,
          @JsonKey(name: "amount") final int? amount,
          @JsonKey(name: "benefit") final int? benefit,
          @JsonKey(name: "ip") final String? ip,
          @JsonKey(name: "useritem_time") final DateTime? useritemTime,
          @JsonKey(name: "useritem_time1") final dynamic useritemTime1,
          @JsonKey(name: "useritem_time2") final DateTime? useritemTime2,
          @JsonKey(name: "useritem_count") final int? useritemCount,
          @JsonKey(name: "status") final int? status,
          @JsonKey(name: "sendday_count") final int? senddayCount,
          @JsonKey(name: "level") final int? level,
          @JsonKey(name: "created_at") final DateTime? createdAt,
          @JsonKey(name: "updated_at") final DateTime? updatedAt,
          @JsonKey(name: "bugcoupon") final String? bugcoupon,
          @JsonKey(name: "issort") final int? issort,
          @JsonKey(name: "daymoney") final int? daymoney,
          @JsonKey(name: "iszengsong_only") final int? iszengsongOnly,
          @JsonKey(name: "iszengsong") final int? iszengsong,
          @JsonKey(name: "insurance_amount") final String? insuranceAmount,
          @JsonKey(name: "is_insurance") final int? isInsurance,
          @JsonKey(name: "sign_img") final String? signImg,
          @JsonKey(name: "is_aggregated_amount") final int? isAggregatedAmount,
          @JsonKey(name: "title") final String? title,
          @JsonKey(name: "jyrsy") final String? jyrsy,
          @JsonKey(name: "shijian") final String? shijian,
          @JsonKey(name: "qxdw") final String? qxdw,
          @JsonKey(name: "equity") final int? equity,
          @JsonKey(name: "rate") final int? rate,
          @JsonKey(name: "levelname") final String? levelname,
          @JsonKey(name: "moneyCount") final String? moneyCount,
          @JsonKey(name: "elseMoney") final String? elseMoney,
          @JsonKey(name: "shouyis") final String? shouyis,
          @JsonKey(name: "url") final int? url,
          @JsonKey(name: "remain_download") final int? remainDownload}) =
      _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "contract_no")
  String? get contractNo;
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
  @JsonKey(name: "amount")
  int? get amount;
  @override
  @JsonKey(name: "benefit")
  int? get benefit;
  @override
  @JsonKey(name: "ip")
  String? get ip;
  @override
  @JsonKey(name: "useritem_time")
  DateTime? get useritemTime;
  @override
  @JsonKey(name: "useritem_time1")
  dynamic get useritemTime1;
  @override
  @JsonKey(name: "useritem_time2")
  DateTime? get useritemTime2;
  @override
  @JsonKey(name: "useritem_count")
  int? get useritemCount;
  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "sendday_count")
  int? get senddayCount;
  @override
  @JsonKey(name: "level")
  int? get level;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "bugcoupon")
  String? get bugcoupon;
  @override
  @JsonKey(name: "issort")
  int? get issort;
  @override
  @JsonKey(name: "daymoney")
  int? get daymoney;
  @override
  @JsonKey(name: "iszengsong_only")
  int? get iszengsongOnly;
  @override
  @JsonKey(name: "iszengsong")
  int? get iszengsong;
  @override
  @JsonKey(name: "insurance_amount")
  String? get insuranceAmount;
  @override
  @JsonKey(name: "is_insurance")
  int? get isInsurance;
  @override
  @JsonKey(name: "sign_img")
  String? get signImg;
  @override
  @JsonKey(name: "is_aggregated_amount")
  int? get isAggregatedAmount;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "jyrsy")
  String? get jyrsy;
  @override
  @JsonKey(name: "shijian")
  String? get shijian;
  @override
  @JsonKey(name: "qxdw")
  String? get qxdw;
  @override
  @JsonKey(name: "equity")
  int? get equity;
  @override
  @JsonKey(name: "rate")
  int? get rate;
  @override
  @JsonKey(name: "levelname")
  String? get levelname;
  @override
  @JsonKey(name: "moneyCount")
  String? get moneyCount;
  @override
  @JsonKey(name: "elseMoney")
  String? get elseMoney;
  @override
  @JsonKey(name: "shouyis")
  String? get shouyis;
  @override
  @JsonKey(name: "url")
  int? get url;
  @override
  @JsonKey(name: "remain_download")
  int? get remainDownload;
  @override
  @JsonKey(ignore: true)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
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
