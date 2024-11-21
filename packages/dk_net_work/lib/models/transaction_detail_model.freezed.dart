// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionDetailModel _$TransactionDetailModelFromJson(
    Map<String, dynamic> json) {
  return _TransactionDetailModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionDetailModel {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "Ymoneys")
  String? get ymoneys => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  TransactionDetailList? get list => throw _privateConstructorUsedError;
  @JsonKey(name: "pagesize")
  int? get pagesize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDetailModelCopyWith<TransactionDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDetailModelCopyWith<$Res> {
  factory $TransactionDetailModelCopyWith(TransactionDetailModel value,
          $Res Function(TransactionDetailModel) then) =
      _$TransactionDetailModelCopyWithImpl<$Res, TransactionDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "Ymoneys") String? ymoneys,
      @JsonKey(name: "list") TransactionDetailList? list,
      @JsonKey(name: "pagesize") int? pagesize});

  $TransactionDetailListCopyWith<$Res>? get list;
}

/// @nodoc
class _$TransactionDetailModelCopyWithImpl<$Res,
        $Val extends TransactionDetailModel>
    implements $TransactionDetailModelCopyWith<$Res> {
  _$TransactionDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? ymoneys = freezed,
    Object? list = freezed,
    Object? pagesize = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      ymoneys: freezed == ymoneys
          ? _value.ymoneys
          : ymoneys // ignore: cast_nullable_to_non_nullable
              as String?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as TransactionDetailList?,
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionDetailListCopyWith<$Res>? get list {
    if (_value.list == null) {
      return null;
    }

    return $TransactionDetailListCopyWith<$Res>(_value.list!, (value) {
      return _then(_value.copyWith(list: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionDetailModelImplCopyWith<$Res>
    implements $TransactionDetailModelCopyWith<$Res> {
  factory _$$TransactionDetailModelImplCopyWith(
          _$TransactionDetailModelImpl value,
          $Res Function(_$TransactionDetailModelImpl) then) =
      __$$TransactionDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "Ymoneys") String? ymoneys,
      @JsonKey(name: "list") TransactionDetailList? list,
      @JsonKey(name: "pagesize") int? pagesize});

  @override
  $TransactionDetailListCopyWith<$Res>? get list;
}

/// @nodoc
class __$$TransactionDetailModelImplCopyWithImpl<$Res>
    extends _$TransactionDetailModelCopyWithImpl<$Res,
        _$TransactionDetailModelImpl>
    implements _$$TransactionDetailModelImplCopyWith<$Res> {
  __$$TransactionDetailModelImplCopyWithImpl(
      _$TransactionDetailModelImpl _value,
      $Res Function(_$TransactionDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? ymoneys = freezed,
    Object? list = freezed,
    Object? pagesize = freezed,
  }) {
    return _then(_$TransactionDetailModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      ymoneys: freezed == ymoneys
          ? _value.ymoneys
          : ymoneys // ignore: cast_nullable_to_non_nullable
              as String?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as TransactionDetailList?,
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionDetailModelImpl implements _TransactionDetailModel {
  const _$TransactionDetailModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "Ymoneys") this.ymoneys,
      @JsonKey(name: "list") this.list,
      @JsonKey(name: "pagesize") this.pagesize});

  factory _$TransactionDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionDetailModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "Ymoneys")
  final String? ymoneys;
  @override
  @JsonKey(name: "list")
  final TransactionDetailList? list;
  @override
  @JsonKey(name: "pagesize")
  final int? pagesize;

  @override
  String toString() {
    return 'TransactionDetailModel(status: $status, ymoneys: $ymoneys, list: $list, pagesize: $pagesize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDetailModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.ymoneys, ymoneys) || other.ymoneys == ymoneys) &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.pagesize, pagesize) ||
                other.pagesize == pagesize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, ymoneys, list, pagesize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDetailModelImplCopyWith<_$TransactionDetailModelImpl>
      get copyWith => __$$TransactionDetailModelImplCopyWithImpl<
          _$TransactionDetailModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDetailModelImplToJson(
      this,
    );
  }
}

abstract class _TransactionDetailModel implements TransactionDetailModel {
  const factory _TransactionDetailModel(
          {@JsonKey(name: "status") final int? status,
          @JsonKey(name: "Ymoneys") final String? ymoneys,
          @JsonKey(name: "list") final TransactionDetailList? list,
          @JsonKey(name: "pagesize") final int? pagesize}) =
      _$TransactionDetailModelImpl;

  factory _TransactionDetailModel.fromJson(Map<String, dynamic> json) =
      _$TransactionDetailModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "Ymoneys")
  String? get ymoneys;
  @override
  @JsonKey(name: "list")
  TransactionDetailList? get list;
  @override
  @JsonKey(name: "pagesize")
  int? get pagesize;
  @override
  @JsonKey(ignore: true)
  _$$TransactionDetailModelImplCopyWith<_$TransactionDetailModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TransactionDetailList _$TransactionDetailListFromJson(
    Map<String, dynamic> json) {
  return _ListClass.fromJson(json);
}

/// @nodoc
mixin _$TransactionDetailList {
  @JsonKey(name: "current_page")
  int? get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<TransactionDetailItem>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "first_page_url")
  String? get firstPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "from")
  int? get from => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page")
  int? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: "last_page_url")
  String? get lastPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "next_page_url")
  String? get nextPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "path")
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "prev_page_url")
  String? get prevPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "to")
  int? get to => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDetailListCopyWith<TransactionDetailList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDetailListCopyWith<$Res> {
  factory $TransactionDetailListCopyWith(TransactionDetailList value,
          $Res Function(TransactionDetailList) then) =
      _$TransactionDetailListCopyWithImpl<$Res, TransactionDetailList>;
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<TransactionDetailItem>? data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      @JsonKey(name: "path") String? path,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "prev_page_url") String? prevPageUrl,
      @JsonKey(name: "to") int? to,
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class _$TransactionDetailListCopyWithImpl<$Res,
        $Val extends TransactionDetailList>
    implements $TransactionDetailListCopyWith<$Res> {
  _$TransactionDetailListCopyWithImpl(this._value, this._then);

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
              as List<TransactionDetailItem>?,
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
              as String?,
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
              as String?,
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
    implements $TransactionDetailListCopyWith<$Res> {
  factory _$$ListClassImplCopyWith(
          _$ListClassImpl value, $Res Function(_$ListClassImpl) then) =
      __$$ListClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "current_page") int? currentPage,
      @JsonKey(name: "data") List<TransactionDetailItem>? data,
      @JsonKey(name: "first_page_url") String? firstPageUrl,
      @JsonKey(name: "from") int? from,
      @JsonKey(name: "last_page") int? lastPage,
      @JsonKey(name: "last_page_url") String? lastPageUrl,
      @JsonKey(name: "next_page_url") String? nextPageUrl,
      @JsonKey(name: "path") String? path,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "prev_page_url") String? prevPageUrl,
      @JsonKey(name: "to") int? to,
      @JsonKey(name: "total") int? total});
}

/// @nodoc
class __$$ListClassImplCopyWithImpl<$Res>
    extends _$TransactionDetailListCopyWithImpl<$Res, _$ListClassImpl>
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
              as List<TransactionDetailItem>?,
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
              as String?,
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
              as String?,
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
      @JsonKey(name: "data") final List<TransactionDetailItem>? data,
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

  factory _$ListClassImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListClassImplFromJson(json);

  @override
  @JsonKey(name: "current_page")
  final int? currentPage;
  final List<TransactionDetailItem>? _data;
  @override
  @JsonKey(name: "data")
  List<TransactionDetailItem>? get data {
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
  final String? nextPageUrl;
  @override
  @JsonKey(name: "path")
  final String? path;
  @override
  @JsonKey(name: "per_page")
  final int? perPage;
  @override
  @JsonKey(name: "prev_page_url")
  final String? prevPageUrl;
  @override
  @JsonKey(name: "to")
  final int? to;
  @override
  @JsonKey(name: "total")
  final int? total;

  @override
  String toString() {
    return 'TransactionDetailList(currentPage: $currentPage, data: $data, firstPageUrl: $firstPageUrl, from: $from, lastPage: $lastPage, lastPageUrl: $lastPageUrl, nextPageUrl: $nextPageUrl, path: $path, perPage: $perPage, prevPageUrl: $prevPageUrl, to: $to, total: $total)';
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
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.prevPageUrl, prevPageUrl) ||
                other.prevPageUrl == prevPageUrl) &&
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
      nextPageUrl,
      path,
      perPage,
      prevPageUrl,
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

abstract class _ListClass implements TransactionDetailList {
  const factory _ListClass(
      {@JsonKey(name: "current_page") final int? currentPage,
      @JsonKey(name: "data") final List<TransactionDetailItem>? data,
      @JsonKey(name: "first_page_url") final String? firstPageUrl,
      @JsonKey(name: "from") final int? from,
      @JsonKey(name: "last_page") final int? lastPage,
      @JsonKey(name: "last_page_url") final String? lastPageUrl,
      @JsonKey(name: "next_page_url") final String? nextPageUrl,
      @JsonKey(name: "path") final String? path,
      @JsonKey(name: "per_page") final int? perPage,
      @JsonKey(name: "prev_page_url") final String? prevPageUrl,
      @JsonKey(name: "to") final int? to,
      @JsonKey(name: "total") final int? total}) = _$ListClassImpl;

  factory _ListClass.fromJson(Map<String, dynamic> json) =
      _$ListClassImpl.fromJson;

  @override
  @JsonKey(name: "current_page")
  int? get currentPage;
  @override
  @JsonKey(name: "data")
  List<TransactionDetailItem>? get data;
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
  String? get nextPageUrl;
  @override
  @JsonKey(name: "path")
  String? get path;
  @override
  @JsonKey(name: "per_page")
  int? get perPage;
  @override
  @JsonKey(name: "prev_page_url")
  String? get prevPageUrl;
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

TransactionDetailItem _$TransactionDetailItemFromJson(
    Map<String, dynamic> json) {
  return _TransactionDetailItem.fromJson(json);
}

/// @nodoc
mixin _$TransactionDetailItem {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_userid")
  int? get moneylogUserid => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_user")
  String? get moneylogUser => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_money")
  int? get moneylogMoney => throw _privateConstructorUsedError;
  @JsonKey(name: "danwei")
  String? get danwei => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_ip")
  String? get moneylogIp => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_status")
  String? get moneylogStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_type")
  String? get moneylogType => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_notice")
  String? get moneylogNotice => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_ext")
  dynamic get moneylogExt => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_houamount")
  int? get moneylogHouamount => throw _privateConstructorUsedError;
  @JsonKey(name: "moneylog_yuanamount")
  int? get moneylogYuanamount => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionDetailItemCopyWith<TransactionDetailItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDetailItemCopyWith<$Res> {
  factory $TransactionDetailItemCopyWith(TransactionDetailItem value,
          $Res Function(TransactionDetailItem) then) =
      _$TransactionDetailItemCopyWithImpl<$Res, TransactionDetailItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "moneylog_userid") int? moneylogUserid,
      @JsonKey(name: "moneylog_user") String? moneylogUser,
      @JsonKey(name: "moneylog_money") int? moneylogMoney,
      @JsonKey(name: "danwei") String? danwei,
      @JsonKey(name: "moneylog_ip") String? moneylogIp,
      @JsonKey(name: "moneylog_status") String? moneylogStatus,
      @JsonKey(name: "moneylog_type") String? moneylogType,
      @JsonKey(name: "moneylog_notice") String? moneylogNotice,
      @JsonKey(name: "moneylog_ext") dynamic moneylogExt,
      @JsonKey(name: "moneylog_houamount") int? moneylogHouamount,
      @JsonKey(name: "moneylog_yuanamount") int? moneylogYuanamount,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "date") String? date});
}

/// @nodoc
class _$TransactionDetailItemCopyWithImpl<$Res,
        $Val extends TransactionDetailItem>
    implements $TransactionDetailItemCopyWith<$Res> {
  _$TransactionDetailItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? moneylogUserid = freezed,
    Object? moneylogUser = freezed,
    Object? moneylogMoney = freezed,
    Object? danwei = freezed,
    Object? moneylogIp = freezed,
    Object? moneylogStatus = freezed,
    Object? moneylogType = freezed,
    Object? moneylogNotice = freezed,
    Object? moneylogExt = freezed,
    Object? moneylogHouamount = freezed,
    Object? moneylogYuanamount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      moneylogUserid: freezed == moneylogUserid
          ? _value.moneylogUserid
          : moneylogUserid // ignore: cast_nullable_to_non_nullable
              as int?,
      moneylogUser: freezed == moneylogUser
          ? _value.moneylogUser
          : moneylogUser // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogMoney: freezed == moneylogMoney
          ? _value.moneylogMoney
          : moneylogMoney // ignore: cast_nullable_to_non_nullable
              as int?,
      danwei: freezed == danwei
          ? _value.danwei
          : danwei // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogIp: freezed == moneylogIp
          ? _value.moneylogIp
          : moneylogIp // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogStatus: freezed == moneylogStatus
          ? _value.moneylogStatus
          : moneylogStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogType: freezed == moneylogType
          ? _value.moneylogType
          : moneylogType // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogNotice: freezed == moneylogNotice
          ? _value.moneylogNotice
          : moneylogNotice // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogExt: freezed == moneylogExt
          ? _value.moneylogExt
          : moneylogExt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      moneylogHouamount: freezed == moneylogHouamount
          ? _value.moneylogHouamount
          : moneylogHouamount // ignore: cast_nullable_to_non_nullable
              as int?,
      moneylogYuanamount: freezed == moneylogYuanamount
          ? _value.moneylogYuanamount
          : moneylogYuanamount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionDetailItemImplCopyWith<$Res>
    implements $TransactionDetailItemCopyWith<$Res> {
  factory _$$TransactionDetailItemImplCopyWith(
          _$TransactionDetailItemImpl value,
          $Res Function(_$TransactionDetailItemImpl) then) =
      __$$TransactionDetailItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "moneylog_userid") int? moneylogUserid,
      @JsonKey(name: "moneylog_user") String? moneylogUser,
      @JsonKey(name: "moneylog_money") int? moneylogMoney,
      @JsonKey(name: "danwei") String? danwei,
      @JsonKey(name: "moneylog_ip") String? moneylogIp,
      @JsonKey(name: "moneylog_status") String? moneylogStatus,
      @JsonKey(name: "moneylog_type") String? moneylogType,
      @JsonKey(name: "moneylog_notice") String? moneylogNotice,
      @JsonKey(name: "moneylog_ext") dynamic moneylogExt,
      @JsonKey(name: "moneylog_houamount") int? moneylogHouamount,
      @JsonKey(name: "moneylog_yuanamount") int? moneylogYuanamount,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "date") String? date});
}

/// @nodoc
class __$$TransactionDetailItemImplCopyWithImpl<$Res>
    extends _$TransactionDetailItemCopyWithImpl<$Res,
        _$TransactionDetailItemImpl>
    implements _$$TransactionDetailItemImplCopyWith<$Res> {
  __$$TransactionDetailItemImplCopyWithImpl(_$TransactionDetailItemImpl _value,
      $Res Function(_$TransactionDetailItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? moneylogUserid = freezed,
    Object? moneylogUser = freezed,
    Object? moneylogMoney = freezed,
    Object? danwei = freezed,
    Object? moneylogIp = freezed,
    Object? moneylogStatus = freezed,
    Object? moneylogType = freezed,
    Object? moneylogNotice = freezed,
    Object? moneylogExt = freezed,
    Object? moneylogHouamount = freezed,
    Object? moneylogYuanamount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? date = freezed,
  }) {
    return _then(_$TransactionDetailItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      moneylogUserid: freezed == moneylogUserid
          ? _value.moneylogUserid
          : moneylogUserid // ignore: cast_nullable_to_non_nullable
              as int?,
      moneylogUser: freezed == moneylogUser
          ? _value.moneylogUser
          : moneylogUser // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogMoney: freezed == moneylogMoney
          ? _value.moneylogMoney
          : moneylogMoney // ignore: cast_nullable_to_non_nullable
              as int?,
      danwei: freezed == danwei
          ? _value.danwei
          : danwei // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogIp: freezed == moneylogIp
          ? _value.moneylogIp
          : moneylogIp // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogStatus: freezed == moneylogStatus
          ? _value.moneylogStatus
          : moneylogStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogType: freezed == moneylogType
          ? _value.moneylogType
          : moneylogType // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogNotice: freezed == moneylogNotice
          ? _value.moneylogNotice
          : moneylogNotice // ignore: cast_nullable_to_non_nullable
              as String?,
      moneylogExt: freezed == moneylogExt
          ? _value.moneylogExt
          : moneylogExt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      moneylogHouamount: freezed == moneylogHouamount
          ? _value.moneylogHouamount
          : moneylogHouamount // ignore: cast_nullable_to_non_nullable
              as int?,
      moneylogYuanamount: freezed == moneylogYuanamount
          ? _value.moneylogYuanamount
          : moneylogYuanamount // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionDetailItemImpl implements _TransactionDetailItem {
  const _$TransactionDetailItemImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "moneylog_userid") this.moneylogUserid,
      @JsonKey(name: "moneylog_user") this.moneylogUser,
      @JsonKey(name: "moneylog_money") this.moneylogMoney,
      @JsonKey(name: "danwei") this.danwei,
      @JsonKey(name: "moneylog_ip") this.moneylogIp,
      @JsonKey(name: "moneylog_status") this.moneylogStatus,
      @JsonKey(name: "moneylog_type") this.moneylogType,
      @JsonKey(name: "moneylog_notice") this.moneylogNotice,
      @JsonKey(name: "moneylog_ext") this.moneylogExt,
      @JsonKey(name: "moneylog_houamount") this.moneylogHouamount,
      @JsonKey(name: "moneylog_yuanamount") this.moneylogYuanamount,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "date") this.date});

  factory _$TransactionDetailItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionDetailItemImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "moneylog_userid")
  final int? moneylogUserid;
  @override
  @JsonKey(name: "moneylog_user")
  final String? moneylogUser;
  @override
  @JsonKey(name: "moneylog_money")
  final int? moneylogMoney;
  @override
  @JsonKey(name: "danwei")
  final String? danwei;
  @override
  @JsonKey(name: "moneylog_ip")
  final String? moneylogIp;
  @override
  @JsonKey(name: "moneylog_status")
  final String? moneylogStatus;
  @override
  @JsonKey(name: "moneylog_type")
  final String? moneylogType;
  @override
  @JsonKey(name: "moneylog_notice")
  final String? moneylogNotice;
  @override
  @JsonKey(name: "moneylog_ext")
  final dynamic moneylogExt;
  @override
  @JsonKey(name: "moneylog_houamount")
  final int? moneylogHouamount;
  @override
  @JsonKey(name: "moneylog_yuanamount")
  final int? moneylogYuanamount;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "date")
  final String? date;

  @override
  String toString() {
    return 'TransactionDetailItem(id: $id, moneylogUserid: $moneylogUserid, moneylogUser: $moneylogUser, moneylogMoney: $moneylogMoney, danwei: $danwei, moneylogIp: $moneylogIp, moneylogStatus: $moneylogStatus, moneylogType: $moneylogType, moneylogNotice: $moneylogNotice, moneylogExt: $moneylogExt, moneylogHouamount: $moneylogHouamount, moneylogYuanamount: $moneylogYuanamount, createdAt: $createdAt, updatedAt: $updatedAt, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDetailItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.moneylogUserid, moneylogUserid) ||
                other.moneylogUserid == moneylogUserid) &&
            (identical(other.moneylogUser, moneylogUser) ||
                other.moneylogUser == moneylogUser) &&
            (identical(other.moneylogMoney, moneylogMoney) ||
                other.moneylogMoney == moneylogMoney) &&
            (identical(other.danwei, danwei) || other.danwei == danwei) &&
            (identical(other.moneylogIp, moneylogIp) ||
                other.moneylogIp == moneylogIp) &&
            (identical(other.moneylogStatus, moneylogStatus) ||
                other.moneylogStatus == moneylogStatus) &&
            (identical(other.moneylogType, moneylogType) ||
                other.moneylogType == moneylogType) &&
            (identical(other.moneylogNotice, moneylogNotice) ||
                other.moneylogNotice == moneylogNotice) &&
            const DeepCollectionEquality()
                .equals(other.moneylogExt, moneylogExt) &&
            (identical(other.moneylogHouamount, moneylogHouamount) ||
                other.moneylogHouamount == moneylogHouamount) &&
            (identical(other.moneylogYuanamount, moneylogYuanamount) ||
                other.moneylogYuanamount == moneylogYuanamount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      moneylogUserid,
      moneylogUser,
      moneylogMoney,
      danwei,
      moneylogIp,
      moneylogStatus,
      moneylogType,
      moneylogNotice,
      const DeepCollectionEquality().hash(moneylogExt),
      moneylogHouamount,
      moneylogYuanamount,
      createdAt,
      updatedAt,
      date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDetailItemImplCopyWith<_$TransactionDetailItemImpl>
      get copyWith => __$$TransactionDetailItemImplCopyWithImpl<
          _$TransactionDetailItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDetailItemImplToJson(
      this,
    );
  }
}

abstract class _TransactionDetailItem implements TransactionDetailItem {
  const factory _TransactionDetailItem(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "moneylog_userid") final int? moneylogUserid,
      @JsonKey(name: "moneylog_user") final String? moneylogUser,
      @JsonKey(name: "moneylog_money") final int? moneylogMoney,
      @JsonKey(name: "danwei") final String? danwei,
      @JsonKey(name: "moneylog_ip") final String? moneylogIp,
      @JsonKey(name: "moneylog_status") final String? moneylogStatus,
      @JsonKey(name: "moneylog_type") final String? moneylogType,
      @JsonKey(name: "moneylog_notice") final String? moneylogNotice,
      @JsonKey(name: "moneylog_ext") final dynamic moneylogExt,
      @JsonKey(name: "moneylog_houamount") final int? moneylogHouamount,
      @JsonKey(name: "moneylog_yuanamount") final int? moneylogYuanamount,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "date") final String? date}) = _$TransactionDetailItemImpl;

  factory _TransactionDetailItem.fromJson(Map<String, dynamic> json) =
      _$TransactionDetailItemImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "moneylog_userid")
  int? get moneylogUserid;
  @override
  @JsonKey(name: "moneylog_user")
  String? get moneylogUser;
  @override
  @JsonKey(name: "moneylog_money")
  int? get moneylogMoney;
  @override
  @JsonKey(name: "danwei")
  String? get danwei;
  @override
  @JsonKey(name: "moneylog_ip")
  String? get moneylogIp;
  @override
  @JsonKey(name: "moneylog_status")
  String? get moneylogStatus;
  @override
  @JsonKey(name: "moneylog_type")
  String? get moneylogType;
  @override
  @JsonKey(name: "moneylog_notice")
  String? get moneylogNotice;
  @override
  @JsonKey(name: "moneylog_ext")
  dynamic get moneylogExt;
  @override
  @JsonKey(name: "moneylog_houamount")
  int? get moneylogHouamount;
  @override
  @JsonKey(name: "moneylog_yuanamount")
  int? get moneylogYuanamount;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "date")
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$TransactionDetailItemImplCopyWith<_$TransactionDetailItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
