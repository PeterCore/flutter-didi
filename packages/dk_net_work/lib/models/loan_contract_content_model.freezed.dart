// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_contract_content_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoanContractContentModel _$LoanContractContentModelFromJson(
    Map<String, dynamic> json) {
  return _LoanContractContentModel.fromJson(json);
}

/// @nodoc
mixin _$LoanContractContentModel {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  String? get msg => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  LoanContractContentData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoanContractContentModelCopyWith<LoanContractContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanContractContentModelCopyWith<$Res> {
  factory $LoanContractContentModelCopyWith(LoanContractContentModel value,
          $Res Function(LoanContractContentModel) then) =
      _$LoanContractContentModelCopyWithImpl<$Res, LoanContractContentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "data") LoanContractContentData? data});

  $LoanContractContentDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LoanContractContentModelCopyWithImpl<$Res,
        $Val extends LoanContractContentModel>
    implements $LoanContractContentModelCopyWith<$Res> {
  _$LoanContractContentModelCopyWithImpl(this._value, this._then);

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
              as LoanContractContentData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoanContractContentDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LoanContractContentDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoanContractContentModelImplCopyWith<$Res>
    implements $LoanContractContentModelCopyWith<$Res> {
  factory _$$LoanContractContentModelImplCopyWith(
          _$LoanContractContentModelImpl value,
          $Res Function(_$LoanContractContentModelImpl) then) =
      __$$LoanContractContentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "data") LoanContractContentData? data});

  @override
  $LoanContractContentDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$LoanContractContentModelImplCopyWithImpl<$Res>
    extends _$LoanContractContentModelCopyWithImpl<$Res,
        _$LoanContractContentModelImpl>
    implements _$$LoanContractContentModelImplCopyWith<$Res> {
  __$$LoanContractContentModelImplCopyWithImpl(
      _$LoanContractContentModelImpl _value,
      $Res Function(_$LoanContractContentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_$LoanContractContentModelImpl(
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
              as LoanContractContentData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoanContractContentModelImpl implements _LoanContractContentModel {
  const _$LoanContractContentModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "msg") this.msg,
      @JsonKey(name: "data") this.data});

  factory _$LoanContractContentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanContractContentModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "msg")
  final String? msg;
  @override
  @JsonKey(name: "data")
  final LoanContractContentData? data;

  @override
  String toString() {
    return 'LoanContractContentModel(status: $status, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanContractContentModelImpl &&
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
  _$$LoanContractContentModelImplCopyWith<_$LoanContractContentModelImpl>
      get copyWith => __$$LoanContractContentModelImplCopyWithImpl<
          _$LoanContractContentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanContractContentModelImplToJson(
      this,
    );
  }
}

abstract class _LoanContractContentModel implements LoanContractContentModel {
  const factory _LoanContractContentModel(
          {@JsonKey(name: "status") final int? status,
          @JsonKey(name: "msg") final String? msg,
          @JsonKey(name: "data") final LoanContractContentData? data}) =
      _$LoanContractContentModelImpl;

  factory _LoanContractContentModel.fromJson(Map<String, dynamic> json) =
      _$LoanContractContentModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "msg")
  String? get msg;
  @override
  @JsonKey(name: "data")
  LoanContractContentData? get data;
  @override
  @JsonKey(ignore: true)
  _$$LoanContractContentModelImplCopyWith<_$LoanContractContentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LoanContractContentData _$LoanContractContentDataFromJson(
    Map<String, dynamic> json) {
  return _LoanContractContentData.fromJson(json);
}

/// @nodoc
mixin _$LoanContractContentData {
  @JsonKey(name: "content")
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: "CompanyLong")
  String? get companyLong => throw _privateConstructorUsedError;
  @JsonKey(name: "xm")
  String? get xm => throw _privateConstructorUsedError;
  @JsonKey(name: "sfz")
  String? get sfz => throw _privateConstructorUsedError;
  @JsonKey(name: "number")
  String? get number => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "bianhao")
  String? get bianhao => throw _privateConstructorUsedError;
  @JsonKey(name: "sign_img")
  dynamic get signImg => throw _privateConstructorUsedError;
  @JsonKey(name: "hetong")
  String? get hetong => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoanContractContentDataCopyWith<LoanContractContentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanContractContentDataCopyWith<$Res> {
  factory $LoanContractContentDataCopyWith(LoanContractContentData value,
          $Res Function(LoanContractContentData) then) =
      _$LoanContractContentDataCopyWithImpl<$Res, LoanContractContentData>;
  @useResult
  $Res call(
      {@JsonKey(name: "content") String? content,
      @JsonKey(name: "CompanyLong") String? companyLong,
      @JsonKey(name: "xm") String? xm,
      @JsonKey(name: "sfz") String? sfz,
      @JsonKey(name: "number") String? number,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "bianhao") String? bianhao,
      @JsonKey(name: "sign_img") dynamic signImg,
      @JsonKey(name: "hetong") String? hetong});
}

/// @nodoc
class _$LoanContractContentDataCopyWithImpl<$Res,
        $Val extends LoanContractContentData>
    implements $LoanContractContentDataCopyWith<$Res> {
  _$LoanContractContentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? companyLong = freezed,
    Object? xm = freezed,
    Object? sfz = freezed,
    Object? number = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? bianhao = freezed,
    Object? signImg = freezed,
    Object? hetong = freezed,
  }) {
    return _then(_value.copyWith(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
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
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      bianhao: freezed == bianhao
          ? _value.bianhao
          : bianhao // ignore: cast_nullable_to_non_nullable
              as String?,
      signImg: freezed == signImg
          ? _value.signImg
          : signImg // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hetong: freezed == hetong
          ? _value.hetong
          : hetong // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoanContractContentDataImplCopyWith<$Res>
    implements $LoanContractContentDataCopyWith<$Res> {
  factory _$$LoanContractContentDataImplCopyWith(
          _$LoanContractContentDataImpl value,
          $Res Function(_$LoanContractContentDataImpl) then) =
      __$$LoanContractContentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "content") String? content,
      @JsonKey(name: "CompanyLong") String? companyLong,
      @JsonKey(name: "xm") String? xm,
      @JsonKey(name: "sfz") String? sfz,
      @JsonKey(name: "number") String? number,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "bianhao") String? bianhao,
      @JsonKey(name: "sign_img") dynamic signImg,
      @JsonKey(name: "hetong") String? hetong});
}

/// @nodoc
class __$$LoanContractContentDataImplCopyWithImpl<$Res>
    extends _$LoanContractContentDataCopyWithImpl<$Res,
        _$LoanContractContentDataImpl>
    implements _$$LoanContractContentDataImplCopyWith<$Res> {
  __$$LoanContractContentDataImplCopyWithImpl(
      _$LoanContractContentDataImpl _value,
      $Res Function(_$LoanContractContentDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = freezed,
    Object? companyLong = freezed,
    Object? xm = freezed,
    Object? sfz = freezed,
    Object? number = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? bianhao = freezed,
    Object? signImg = freezed,
    Object? hetong = freezed,
  }) {
    return _then(_$LoanContractContentDataImpl(
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
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
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      bianhao: freezed == bianhao
          ? _value.bianhao
          : bianhao // ignore: cast_nullable_to_non_nullable
              as String?,
      signImg: freezed == signImg
          ? _value.signImg
          : signImg // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hetong: freezed == hetong
          ? _value.hetong
          : hetong // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoanContractContentDataImpl implements _LoanContractContentData {
  const _$LoanContractContentDataImpl(
      {@JsonKey(name: "content") this.content,
      @JsonKey(name: "CompanyLong") this.companyLong,
      @JsonKey(name: "xm") this.xm,
      @JsonKey(name: "sfz") this.sfz,
      @JsonKey(name: "number") this.number,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "bianhao") this.bianhao,
      @JsonKey(name: "sign_img") this.signImg,
      @JsonKey(name: "hetong") this.hetong});

  factory _$LoanContractContentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanContractContentDataImplFromJson(json);

  @override
  @JsonKey(name: "content")
  final String? content;
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
  @JsonKey(name: "number")
  final String? number;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "bianhao")
  final String? bianhao;
  @override
  @JsonKey(name: "sign_img")
  final dynamic signImg;
  @override
  @JsonKey(name: "hetong")
  final String? hetong;

  @override
  String toString() {
    return 'LoanContractContentData(content: $content, companyLong: $companyLong, xm: $xm, sfz: $sfz, number: $number, createdAt: $createdAt, updatedAt: $updatedAt, bianhao: $bianhao, signImg: $signImg, hetong: $hetong)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanContractContentDataImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.companyLong, companyLong) ||
                other.companyLong == companyLong) &&
            (identical(other.xm, xm) || other.xm == xm) &&
            (identical(other.sfz, sfz) || other.sfz == sfz) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.bianhao, bianhao) || other.bianhao == bianhao) &&
            const DeepCollectionEquality().equals(other.signImg, signImg) &&
            (identical(other.hetong, hetong) || other.hetong == hetong));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      content,
      companyLong,
      xm,
      sfz,
      number,
      createdAt,
      updatedAt,
      bianhao,
      const DeepCollectionEquality().hash(signImg),
      hetong);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanContractContentDataImplCopyWith<_$LoanContractContentDataImpl>
      get copyWith => __$$LoanContractContentDataImplCopyWithImpl<
          _$LoanContractContentDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanContractContentDataImplToJson(
      this,
    );
  }
}

abstract class _LoanContractContentData implements LoanContractContentData {
  const factory _LoanContractContentData(
          {@JsonKey(name: "content") final String? content,
          @JsonKey(name: "CompanyLong") final String? companyLong,
          @JsonKey(name: "xm") final String? xm,
          @JsonKey(name: "sfz") final String? sfz,
          @JsonKey(name: "number") final String? number,
          @JsonKey(name: "created_at") final String? createdAt,
          @JsonKey(name: "updated_at") final String? updatedAt,
          @JsonKey(name: "bianhao") final String? bianhao,
          @JsonKey(name: "sign_img") final dynamic signImg,
          @JsonKey(name: "hetong") final String? hetong}) =
      _$LoanContractContentDataImpl;

  factory _LoanContractContentData.fromJson(Map<String, dynamic> json) =
      _$LoanContractContentDataImpl.fromJson;

  @override
  @JsonKey(name: "content")
  String? get content;
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
  @JsonKey(name: "number")
  String? get number;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "bianhao")
  String? get bianhao;
  @override
  @JsonKey(name: "sign_img")
  dynamic get signImg;
  @override
  @JsonKey(name: "hetong")
  String? get hetong;
  @override
  @JsonKey(ignore: true)
  _$$LoanContractContentDataImplCopyWith<_$LoanContractContentDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
