// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_contract_detail_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoanContractDetailInfoModel _$LoanContractDetailInfoModelFromJson(
    Map<String, dynamic> json) {
  return _LoanContractDetailInfoModel.fromJson(json);
}

/// @nodoc
mixin _$LoanContractDetailInfoModel {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  String? get msg => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  LoanContractDetailData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoanContractDetailInfoModelCopyWith<LoanContractDetailInfoModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanContractDetailInfoModelCopyWith<$Res> {
  factory $LoanContractDetailInfoModelCopyWith(
          LoanContractDetailInfoModel value,
          $Res Function(LoanContractDetailInfoModel) then) =
      _$LoanContractDetailInfoModelCopyWithImpl<$Res,
          LoanContractDetailInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "data") LoanContractDetailData? data});

  $LoanContractDetailDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LoanContractDetailInfoModelCopyWithImpl<$Res,
        $Val extends LoanContractDetailInfoModel>
    implements $LoanContractDetailInfoModelCopyWith<$Res> {
  _$LoanContractDetailInfoModelCopyWithImpl(this._value, this._then);

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
              as LoanContractDetailData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoanContractDetailDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LoanContractDetailDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoanContractDetailInfoModelImplCopyWith<$Res>
    implements $LoanContractDetailInfoModelCopyWith<$Res> {
  factory _$$LoanContractDetailInfoModelImplCopyWith(
          _$LoanContractDetailInfoModelImpl value,
          $Res Function(_$LoanContractDetailInfoModelImpl) then) =
      __$$LoanContractDetailInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "data") LoanContractDetailData? data});

  @override
  $LoanContractDetailDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$LoanContractDetailInfoModelImplCopyWithImpl<$Res>
    extends _$LoanContractDetailInfoModelCopyWithImpl<$Res,
        _$LoanContractDetailInfoModelImpl>
    implements _$$LoanContractDetailInfoModelImplCopyWith<$Res> {
  __$$LoanContractDetailInfoModelImplCopyWithImpl(
      _$LoanContractDetailInfoModelImpl _value,
      $Res Function(_$LoanContractDetailInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_$LoanContractDetailInfoModelImpl(
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
              as LoanContractDetailData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoanContractDetailInfoModelImpl
    implements _LoanContractDetailInfoModel {
  const _$LoanContractDetailInfoModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "msg") this.msg,
      @JsonKey(name: "data") this.data});

  factory _$LoanContractDetailInfoModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LoanContractDetailInfoModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "msg")
  final String? msg;
  @override
  @JsonKey(name: "data")
  final LoanContractDetailData? data;

  @override
  String toString() {
    return 'LoanContractDetailInfoModel(status: $status, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanContractDetailInfoModelImpl &&
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
  _$$LoanContractDetailInfoModelImplCopyWith<_$LoanContractDetailInfoModelImpl>
      get copyWith => __$$LoanContractDetailInfoModelImplCopyWithImpl<
          _$LoanContractDetailInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanContractDetailInfoModelImplToJson(
      this,
    );
  }
}

abstract class _LoanContractDetailInfoModel
    implements LoanContractDetailInfoModel {
  const factory _LoanContractDetailInfoModel(
          {@JsonKey(name: "status") final int? status,
          @JsonKey(name: "msg") final String? msg,
          @JsonKey(name: "data") final LoanContractDetailData? data}) =
      _$LoanContractDetailInfoModelImpl;

  factory _LoanContractDetailInfoModel.fromJson(Map<String, dynamic> json) =
      _$LoanContractDetailInfoModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "msg")
  String? get msg;
  @override
  @JsonKey(name: "data")
  LoanContractDetailData? get data;
  @override
  @JsonKey(ignore: true)
  _$$LoanContractDetailInfoModelImplCopyWith<_$LoanContractDetailInfoModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LoanContractDetailData _$LoanContractDetailDataFromJson(
    Map<String, dynamic> json) {
  return _LoanContractDetailData.fromJson(json);
}

/// @nodoc
mixin _$LoanContractDetailData {
  @JsonKey(name: "number_amount")
  double? get numberAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userid")
  int? get userid => throw _privateConstructorUsedError;
  @JsonKey(name: "bianhao")
  String? get bianhao => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "number")
  String? get number => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "mark")
  String? get mark => throw _privateConstructorUsedError;
  @JsonKey(name: "rate")
  int? get rate => throw _privateConstructorUsedError;
  @JsonKey(name: "sign_img")
  String? get signImg => throw _privateConstructorUsedError;
  @JsonKey(name: "CompanyLong")
  String? get companyLong => throw _privateConstructorUsedError;
  @JsonKey(name: "xm")
  String? get xm => throw _privateConstructorUsedError;
  @JsonKey(name: "sfz")
  String? get sfz => throw _privateConstructorUsedError;
  @JsonKey(name: "hetong")
  String? get hetong => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoanContractDetailDataCopyWith<LoanContractDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanContractDetailDataCopyWith<$Res> {
  factory $LoanContractDetailDataCopyWith(LoanContractDetailData value,
          $Res Function(LoanContractDetailData) then) =
      _$LoanContractDetailDataCopyWithImpl<$Res, LoanContractDetailData>;
  @useResult
  $Res call(
      {@JsonKey(name: "number_amount") double? numberAmount,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "userid") int? userid,
      @JsonKey(name: "bianhao") String? bianhao,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "number") String? number,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "mark") String? mark,
      @JsonKey(name: "rate") int? rate,
      @JsonKey(name: "sign_img") String? signImg,
      @JsonKey(name: "CompanyLong") String? companyLong,
      @JsonKey(name: "xm") String? xm,
      @JsonKey(name: "sfz") String? sfz,
      @JsonKey(name: "hetong") String? hetong,
      @JsonKey(name: "content") String? content});
}

/// @nodoc
class _$LoanContractDetailDataCopyWithImpl<$Res,
        $Val extends LoanContractDetailData>
    implements $LoanContractDetailDataCopyWith<$Res> {
  _$LoanContractDetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberAmount = freezed,
    Object? id = freezed,
    Object? userid = freezed,
    Object? bianhao = freezed,
    Object? username = freezed,
    Object? number = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? mark = freezed,
    Object? rate = freezed,
    Object? signImg = freezed,
    Object? companyLong = freezed,
    Object? xm = freezed,
    Object? sfz = freezed,
    Object? hetong = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      numberAmount: freezed == numberAmount
          ? _value.numberAmount
          : numberAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int?,
      bianhao: freezed == bianhao
          ? _value.bianhao
          : bianhao // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mark: freezed == mark
          ? _value.mark
          : mark // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      signImg: freezed == signImg
          ? _value.signImg
          : signImg // ignore: cast_nullable_to_non_nullable
              as String?,
      companyLong: freezed == companyLong
          ? _value.companyLong
          : companyLong // ignore: cast_nullable_to_non_nullable
              as String?,
      xm: freezed == xm
          ? _value.xm
          : xm // ignore: cast_nullable_to_non_nullable
              as String?,
      sfz: freezed == sfz
          ? _value.sfz
          : sfz // ignore: cast_nullable_to_non_nullable
              as String?,
      hetong: freezed == hetong
          ? _value.hetong
          : hetong // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoanContractDetailDataImplCopyWith<$Res>
    implements $LoanContractDetailDataCopyWith<$Res> {
  factory _$$LoanContractDetailDataImplCopyWith(
          _$LoanContractDetailDataImpl value,
          $Res Function(_$LoanContractDetailDataImpl) then) =
      __$$LoanContractDetailDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "number_amount") double? numberAmount,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "userid") int? userid,
      @JsonKey(name: "bianhao") String? bianhao,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "number") String? number,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "mark") String? mark,
      @JsonKey(name: "rate") int? rate,
      @JsonKey(name: "sign_img") String? signImg,
      @JsonKey(name: "CompanyLong") String? companyLong,
      @JsonKey(name: "xm") String? xm,
      @JsonKey(name: "sfz") String? sfz,
      @JsonKey(name: "hetong") String? hetong,
      @JsonKey(name: "content") String? content});
}

/// @nodoc
class __$$LoanContractDetailDataImplCopyWithImpl<$Res>
    extends _$LoanContractDetailDataCopyWithImpl<$Res,
        _$LoanContractDetailDataImpl>
    implements _$$LoanContractDetailDataImplCopyWith<$Res> {
  __$$LoanContractDetailDataImplCopyWithImpl(
      _$LoanContractDetailDataImpl _value,
      $Res Function(_$LoanContractDetailDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberAmount = freezed,
    Object? id = freezed,
    Object? userid = freezed,
    Object? bianhao = freezed,
    Object? username = freezed,
    Object? number = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? mark = freezed,
    Object? rate = freezed,
    Object? signImg = freezed,
    Object? companyLong = freezed,
    Object? xm = freezed,
    Object? sfz = freezed,
    Object? hetong = freezed,
    Object? content = freezed,
  }) {
    return _then(_$LoanContractDetailDataImpl(
      numberAmount: freezed == numberAmount
          ? _value.numberAmount
          : numberAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int?,
      bianhao: freezed == bianhao
          ? _value.bianhao
          : bianhao // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      mark: freezed == mark
          ? _value.mark
          : mark // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      signImg: freezed == signImg
          ? _value.signImg
          : signImg // ignore: cast_nullable_to_non_nullable
              as String?,
      companyLong: freezed == companyLong
          ? _value.companyLong
          : companyLong // ignore: cast_nullable_to_non_nullable
              as String?,
      xm: freezed == xm
          ? _value.xm
          : xm // ignore: cast_nullable_to_non_nullable
              as String?,
      sfz: freezed == sfz
          ? _value.sfz
          : sfz // ignore: cast_nullable_to_non_nullable
              as String?,
      hetong: freezed == hetong
          ? _value.hetong
          : hetong // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoanContractDetailDataImpl implements _LoanContractDetailData {
  const _$LoanContractDetailDataImpl(
      {@JsonKey(name: "number_amount") this.numberAmount,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "userid") this.userid,
      @JsonKey(name: "bianhao") this.bianhao,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "number") this.number,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "mark") this.mark,
      @JsonKey(name: "rate") this.rate,
      @JsonKey(name: "sign_img") this.signImg,
      @JsonKey(name: "CompanyLong") this.companyLong,
      @JsonKey(name: "xm") this.xm,
      @JsonKey(name: "sfz") this.sfz,
      @JsonKey(name: "hetong") this.hetong,
      @JsonKey(name: "content") this.content});

  factory _$LoanContractDetailDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanContractDetailDataImplFromJson(json);

  @override
  @JsonKey(name: "number_amount")
  final double? numberAmount;
  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "userid")
  final int? userid;
  @override
  @JsonKey(name: "bianhao")
  final String? bianhao;
  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "number")
  final String? number;
  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "mark")
  final String? mark;
  @override
  @JsonKey(name: "rate")
  final int? rate;
  @override
  @JsonKey(name: "sign_img")
  final String? signImg;
  @override
  @JsonKey(name: "CompanyLong")
  final String? companyLong;
  @override
  @JsonKey(name: "xm")
  final String? xm;
  @override
  @JsonKey(name: "sfz")
  final String? sfz;
  @override
  @JsonKey(name: "hetong")
  final String? hetong;
  @override
  @JsonKey(name: "content")
  final String? content;

  @override
  String toString() {
    return 'LoanContractDetailData(numberAmount: $numberAmount, id: $id, userid: $userid, bianhao: $bianhao, username: $username, number: $number, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, mark: $mark, rate: $rate, signImg: $signImg, companyLong: $companyLong, xm: $xm, sfz: $sfz, hetong: $hetong, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanContractDetailDataImpl &&
            (identical(other.numberAmount, numberAmount) ||
                other.numberAmount == numberAmount) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.bianhao, bianhao) || other.bianhao == bianhao) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.mark, mark) || other.mark == mark) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.signImg, signImg) || other.signImg == signImg) &&
            (identical(other.companyLong, companyLong) ||
                other.companyLong == companyLong) &&
            (identical(other.xm, xm) || other.xm == xm) &&
            (identical(other.sfz, sfz) || other.sfz == sfz) &&
            (identical(other.hetong, hetong) || other.hetong == hetong) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      numberAmount,
      id,
      userid,
      bianhao,
      username,
      number,
      status,
      createdAt,
      updatedAt,
      mark,
      rate,
      signImg,
      companyLong,
      xm,
      sfz,
      hetong,
      content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanContractDetailDataImplCopyWith<_$LoanContractDetailDataImpl>
      get copyWith => __$$LoanContractDetailDataImplCopyWithImpl<
          _$LoanContractDetailDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanContractDetailDataImplToJson(
      this,
    );
  }
}

abstract class _LoanContractDetailData implements LoanContractDetailData {
  const factory _LoanContractDetailData(
          {@JsonKey(name: "number_amount") final double? numberAmount,
          @JsonKey(name: "id") final int? id,
          @JsonKey(name: "userid") final int? userid,
          @JsonKey(name: "bianhao") final String? bianhao,
          @JsonKey(name: "username") final String? username,
          @JsonKey(name: "number") final String? number,
          @JsonKey(name: "status") final int? status,
          @JsonKey(name: "created_at") final String? createdAt,
          @JsonKey(name: "updated_at") final String? updatedAt,
          @JsonKey(name: "mark") final String? mark,
          @JsonKey(name: "rate") final int? rate,
          @JsonKey(name: "sign_img") final String? signImg,
          @JsonKey(name: "CompanyLong") final String? companyLong,
          @JsonKey(name: "xm") final String? xm,
          @JsonKey(name: "sfz") final String? sfz,
          @JsonKey(name: "hetong") final String? hetong,
          @JsonKey(name: "content") final String? content}) =
      _$LoanContractDetailDataImpl;

  factory _LoanContractDetailData.fromJson(Map<String, dynamic> json) =
      _$LoanContractDetailDataImpl.fromJson;

  @override
  @JsonKey(name: "number_amount")
  double? get numberAmount;
  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "userid")
  int? get userid;
  @override
  @JsonKey(name: "bianhao")
  String? get bianhao;
  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "number")
  String? get number;
  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "mark")
  String? get mark;
  @override
  @JsonKey(name: "rate")
  int? get rate;
  @override
  @JsonKey(name: "sign_img")
  String? get signImg;
  @override
  @JsonKey(name: "CompanyLong")
  String? get companyLong;
  @override
  @JsonKey(name: "xm")
  String? get xm;
  @override
  @JsonKey(name: "sfz")
  String? get sfz;
  @override
  @JsonKey(name: "hetong")
  String? get hetong;
  @override
  @JsonKey(name: "content")
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$LoanContractDetailDataImplCopyWith<_$LoanContractDetailDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
