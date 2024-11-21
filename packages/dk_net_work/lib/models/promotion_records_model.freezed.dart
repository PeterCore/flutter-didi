// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_records_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PromotionRecordsModel _$PromotionRecordsModelFromJson(
    Map<String, dynamic> json) {
  return _PromotionRecordsModel.fromJson(json);
}

/// @nodoc
mixin _$PromotionRecordsModel {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "mtype")
  int? get mtype => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  PromotionRecordData? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  String? get list => throw _privateConstructorUsedError;
  @JsonKey(name: "pagesize")
  int? get pagesize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionRecordsModelCopyWith<PromotionRecordsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionRecordsModelCopyWith<$Res> {
  factory $PromotionRecordsModelCopyWith(PromotionRecordsModel value,
          $Res Function(PromotionRecordsModel) then) =
      _$PromotionRecordsModelCopyWithImpl<$Res, PromotionRecordsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "mtype") int? mtype,
      @JsonKey(name: "data") PromotionRecordData? data,
      @JsonKey(name: "list") String? list,
      @JsonKey(name: "pagesize") int? pagesize});

  $PromotionRecordDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PromotionRecordsModelCopyWithImpl<$Res,
        $Val extends PromotionRecordsModel>
    implements $PromotionRecordsModelCopyWith<$Res> {
  _$PromotionRecordsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? mtype = freezed,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PromotionRecordData?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as String?,
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PromotionRecordDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PromotionRecordDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PromotionRecordsModelImplCopyWith<$Res>
    implements $PromotionRecordsModelCopyWith<$Res> {
  factory _$$PromotionRecordsModelImplCopyWith(
          _$PromotionRecordsModelImpl value,
          $Res Function(_$PromotionRecordsModelImpl) then) =
      __$$PromotionRecordsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "mtype") int? mtype,
      @JsonKey(name: "data") PromotionRecordData? data,
      @JsonKey(name: "list") String? list,
      @JsonKey(name: "pagesize") int? pagesize});

  @override
  $PromotionRecordDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PromotionRecordsModelImplCopyWithImpl<$Res>
    extends _$PromotionRecordsModelCopyWithImpl<$Res,
        _$PromotionRecordsModelImpl>
    implements _$$PromotionRecordsModelImplCopyWith<$Res> {
  __$$PromotionRecordsModelImplCopyWithImpl(_$PromotionRecordsModelImpl _value,
      $Res Function(_$PromotionRecordsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? mtype = freezed,
    Object? data = freezed,
    Object? list = freezed,
    Object? pagesize = freezed,
  }) {
    return _then(_$PromotionRecordsModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      mtype: freezed == mtype
          ? _value.mtype
          : mtype // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PromotionRecordData?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as String?,
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionRecordsModelImpl implements _PromotionRecordsModel {
  const _$PromotionRecordsModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "mtype") this.mtype,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "list") this.list,
      @JsonKey(name: "pagesize") this.pagesize});

  factory _$PromotionRecordsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionRecordsModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "mtype")
  final int? mtype;
  @override
  @JsonKey(name: "data")
  final PromotionRecordData? data;
  @override
  @JsonKey(name: "list")
  final String? list;
  @override
  @JsonKey(name: "pagesize")
  final int? pagesize;

  @override
  String toString() {
    return 'PromotionRecordsModel(status: $status, mtype: $mtype, data: $data, list: $list, pagesize: $pagesize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionRecordsModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.mtype, mtype) || other.mtype == mtype) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.pagesize, pagesize) ||
                other.pagesize == pagesize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, mtype, data, list, pagesize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionRecordsModelImplCopyWith<_$PromotionRecordsModelImpl>
      get copyWith => __$$PromotionRecordsModelImplCopyWithImpl<
          _$PromotionRecordsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionRecordsModelImplToJson(
      this,
    );
  }
}

abstract class _PromotionRecordsModel implements PromotionRecordsModel {
  const factory _PromotionRecordsModel(
          {@JsonKey(name: "status") final int? status,
          @JsonKey(name: "mtype") final int? mtype,
          @JsonKey(name: "data") final PromotionRecordData? data,
          @JsonKey(name: "list") final String? list,
          @JsonKey(name: "pagesize") final int? pagesize}) =
      _$PromotionRecordsModelImpl;

  factory _PromotionRecordsModel.fromJson(Map<String, dynamic> json) =
      _$PromotionRecordsModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "mtype")
  int? get mtype;
  @override
  @JsonKey(name: "data")
  PromotionRecordData? get data;
  @override
  @JsonKey(name: "list")
  String? get list;
  @override
  @JsonKey(name: "pagesize")
  int? get pagesize;
  @override
  @JsonKey(ignore: true)
  _$$PromotionRecordsModelImplCopyWith<_$PromotionRecordsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PromotionRecordData _$PromotionRecordDataFromJson(Map<String, dynamic> json) {
  return _PromotionRecordData.fromJson(json);
}

/// @nodoc
mixin _$PromotionRecordData {
  @JsonKey(name: "onezrs")
  int? get onezrs => throw _privateConstructorUsedError;
  @JsonKey(name: "weifanhuibenjin")
  int? get weifanhuibenjin => throw _privateConstructorUsedError;
  @JsonKey(name: "daoqiguquan")
  int? get daoqiguquan => throw _privateConstructorUsedError;
  @JsonKey(name: "yuebao")
  int? get yuebao => throw _privateConstructorUsedError;
  @JsonKey(name: "ketixianjine")
  int? get ketixianjine => throw _privateConstructorUsedError;
  @JsonKey(name: "qiandaorenshu")
  int? get qiandaorenshu => throw _privateConstructorUsedError;
  @JsonKey(name: "team_total_withdraw")
  String? get teamTotalWithdraw => throw _privateConstructorUsedError;
  @JsonKey(name: "onetzrs")
  int? get onetzrs => throw _privateConstructorUsedError;
  @JsonKey(name: "onecz")
  String? get onecz => throw _privateConstructorUsedError;
  @JsonKey(name: "twouzrs")
  int? get twouzrs => throw _privateConstructorUsedError;
  @JsonKey(name: "twoucz")
  String? get twoucz => throw _privateConstructorUsedError;
  @JsonKey(name: "threezrs")
  int? get threezrs => throw _privateConstructorUsedError;
  @JsonKey(name: "threecz")
  String? get threecz => throw _privateConstructorUsedError;
  @JsonKey(name: "hebizrs")
  String? get hebizrs => throw _privateConstructorUsedError;
  @JsonKey(name: "hebicz")
  String? get hebicz => throw _privateConstructorUsedError;
  @JsonKey(name: "totlusdttx")
  String? get totlusdttx => throw _privateConstructorUsedError;
  @JsonKey(name: "totlusdtcz")
  String? get totlusdtcz => throw _privateConstructorUsedError;
  @JsonKey(name: "totltx")
  String? get totltx => throw _privateConstructorUsedError;
  @JsonKey(name: "totltzhuce")
  int? get totltzhuce => throw _privateConstructorUsedError;
  @JsonKey(name: "totlcz")
  String? get totlcz => throw _privateConstructorUsedError;
  @JsonKey(name: "totltzrs")
  int? get totltzrs => throw _privateConstructorUsedError;
  @JsonKey(name: "totltz")
  String? get totltz => throw _privateConstructorUsedError;
  @JsonKey(name: "tzone")
  int? get tzone => throw _privateConstructorUsedError;
  @JsonKey(name: "tztwo")
  int? get tztwo => throw _privateConstructorUsedError;
  @JsonKey(name: "tzthree")
  int? get tzthree => throw _privateConstructorUsedError;
  @JsonKey(name: "tzfour")
  int? get tzfour => throw _privateConstructorUsedError;
  @JsonKey(name: "tzfive")
  int? get tzfive => throw _privateConstructorUsedError;
  @JsonKey(name: "vip")
  int? get vip => throw _privateConstructorUsedError;
  @JsonKey(name: "totlejifen")
  int? get totlejifen => throw _privateConstructorUsedError;
  @JsonKey(name: "virtual")
  int? get virtual => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionRecordDataCopyWith<PromotionRecordData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionRecordDataCopyWith<$Res> {
  factory $PromotionRecordDataCopyWith(
          PromotionRecordData value, $Res Function(PromotionRecordData) then) =
      _$PromotionRecordDataCopyWithImpl<$Res, PromotionRecordData>;
  @useResult
  $Res call(
      {@JsonKey(name: "onezrs") int? onezrs,
      @JsonKey(name: "weifanhuibenjin") int? weifanhuibenjin,
      @JsonKey(name: "daoqiguquan") int? daoqiguquan,
      @JsonKey(name: "yuebao") int? yuebao,
      @JsonKey(name: "ketixianjine") int? ketixianjine,
      @JsonKey(name: "qiandaorenshu") int? qiandaorenshu,
      @JsonKey(name: "team_total_withdraw") String? teamTotalWithdraw,
      @JsonKey(name: "onetzrs") int? onetzrs,
      @JsonKey(name: "onecz") String? onecz,
      @JsonKey(name: "twouzrs") int? twouzrs,
      @JsonKey(name: "twoucz") String? twoucz,
      @JsonKey(name: "threezrs") int? threezrs,
      @JsonKey(name: "threecz") String? threecz,
      @JsonKey(name: "hebizrs") String? hebizrs,
      @JsonKey(name: "hebicz") String? hebicz,
      @JsonKey(name: "totlusdttx") String? totlusdttx,
      @JsonKey(name: "totlusdtcz") String? totlusdtcz,
      @JsonKey(name: "totltx") String? totltx,
      @JsonKey(name: "totltzhuce") int? totltzhuce,
      @JsonKey(name: "totlcz") String? totlcz,
      @JsonKey(name: "totltzrs") int? totltzrs,
      @JsonKey(name: "totltz") String? totltz,
      @JsonKey(name: "tzone") int? tzone,
      @JsonKey(name: "tztwo") int? tztwo,
      @JsonKey(name: "tzthree") int? tzthree,
      @JsonKey(name: "tzfour") int? tzfour,
      @JsonKey(name: "tzfive") int? tzfive,
      @JsonKey(name: "vip") int? vip,
      @JsonKey(name: "totlejifen") int? totlejifen,
      @JsonKey(name: "virtual") int? virtual});
}

/// @nodoc
class _$PromotionRecordDataCopyWithImpl<$Res, $Val extends PromotionRecordData>
    implements $PromotionRecordDataCopyWith<$Res> {
  _$PromotionRecordDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onezrs = freezed,
    Object? weifanhuibenjin = freezed,
    Object? daoqiguquan = freezed,
    Object? yuebao = freezed,
    Object? ketixianjine = freezed,
    Object? qiandaorenshu = freezed,
    Object? teamTotalWithdraw = freezed,
    Object? onetzrs = freezed,
    Object? onecz = freezed,
    Object? twouzrs = freezed,
    Object? twoucz = freezed,
    Object? threezrs = freezed,
    Object? threecz = freezed,
    Object? hebizrs = freezed,
    Object? hebicz = freezed,
    Object? totlusdttx = freezed,
    Object? totlusdtcz = freezed,
    Object? totltx = freezed,
    Object? totltzhuce = freezed,
    Object? totlcz = freezed,
    Object? totltzrs = freezed,
    Object? totltz = freezed,
    Object? tzone = freezed,
    Object? tztwo = freezed,
    Object? tzthree = freezed,
    Object? tzfour = freezed,
    Object? tzfive = freezed,
    Object? vip = freezed,
    Object? totlejifen = freezed,
    Object? virtual = freezed,
  }) {
    return _then(_value.copyWith(
      onezrs: freezed == onezrs
          ? _value.onezrs
          : onezrs // ignore: cast_nullable_to_non_nullable
              as int?,
      weifanhuibenjin: freezed == weifanhuibenjin
          ? _value.weifanhuibenjin
          : weifanhuibenjin // ignore: cast_nullable_to_non_nullable
              as int?,
      daoqiguquan: freezed == daoqiguquan
          ? _value.daoqiguquan
          : daoqiguquan // ignore: cast_nullable_to_non_nullable
              as int?,
      yuebao: freezed == yuebao
          ? _value.yuebao
          : yuebao // ignore: cast_nullable_to_non_nullable
              as int?,
      ketixianjine: freezed == ketixianjine
          ? _value.ketixianjine
          : ketixianjine // ignore: cast_nullable_to_non_nullable
              as int?,
      qiandaorenshu: freezed == qiandaorenshu
          ? _value.qiandaorenshu
          : qiandaorenshu // ignore: cast_nullable_to_non_nullable
              as int?,
      teamTotalWithdraw: freezed == teamTotalWithdraw
          ? _value.teamTotalWithdraw
          : teamTotalWithdraw // ignore: cast_nullable_to_non_nullable
              as String?,
      onetzrs: freezed == onetzrs
          ? _value.onetzrs
          : onetzrs // ignore: cast_nullable_to_non_nullable
              as int?,
      onecz: freezed == onecz
          ? _value.onecz
          : onecz // ignore: cast_nullable_to_non_nullable
              as String?,
      twouzrs: freezed == twouzrs
          ? _value.twouzrs
          : twouzrs // ignore: cast_nullable_to_non_nullable
              as int?,
      twoucz: freezed == twoucz
          ? _value.twoucz
          : twoucz // ignore: cast_nullable_to_non_nullable
              as String?,
      threezrs: freezed == threezrs
          ? _value.threezrs
          : threezrs // ignore: cast_nullable_to_non_nullable
              as int?,
      threecz: freezed == threecz
          ? _value.threecz
          : threecz // ignore: cast_nullable_to_non_nullable
              as String?,
      hebizrs: freezed == hebizrs
          ? _value.hebizrs
          : hebizrs // ignore: cast_nullable_to_non_nullable
              as String?,
      hebicz: freezed == hebicz
          ? _value.hebicz
          : hebicz // ignore: cast_nullable_to_non_nullable
              as String?,
      totlusdttx: freezed == totlusdttx
          ? _value.totlusdttx
          : totlusdttx // ignore: cast_nullable_to_non_nullable
              as String?,
      totlusdtcz: freezed == totlusdtcz
          ? _value.totlusdtcz
          : totlusdtcz // ignore: cast_nullable_to_non_nullable
              as String?,
      totltx: freezed == totltx
          ? _value.totltx
          : totltx // ignore: cast_nullable_to_non_nullable
              as String?,
      totltzhuce: freezed == totltzhuce
          ? _value.totltzhuce
          : totltzhuce // ignore: cast_nullable_to_non_nullable
              as int?,
      totlcz: freezed == totlcz
          ? _value.totlcz
          : totlcz // ignore: cast_nullable_to_non_nullable
              as String?,
      totltzrs: freezed == totltzrs
          ? _value.totltzrs
          : totltzrs // ignore: cast_nullable_to_non_nullable
              as int?,
      totltz: freezed == totltz
          ? _value.totltz
          : totltz // ignore: cast_nullable_to_non_nullable
              as String?,
      tzone: freezed == tzone
          ? _value.tzone
          : tzone // ignore: cast_nullable_to_non_nullable
              as int?,
      tztwo: freezed == tztwo
          ? _value.tztwo
          : tztwo // ignore: cast_nullable_to_non_nullable
              as int?,
      tzthree: freezed == tzthree
          ? _value.tzthree
          : tzthree // ignore: cast_nullable_to_non_nullable
              as int?,
      tzfour: freezed == tzfour
          ? _value.tzfour
          : tzfour // ignore: cast_nullable_to_non_nullable
              as int?,
      tzfive: freezed == tzfive
          ? _value.tzfive
          : tzfive // ignore: cast_nullable_to_non_nullable
              as int?,
      vip: freezed == vip
          ? _value.vip
          : vip // ignore: cast_nullable_to_non_nullable
              as int?,
      totlejifen: freezed == totlejifen
          ? _value.totlejifen
          : totlejifen // ignore: cast_nullable_to_non_nullable
              as int?,
      virtual: freezed == virtual
          ? _value.virtual
          : virtual // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromotionRecordDataImplCopyWith<$Res>
    implements $PromotionRecordDataCopyWith<$Res> {
  factory _$$PromotionRecordDataImplCopyWith(_$PromotionRecordDataImpl value,
          $Res Function(_$PromotionRecordDataImpl) then) =
      __$$PromotionRecordDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "onezrs") int? onezrs,
      @JsonKey(name: "weifanhuibenjin") int? weifanhuibenjin,
      @JsonKey(name: "daoqiguquan") int? daoqiguquan,
      @JsonKey(name: "yuebao") int? yuebao,
      @JsonKey(name: "ketixianjine") int? ketixianjine,
      @JsonKey(name: "qiandaorenshu") int? qiandaorenshu,
      @JsonKey(name: "team_total_withdraw") String? teamTotalWithdraw,
      @JsonKey(name: "onetzrs") int? onetzrs,
      @JsonKey(name: "onecz") String? onecz,
      @JsonKey(name: "twouzrs") int? twouzrs,
      @JsonKey(name: "twoucz") String? twoucz,
      @JsonKey(name: "threezrs") int? threezrs,
      @JsonKey(name: "threecz") String? threecz,
      @JsonKey(name: "hebizrs") String? hebizrs,
      @JsonKey(name: "hebicz") String? hebicz,
      @JsonKey(name: "totlusdttx") String? totlusdttx,
      @JsonKey(name: "totlusdtcz") String? totlusdtcz,
      @JsonKey(name: "totltx") String? totltx,
      @JsonKey(name: "totltzhuce") int? totltzhuce,
      @JsonKey(name: "totlcz") String? totlcz,
      @JsonKey(name: "totltzrs") int? totltzrs,
      @JsonKey(name: "totltz") String? totltz,
      @JsonKey(name: "tzone") int? tzone,
      @JsonKey(name: "tztwo") int? tztwo,
      @JsonKey(name: "tzthree") int? tzthree,
      @JsonKey(name: "tzfour") int? tzfour,
      @JsonKey(name: "tzfive") int? tzfive,
      @JsonKey(name: "vip") int? vip,
      @JsonKey(name: "totlejifen") int? totlejifen,
      @JsonKey(name: "virtual") int? virtual});
}

/// @nodoc
class __$$PromotionRecordDataImplCopyWithImpl<$Res>
    extends _$PromotionRecordDataCopyWithImpl<$Res, _$PromotionRecordDataImpl>
    implements _$$PromotionRecordDataImplCopyWith<$Res> {
  __$$PromotionRecordDataImplCopyWithImpl(_$PromotionRecordDataImpl _value,
      $Res Function(_$PromotionRecordDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onezrs = freezed,
    Object? weifanhuibenjin = freezed,
    Object? daoqiguquan = freezed,
    Object? yuebao = freezed,
    Object? ketixianjine = freezed,
    Object? qiandaorenshu = freezed,
    Object? teamTotalWithdraw = freezed,
    Object? onetzrs = freezed,
    Object? onecz = freezed,
    Object? twouzrs = freezed,
    Object? twoucz = freezed,
    Object? threezrs = freezed,
    Object? threecz = freezed,
    Object? hebizrs = freezed,
    Object? hebicz = freezed,
    Object? totlusdttx = freezed,
    Object? totlusdtcz = freezed,
    Object? totltx = freezed,
    Object? totltzhuce = freezed,
    Object? totlcz = freezed,
    Object? totltzrs = freezed,
    Object? totltz = freezed,
    Object? tzone = freezed,
    Object? tztwo = freezed,
    Object? tzthree = freezed,
    Object? tzfour = freezed,
    Object? tzfive = freezed,
    Object? vip = freezed,
    Object? totlejifen = freezed,
    Object? virtual = freezed,
  }) {
    return _then(_$PromotionRecordDataImpl(
      onezrs: freezed == onezrs
          ? _value.onezrs
          : onezrs // ignore: cast_nullable_to_non_nullable
              as int?,
      weifanhuibenjin: freezed == weifanhuibenjin
          ? _value.weifanhuibenjin
          : weifanhuibenjin // ignore: cast_nullable_to_non_nullable
              as int?,
      daoqiguquan: freezed == daoqiguquan
          ? _value.daoqiguquan
          : daoqiguquan // ignore: cast_nullable_to_non_nullable
              as int?,
      yuebao: freezed == yuebao
          ? _value.yuebao
          : yuebao // ignore: cast_nullable_to_non_nullable
              as int?,
      ketixianjine: freezed == ketixianjine
          ? _value.ketixianjine
          : ketixianjine // ignore: cast_nullable_to_non_nullable
              as int?,
      qiandaorenshu: freezed == qiandaorenshu
          ? _value.qiandaorenshu
          : qiandaorenshu // ignore: cast_nullable_to_non_nullable
              as int?,
      teamTotalWithdraw: freezed == teamTotalWithdraw
          ? _value.teamTotalWithdraw
          : teamTotalWithdraw // ignore: cast_nullable_to_non_nullable
              as String?,
      onetzrs: freezed == onetzrs
          ? _value.onetzrs
          : onetzrs // ignore: cast_nullable_to_non_nullable
              as int?,
      onecz: freezed == onecz
          ? _value.onecz
          : onecz // ignore: cast_nullable_to_non_nullable
              as String?,
      twouzrs: freezed == twouzrs
          ? _value.twouzrs
          : twouzrs // ignore: cast_nullable_to_non_nullable
              as int?,
      twoucz: freezed == twoucz
          ? _value.twoucz
          : twoucz // ignore: cast_nullable_to_non_nullable
              as String?,
      threezrs: freezed == threezrs
          ? _value.threezrs
          : threezrs // ignore: cast_nullable_to_non_nullable
              as int?,
      threecz: freezed == threecz
          ? _value.threecz
          : threecz // ignore: cast_nullable_to_non_nullable
              as String?,
      hebizrs: freezed == hebizrs
          ? _value.hebizrs
          : hebizrs // ignore: cast_nullable_to_non_nullable
              as String?,
      hebicz: freezed == hebicz
          ? _value.hebicz
          : hebicz // ignore: cast_nullable_to_non_nullable
              as String?,
      totlusdttx: freezed == totlusdttx
          ? _value.totlusdttx
          : totlusdttx // ignore: cast_nullable_to_non_nullable
              as String?,
      totlusdtcz: freezed == totlusdtcz
          ? _value.totlusdtcz
          : totlusdtcz // ignore: cast_nullable_to_non_nullable
              as String?,
      totltx: freezed == totltx
          ? _value.totltx
          : totltx // ignore: cast_nullable_to_non_nullable
              as String?,
      totltzhuce: freezed == totltzhuce
          ? _value.totltzhuce
          : totltzhuce // ignore: cast_nullable_to_non_nullable
              as int?,
      totlcz: freezed == totlcz
          ? _value.totlcz
          : totlcz // ignore: cast_nullable_to_non_nullable
              as String?,
      totltzrs: freezed == totltzrs
          ? _value.totltzrs
          : totltzrs // ignore: cast_nullable_to_non_nullable
              as int?,
      totltz: freezed == totltz
          ? _value.totltz
          : totltz // ignore: cast_nullable_to_non_nullable
              as String?,
      tzone: freezed == tzone
          ? _value.tzone
          : tzone // ignore: cast_nullable_to_non_nullable
              as int?,
      tztwo: freezed == tztwo
          ? _value.tztwo
          : tztwo // ignore: cast_nullable_to_non_nullable
              as int?,
      tzthree: freezed == tzthree
          ? _value.tzthree
          : tzthree // ignore: cast_nullable_to_non_nullable
              as int?,
      tzfour: freezed == tzfour
          ? _value.tzfour
          : tzfour // ignore: cast_nullable_to_non_nullable
              as int?,
      tzfive: freezed == tzfive
          ? _value.tzfive
          : tzfive // ignore: cast_nullable_to_non_nullable
              as int?,
      vip: freezed == vip
          ? _value.vip
          : vip // ignore: cast_nullable_to_non_nullable
              as int?,
      totlejifen: freezed == totlejifen
          ? _value.totlejifen
          : totlejifen // ignore: cast_nullable_to_non_nullable
              as int?,
      virtual: freezed == virtual
          ? _value.virtual
          : virtual // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionRecordDataImpl implements _PromotionRecordData {
  const _$PromotionRecordDataImpl(
      {@JsonKey(name: "onezrs") this.onezrs,
      @JsonKey(name: "weifanhuibenjin") this.weifanhuibenjin,
      @JsonKey(name: "daoqiguquan") this.daoqiguquan,
      @JsonKey(name: "yuebao") this.yuebao,
      @JsonKey(name: "ketixianjine") this.ketixianjine,
      @JsonKey(name: "qiandaorenshu") this.qiandaorenshu,
      @JsonKey(name: "team_total_withdraw") this.teamTotalWithdraw,
      @JsonKey(name: "onetzrs") this.onetzrs,
      @JsonKey(name: "onecz") this.onecz,
      @JsonKey(name: "twouzrs") this.twouzrs,
      @JsonKey(name: "twoucz") this.twoucz,
      @JsonKey(name: "threezrs") this.threezrs,
      @JsonKey(name: "threecz") this.threecz,
      @JsonKey(name: "hebizrs") this.hebizrs,
      @JsonKey(name: "hebicz") this.hebicz,
      @JsonKey(name: "totlusdttx") this.totlusdttx,
      @JsonKey(name: "totlusdtcz") this.totlusdtcz,
      @JsonKey(name: "totltx") this.totltx,
      @JsonKey(name: "totltzhuce") this.totltzhuce,
      @JsonKey(name: "totlcz") this.totlcz,
      @JsonKey(name: "totltzrs") this.totltzrs,
      @JsonKey(name: "totltz") this.totltz,
      @JsonKey(name: "tzone") this.tzone,
      @JsonKey(name: "tztwo") this.tztwo,
      @JsonKey(name: "tzthree") this.tzthree,
      @JsonKey(name: "tzfour") this.tzfour,
      @JsonKey(name: "tzfive") this.tzfive,
      @JsonKey(name: "vip") this.vip,
      @JsonKey(name: "totlejifen") this.totlejifen,
      @JsonKey(name: "virtual") this.virtual});

  factory _$PromotionRecordDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionRecordDataImplFromJson(json);

  @override
  @JsonKey(name: "onezrs")
  final int? onezrs;
  @override
  @JsonKey(name: "weifanhuibenjin")
  final int? weifanhuibenjin;
  @override
  @JsonKey(name: "daoqiguquan")
  final int? daoqiguquan;
  @override
  @JsonKey(name: "yuebao")
  final int? yuebao;
  @override
  @JsonKey(name: "ketixianjine")
  final int? ketixianjine;
  @override
  @JsonKey(name: "qiandaorenshu")
  final int? qiandaorenshu;
  @override
  @JsonKey(name: "team_total_withdraw")
  final String? teamTotalWithdraw;
  @override
  @JsonKey(name: "onetzrs")
  final int? onetzrs;
  @override
  @JsonKey(name: "onecz")
  final String? onecz;
  @override
  @JsonKey(name: "twouzrs")
  final int? twouzrs;
  @override
  @JsonKey(name: "twoucz")
  final String? twoucz;
  @override
  @JsonKey(name: "threezrs")
  final int? threezrs;
  @override
  @JsonKey(name: "threecz")
  final String? threecz;
  @override
  @JsonKey(name: "hebizrs")
  final String? hebizrs;
  @override
  @JsonKey(name: "hebicz")
  final String? hebicz;
  @override
  @JsonKey(name: "totlusdttx")
  final String? totlusdttx;
  @override
  @JsonKey(name: "totlusdtcz")
  final String? totlusdtcz;
  @override
  @JsonKey(name: "totltx")
  final String? totltx;
  @override
  @JsonKey(name: "totltzhuce")
  final int? totltzhuce;
  @override
  @JsonKey(name: "totlcz")
  final String? totlcz;
  @override
  @JsonKey(name: "totltzrs")
  final int? totltzrs;
  @override
  @JsonKey(name: "totltz")
  final String? totltz;
  @override
  @JsonKey(name: "tzone")
  final int? tzone;
  @override
  @JsonKey(name: "tztwo")
  final int? tztwo;
  @override
  @JsonKey(name: "tzthree")
  final int? tzthree;
  @override
  @JsonKey(name: "tzfour")
  final int? tzfour;
  @override
  @JsonKey(name: "tzfive")
  final int? tzfive;
  @override
  @JsonKey(name: "vip")
  final int? vip;
  @override
  @JsonKey(name: "totlejifen")
  final int? totlejifen;
  @override
  @JsonKey(name: "virtual")
  final int? virtual;

  @override
  String toString() {
    return 'PromotionRecordData(onezrs: $onezrs, weifanhuibenjin: $weifanhuibenjin, daoqiguquan: $daoqiguquan, yuebao: $yuebao, ketixianjine: $ketixianjine, qiandaorenshu: $qiandaorenshu, teamTotalWithdraw: $teamTotalWithdraw, onetzrs: $onetzrs, onecz: $onecz, twouzrs: $twouzrs, twoucz: $twoucz, threezrs: $threezrs, threecz: $threecz, hebizrs: $hebizrs, hebicz: $hebicz, totlusdttx: $totlusdttx, totlusdtcz: $totlusdtcz, totltx: $totltx, totltzhuce: $totltzhuce, totlcz: $totlcz, totltzrs: $totltzrs, totltz: $totltz, tzone: $tzone, tztwo: $tztwo, tzthree: $tzthree, tzfour: $tzfour, tzfive: $tzfive, vip: $vip, totlejifen: $totlejifen, virtual: $virtual)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionRecordDataImpl &&
            (identical(other.onezrs, onezrs) || other.onezrs == onezrs) &&
            (identical(other.weifanhuibenjin, weifanhuibenjin) ||
                other.weifanhuibenjin == weifanhuibenjin) &&
            (identical(other.daoqiguquan, daoqiguquan) ||
                other.daoqiguquan == daoqiguquan) &&
            (identical(other.yuebao, yuebao) || other.yuebao == yuebao) &&
            (identical(other.ketixianjine, ketixianjine) ||
                other.ketixianjine == ketixianjine) &&
            (identical(other.qiandaorenshu, qiandaorenshu) ||
                other.qiandaorenshu == qiandaorenshu) &&
            (identical(other.teamTotalWithdraw, teamTotalWithdraw) ||
                other.teamTotalWithdraw == teamTotalWithdraw) &&
            (identical(other.onetzrs, onetzrs) || other.onetzrs == onetzrs) &&
            (identical(other.onecz, onecz) || other.onecz == onecz) &&
            (identical(other.twouzrs, twouzrs) || other.twouzrs == twouzrs) &&
            (identical(other.twoucz, twoucz) || other.twoucz == twoucz) &&
            (identical(other.threezrs, threezrs) ||
                other.threezrs == threezrs) &&
            (identical(other.threecz, threecz) || other.threecz == threecz) &&
            (identical(other.hebizrs, hebizrs) || other.hebizrs == hebizrs) &&
            (identical(other.hebicz, hebicz) || other.hebicz == hebicz) &&
            (identical(other.totlusdttx, totlusdttx) ||
                other.totlusdttx == totlusdttx) &&
            (identical(other.totlusdtcz, totlusdtcz) ||
                other.totlusdtcz == totlusdtcz) &&
            (identical(other.totltx, totltx) || other.totltx == totltx) &&
            (identical(other.totltzhuce, totltzhuce) ||
                other.totltzhuce == totltzhuce) &&
            (identical(other.totlcz, totlcz) || other.totlcz == totlcz) &&
            (identical(other.totltzrs, totltzrs) ||
                other.totltzrs == totltzrs) &&
            (identical(other.totltz, totltz) || other.totltz == totltz) &&
            (identical(other.tzone, tzone) || other.tzone == tzone) &&
            (identical(other.tztwo, tztwo) || other.tztwo == tztwo) &&
            (identical(other.tzthree, tzthree) || other.tzthree == tzthree) &&
            (identical(other.tzfour, tzfour) || other.tzfour == tzfour) &&
            (identical(other.tzfive, tzfive) || other.tzfive == tzfive) &&
            (identical(other.vip, vip) || other.vip == vip) &&
            (identical(other.totlejifen, totlejifen) ||
                other.totlejifen == totlejifen) &&
            (identical(other.virtual, virtual) || other.virtual == virtual));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        onezrs,
        weifanhuibenjin,
        daoqiguquan,
        yuebao,
        ketixianjine,
        qiandaorenshu,
        teamTotalWithdraw,
        onetzrs,
        onecz,
        twouzrs,
        twoucz,
        threezrs,
        threecz,
        hebizrs,
        hebicz,
        totlusdttx,
        totlusdtcz,
        totltx,
        totltzhuce,
        totlcz,
        totltzrs,
        totltz,
        tzone,
        tztwo,
        tzthree,
        tzfour,
        tzfive,
        vip,
        totlejifen,
        virtual
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionRecordDataImplCopyWith<_$PromotionRecordDataImpl> get copyWith =>
      __$$PromotionRecordDataImplCopyWithImpl<_$PromotionRecordDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionRecordDataImplToJson(
      this,
    );
  }
}

abstract class _PromotionRecordData implements PromotionRecordData {
  const factory _PromotionRecordData(
          {@JsonKey(name: "onezrs") final int? onezrs,
          @JsonKey(name: "weifanhuibenjin") final int? weifanhuibenjin,
          @JsonKey(name: "daoqiguquan") final int? daoqiguquan,
          @JsonKey(name: "yuebao") final int? yuebao,
          @JsonKey(name: "ketixianjine") final int? ketixianjine,
          @JsonKey(name: "qiandaorenshu") final int? qiandaorenshu,
          @JsonKey(name: "team_total_withdraw") final String? teamTotalWithdraw,
          @JsonKey(name: "onetzrs") final int? onetzrs,
          @JsonKey(name: "onecz") final String? onecz,
          @JsonKey(name: "twouzrs") final int? twouzrs,
          @JsonKey(name: "twoucz") final String? twoucz,
          @JsonKey(name: "threezrs") final int? threezrs,
          @JsonKey(name: "threecz") final String? threecz,
          @JsonKey(name: "hebizrs") final String? hebizrs,
          @JsonKey(name: "hebicz") final String? hebicz,
          @JsonKey(name: "totlusdttx") final String? totlusdttx,
          @JsonKey(name: "totlusdtcz") final String? totlusdtcz,
          @JsonKey(name: "totltx") final String? totltx,
          @JsonKey(name: "totltzhuce") final int? totltzhuce,
          @JsonKey(name: "totlcz") final String? totlcz,
          @JsonKey(name: "totltzrs") final int? totltzrs,
          @JsonKey(name: "totltz") final String? totltz,
          @JsonKey(name: "tzone") final int? tzone,
          @JsonKey(name: "tztwo") final int? tztwo,
          @JsonKey(name: "tzthree") final int? tzthree,
          @JsonKey(name: "tzfour") final int? tzfour,
          @JsonKey(name: "tzfive") final int? tzfive,
          @JsonKey(name: "vip") final int? vip,
          @JsonKey(name: "totlejifen") final int? totlejifen,
          @JsonKey(name: "virtual") final int? virtual}) =
      _$PromotionRecordDataImpl;

  factory _PromotionRecordData.fromJson(Map<String, dynamic> json) =
      _$PromotionRecordDataImpl.fromJson;

  @override
  @JsonKey(name: "onezrs")
  int? get onezrs;
  @override
  @JsonKey(name: "weifanhuibenjin")
  int? get weifanhuibenjin;
  @override
  @JsonKey(name: "daoqiguquan")
  int? get daoqiguquan;
  @override
  @JsonKey(name: "yuebao")
  int? get yuebao;
  @override
  @JsonKey(name: "ketixianjine")
  int? get ketixianjine;
  @override
  @JsonKey(name: "qiandaorenshu")
  int? get qiandaorenshu;
  @override
  @JsonKey(name: "team_total_withdraw")
  String? get teamTotalWithdraw;
  @override
  @JsonKey(name: "onetzrs")
  int? get onetzrs;
  @override
  @JsonKey(name: "onecz")
  String? get onecz;
  @override
  @JsonKey(name: "twouzrs")
  int? get twouzrs;
  @override
  @JsonKey(name: "twoucz")
  String? get twoucz;
  @override
  @JsonKey(name: "threezrs")
  int? get threezrs;
  @override
  @JsonKey(name: "threecz")
  String? get threecz;
  @override
  @JsonKey(name: "hebizrs")
  String? get hebizrs;
  @override
  @JsonKey(name: "hebicz")
  String? get hebicz;
  @override
  @JsonKey(name: "totlusdttx")
  String? get totlusdttx;
  @override
  @JsonKey(name: "totlusdtcz")
  String? get totlusdtcz;
  @override
  @JsonKey(name: "totltx")
  String? get totltx;
  @override
  @JsonKey(name: "totltzhuce")
  int? get totltzhuce;
  @override
  @JsonKey(name: "totlcz")
  String? get totlcz;
  @override
  @JsonKey(name: "totltzrs")
  int? get totltzrs;
  @override
  @JsonKey(name: "totltz")
  String? get totltz;
  @override
  @JsonKey(name: "tzone")
  int? get tzone;
  @override
  @JsonKey(name: "tztwo")
  int? get tztwo;
  @override
  @JsonKey(name: "tzthree")
  int? get tzthree;
  @override
  @JsonKey(name: "tzfour")
  int? get tzfour;
  @override
  @JsonKey(name: "tzfive")
  int? get tzfive;
  @override
  @JsonKey(name: "vip")
  int? get vip;
  @override
  @JsonKey(name: "totlejifen")
  int? get totlejifen;
  @override
  @JsonKey(name: "virtual")
  int? get virtual;
  @override
  @JsonKey(ignore: true)
  _$$PromotionRecordDataImplCopyWith<_$PromotionRecordDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
