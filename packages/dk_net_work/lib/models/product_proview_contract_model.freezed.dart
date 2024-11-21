// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_proview_contract_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductProviewContractModel _$ProductProviewContractModelFromJson(
    Map<String, dynamic> json) {
  return _ProductProviewContractModel.fromJson(json);
}

/// @nodoc
mixin _$ProductProviewContractModel {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  String? get msg => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  Date? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "Mb")
  Mb? get mb => throw _privateConstructorUsedError;
  @JsonKey(name: "Pro")
  Pro? get pro => throw _privateConstructorUsedError;
  @JsonKey(name: "ProBuy")
  ProBuy? get proBuy => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductProviewContractModelCopyWith<ProductProviewContractModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductProviewContractModelCopyWith<$Res> {
  factory $ProductProviewContractModelCopyWith(
          ProductProviewContractModel value,
          $Res Function(ProductProviewContractModel) then) =
      _$ProductProviewContractModelCopyWithImpl<$Res,
          ProductProviewContractModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "date") Date? date,
      @JsonKey(name: "Mb") Mb? mb,
      @JsonKey(name: "Pro") Pro? pro,
      @JsonKey(name: "ProBuy") ProBuy? proBuy,
      @JsonKey(name: "content") String? content});

  $DateCopyWith<$Res>? get date;
  $MbCopyWith<$Res>? get mb;
  $ProCopyWith<$Res>? get pro;
  $ProBuyCopyWith<$Res>? get proBuy;
}

/// @nodoc
class _$ProductProviewContractModelCopyWithImpl<$Res,
        $Val extends ProductProviewContractModel>
    implements $ProductProviewContractModelCopyWith<$Res> {
  _$ProductProviewContractModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? date = freezed,
    Object? mb = freezed,
    Object? pro = freezed,
    Object? proBuy = freezed,
    Object? content = freezed,
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
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date?,
      mb: freezed == mb
          ? _value.mb
          : mb // ignore: cast_nullable_to_non_nullable
              as Mb?,
      pro: freezed == pro
          ? _value.pro
          : pro // ignore: cast_nullable_to_non_nullable
              as Pro?,
      proBuy: freezed == proBuy
          ? _value.proBuy
          : proBuy // ignore: cast_nullable_to_non_nullable
              as ProBuy?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DateCopyWith<$Res>? get date {
    if (_value.date == null) {
      return null;
    }

    return $DateCopyWith<$Res>(_value.date!, (value) {
      return _then(_value.copyWith(date: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MbCopyWith<$Res>? get mb {
    if (_value.mb == null) {
      return null;
    }

    return $MbCopyWith<$Res>(_value.mb!, (value) {
      return _then(_value.copyWith(mb: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProCopyWith<$Res>? get pro {
    if (_value.pro == null) {
      return null;
    }

    return $ProCopyWith<$Res>(_value.pro!, (value) {
      return _then(_value.copyWith(pro: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProBuyCopyWith<$Res>? get proBuy {
    if (_value.proBuy == null) {
      return null;
    }

    return $ProBuyCopyWith<$Res>(_value.proBuy!, (value) {
      return _then(_value.copyWith(proBuy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductProviewContractModelImplCopyWith<$Res>
    implements $ProductProviewContractModelCopyWith<$Res> {
  factory _$$ProductProviewContractModelImplCopyWith(
          _$ProductProviewContractModelImpl value,
          $Res Function(_$ProductProviewContractModelImpl) then) =
      __$$ProductProviewContractModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "date") Date? date,
      @JsonKey(name: "Mb") Mb? mb,
      @JsonKey(name: "Pro") Pro? pro,
      @JsonKey(name: "ProBuy") ProBuy? proBuy,
      @JsonKey(name: "content") String? content});

  @override
  $DateCopyWith<$Res>? get date;
  @override
  $MbCopyWith<$Res>? get mb;
  @override
  $ProCopyWith<$Res>? get pro;
  @override
  $ProBuyCopyWith<$Res>? get proBuy;
}

/// @nodoc
class __$$ProductProviewContractModelImplCopyWithImpl<$Res>
    extends _$ProductProviewContractModelCopyWithImpl<$Res,
        _$ProductProviewContractModelImpl>
    implements _$$ProductProviewContractModelImplCopyWith<$Res> {
  __$$ProductProviewContractModelImplCopyWithImpl(
      _$ProductProviewContractModelImpl _value,
      $Res Function(_$ProductProviewContractModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? date = freezed,
    Object? mb = freezed,
    Object? pro = freezed,
    Object? proBuy = freezed,
    Object? content = freezed,
  }) {
    return _then(_$ProductProviewContractModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as Date?,
      mb: freezed == mb
          ? _value.mb
          : mb // ignore: cast_nullable_to_non_nullable
              as Mb?,
      pro: freezed == pro
          ? _value.pro
          : pro // ignore: cast_nullable_to_non_nullable
              as Pro?,
      proBuy: freezed == proBuy
          ? _value.proBuy
          : proBuy // ignore: cast_nullable_to_non_nullable
              as ProBuy?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductProviewContractModelImpl
    implements _ProductProviewContractModel {
  const _$ProductProviewContractModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "msg") this.msg,
      @JsonKey(name: "date") this.date,
      @JsonKey(name: "Mb") this.mb,
      @JsonKey(name: "Pro") this.pro,
      @JsonKey(name: "ProBuy") this.proBuy,
      @JsonKey(name: "content") this.content});

  factory _$ProductProviewContractModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProductProviewContractModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "msg")
  final String? msg;
  @override
  @JsonKey(name: "date")
  final Date? date;
  @override
  @JsonKey(name: "Mb")
  final Mb? mb;
  @override
  @JsonKey(name: "Pro")
  final Pro? pro;
  @override
  @JsonKey(name: "ProBuy")
  final ProBuy? proBuy;
  @override
  @JsonKey(name: "content")
  final String? content;

  @override
  String toString() {
    return 'ProductProviewContractModel(status: $status, msg: $msg, date: $date, mb: $mb, pro: $pro, proBuy: $proBuy, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductProviewContractModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.mb, mb) || other.mb == mb) &&
            (identical(other.pro, pro) || other.pro == pro) &&
            (identical(other.proBuy, proBuy) || other.proBuy == proBuy) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, msg, date, mb, pro, proBuy, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductProviewContractModelImplCopyWith<_$ProductProviewContractModelImpl>
      get copyWith => __$$ProductProviewContractModelImplCopyWithImpl<
          _$ProductProviewContractModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductProviewContractModelImplToJson(
      this,
    );
  }
}

abstract class _ProductProviewContractModel
    implements ProductProviewContractModel {
  const factory _ProductProviewContractModel(
          {@JsonKey(name: "status") final int? status,
          @JsonKey(name: "msg") final String? msg,
          @JsonKey(name: "date") final Date? date,
          @JsonKey(name: "Mb") final Mb? mb,
          @JsonKey(name: "Pro") final Pro? pro,
          @JsonKey(name: "ProBuy") final ProBuy? proBuy,
          @JsonKey(name: "content") final String? content}) =
      _$ProductProviewContractModelImpl;

  factory _ProductProviewContractModel.fromJson(Map<String, dynamic> json) =
      _$ProductProviewContractModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "msg")
  String? get msg;
  @override
  @JsonKey(name: "date")
  Date? get date;
  @override
  @JsonKey(name: "Mb")
  Mb? get mb;
  @override
  @JsonKey(name: "Pro")
  Pro? get pro;
  @override
  @JsonKey(name: "ProBuy")
  ProBuy? get proBuy;
  @override
  @JsonKey(name: "content")
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$ProductProviewContractModelImplCopyWith<_$ProductProviewContractModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Date _$DateFromJson(Map<String, dynamic> json) {
  return _Date.fromJson(json);
}

/// @nodoc
mixin _$Date {
  @JsonKey(name: "data_shortCompany")
  String? get dataShortCompany => throw _privateConstructorUsedError;
  @JsonKey(name: "Company")
  String? get company => throw _privateConstructorUsedError;
  @JsonKey(name: "xmdata")
  String? get xmdata => throw _privateConstructorUsedError;
  @JsonKey(name: "zhouqi")
  String? get zhouqi => throw _privateConstructorUsedError;
  @JsonKey(name: "endshouyi")
  String? get endshouyi => throw _privateConstructorUsedError;
  @JsonKey(name: "elseMoney")
  String? get elseMoney => throw _privateConstructorUsedError;
  @JsonKey(name: "bugcoupon")
  String? get bugcoupon => throw _privateConstructorUsedError;
  @JsonKey(name: "endbenjin")
  int? get endbenjin => throw _privateConstructorUsedError;
  @JsonKey(name: "endMoney")
  String? get endMoney => throw _privateConstructorUsedError;
  @JsonKey(name: "dblogo")
  String? get dblogo => throw _privateConstructorUsedError;
  @JsonKey(name: "offiseal")
  String? get offiseal => throw _privateConstructorUsedError;
  @JsonKey(name: "picsign")
  String? get picsign => throw _privateConstructorUsedError;
  @JsonKey(name: "issign")
  int? get issign => throw _privateConstructorUsedError;
  @JsonKey(name: "iscertificate")
  int? get iscertificate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateCopyWith<Date> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateCopyWith<$Res> {
  factory $DateCopyWith(Date value, $Res Function(Date) then) =
      _$DateCopyWithImpl<$Res, Date>;
  @useResult
  $Res call(
      {@JsonKey(name: "data_shortCompany") String? dataShortCompany,
      @JsonKey(name: "Company") String? company,
      @JsonKey(name: "xmdata") String? xmdata,
      @JsonKey(name: "zhouqi") String? zhouqi,
      @JsonKey(name: "endshouyi") String? endshouyi,
      @JsonKey(name: "elseMoney") String? elseMoney,
      @JsonKey(name: "bugcoupon") String? bugcoupon,
      @JsonKey(name: "endbenjin") int? endbenjin,
      @JsonKey(name: "endMoney") String? endMoney,
      @JsonKey(name: "dblogo") String? dblogo,
      @JsonKey(name: "offiseal") String? offiseal,
      @JsonKey(name: "picsign") String? picsign,
      @JsonKey(name: "issign") int? issign,
      @JsonKey(name: "iscertificate") int? iscertificate});
}

/// @nodoc
class _$DateCopyWithImpl<$Res, $Val extends Date>
    implements $DateCopyWith<$Res> {
  _$DateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataShortCompany = freezed,
    Object? company = freezed,
    Object? xmdata = freezed,
    Object? zhouqi = freezed,
    Object? endshouyi = freezed,
    Object? elseMoney = freezed,
    Object? bugcoupon = freezed,
    Object? endbenjin = freezed,
    Object? endMoney = freezed,
    Object? dblogo = freezed,
    Object? offiseal = freezed,
    Object? picsign = freezed,
    Object? issign = freezed,
    Object? iscertificate = freezed,
  }) {
    return _then(_value.copyWith(
      dataShortCompany: freezed == dataShortCompany
          ? _value.dataShortCompany
          : dataShortCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      xmdata: freezed == xmdata
          ? _value.xmdata
          : xmdata // ignore: cast_nullable_to_non_nullable
              as String?,
      zhouqi: freezed == zhouqi
          ? _value.zhouqi
          : zhouqi // ignore: cast_nullable_to_non_nullable
              as String?,
      endshouyi: freezed == endshouyi
          ? _value.endshouyi
          : endshouyi // ignore: cast_nullable_to_non_nullable
              as String?,
      elseMoney: freezed == elseMoney
          ? _value.elseMoney
          : elseMoney // ignore: cast_nullable_to_non_nullable
              as String?,
      bugcoupon: freezed == bugcoupon
          ? _value.bugcoupon
          : bugcoupon // ignore: cast_nullable_to_non_nullable
              as String?,
      endbenjin: freezed == endbenjin
          ? _value.endbenjin
          : endbenjin // ignore: cast_nullable_to_non_nullable
              as int?,
      endMoney: freezed == endMoney
          ? _value.endMoney
          : endMoney // ignore: cast_nullable_to_non_nullable
              as String?,
      dblogo: freezed == dblogo
          ? _value.dblogo
          : dblogo // ignore: cast_nullable_to_non_nullable
              as String?,
      offiseal: freezed == offiseal
          ? _value.offiseal
          : offiseal // ignore: cast_nullable_to_non_nullable
              as String?,
      picsign: freezed == picsign
          ? _value.picsign
          : picsign // ignore: cast_nullable_to_non_nullable
              as String?,
      issign: freezed == issign
          ? _value.issign
          : issign // ignore: cast_nullable_to_non_nullable
              as int?,
      iscertificate: freezed == iscertificate
          ? _value.iscertificate
          : iscertificate // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DateImplCopyWith<$Res> implements $DateCopyWith<$Res> {
  factory _$$DateImplCopyWith(
          _$DateImpl value, $Res Function(_$DateImpl) then) =
      __$$DateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data_shortCompany") String? dataShortCompany,
      @JsonKey(name: "Company") String? company,
      @JsonKey(name: "xmdata") String? xmdata,
      @JsonKey(name: "zhouqi") String? zhouqi,
      @JsonKey(name: "endshouyi") String? endshouyi,
      @JsonKey(name: "elseMoney") String? elseMoney,
      @JsonKey(name: "bugcoupon") String? bugcoupon,
      @JsonKey(name: "endbenjin") int? endbenjin,
      @JsonKey(name: "endMoney") String? endMoney,
      @JsonKey(name: "dblogo") String? dblogo,
      @JsonKey(name: "offiseal") String? offiseal,
      @JsonKey(name: "picsign") String? picsign,
      @JsonKey(name: "issign") int? issign,
      @JsonKey(name: "iscertificate") int? iscertificate});
}

/// @nodoc
class __$$DateImplCopyWithImpl<$Res>
    extends _$DateCopyWithImpl<$Res, _$DateImpl>
    implements _$$DateImplCopyWith<$Res> {
  __$$DateImplCopyWithImpl(_$DateImpl _value, $Res Function(_$DateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataShortCompany = freezed,
    Object? company = freezed,
    Object? xmdata = freezed,
    Object? zhouqi = freezed,
    Object? endshouyi = freezed,
    Object? elseMoney = freezed,
    Object? bugcoupon = freezed,
    Object? endbenjin = freezed,
    Object? endMoney = freezed,
    Object? dblogo = freezed,
    Object? offiseal = freezed,
    Object? picsign = freezed,
    Object? issign = freezed,
    Object? iscertificate = freezed,
  }) {
    return _then(_$DateImpl(
      dataShortCompany: freezed == dataShortCompany
          ? _value.dataShortCompany
          : dataShortCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      xmdata: freezed == xmdata
          ? _value.xmdata
          : xmdata // ignore: cast_nullable_to_non_nullable
              as String?,
      zhouqi: freezed == zhouqi
          ? _value.zhouqi
          : zhouqi // ignore: cast_nullable_to_non_nullable
              as String?,
      endshouyi: freezed == endshouyi
          ? _value.endshouyi
          : endshouyi // ignore: cast_nullable_to_non_nullable
              as String?,
      elseMoney: freezed == elseMoney
          ? _value.elseMoney
          : elseMoney // ignore: cast_nullable_to_non_nullable
              as String?,
      bugcoupon: freezed == bugcoupon
          ? _value.bugcoupon
          : bugcoupon // ignore: cast_nullable_to_non_nullable
              as String?,
      endbenjin: freezed == endbenjin
          ? _value.endbenjin
          : endbenjin // ignore: cast_nullable_to_non_nullable
              as int?,
      endMoney: freezed == endMoney
          ? _value.endMoney
          : endMoney // ignore: cast_nullable_to_non_nullable
              as String?,
      dblogo: freezed == dblogo
          ? _value.dblogo
          : dblogo // ignore: cast_nullable_to_non_nullable
              as String?,
      offiseal: freezed == offiseal
          ? _value.offiseal
          : offiseal // ignore: cast_nullable_to_non_nullable
              as String?,
      picsign: freezed == picsign
          ? _value.picsign
          : picsign // ignore: cast_nullable_to_non_nullable
              as String?,
      issign: freezed == issign
          ? _value.issign
          : issign // ignore: cast_nullable_to_non_nullable
              as int?,
      iscertificate: freezed == iscertificate
          ? _value.iscertificate
          : iscertificate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DateImpl implements _Date {
  const _$DateImpl(
      {@JsonKey(name: "data_shortCompany") this.dataShortCompany,
      @JsonKey(name: "Company") this.company,
      @JsonKey(name: "xmdata") this.xmdata,
      @JsonKey(name: "zhouqi") this.zhouqi,
      @JsonKey(name: "endshouyi") this.endshouyi,
      @JsonKey(name: "elseMoney") this.elseMoney,
      @JsonKey(name: "bugcoupon") this.bugcoupon,
      @JsonKey(name: "endbenjin") this.endbenjin,
      @JsonKey(name: "endMoney") this.endMoney,
      @JsonKey(name: "dblogo") this.dblogo,
      @JsonKey(name: "offiseal") this.offiseal,
      @JsonKey(name: "picsign") this.picsign,
      @JsonKey(name: "issign") this.issign,
      @JsonKey(name: "iscertificate") this.iscertificate});

  factory _$DateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateImplFromJson(json);

  @override
  @JsonKey(name: "data_shortCompany")
  final String? dataShortCompany;
  @override
  @JsonKey(name: "Company")
  final String? company;
  @override
  @JsonKey(name: "xmdata")
  final String? xmdata;
  @override
  @JsonKey(name: "zhouqi")
  final String? zhouqi;
  @override
  @JsonKey(name: "endshouyi")
  final String? endshouyi;
  @override
  @JsonKey(name: "elseMoney")
  final String? elseMoney;
  @override
  @JsonKey(name: "bugcoupon")
  final String? bugcoupon;
  @override
  @JsonKey(name: "endbenjin")
  final int? endbenjin;
  @override
  @JsonKey(name: "endMoney")
  final String? endMoney;
  @override
  @JsonKey(name: "dblogo")
  final String? dblogo;
  @override
  @JsonKey(name: "offiseal")
  final String? offiseal;
  @override
  @JsonKey(name: "picsign")
  final String? picsign;
  @override
  @JsonKey(name: "issign")
  final int? issign;
  @override
  @JsonKey(name: "iscertificate")
  final int? iscertificate;

  @override
  String toString() {
    return 'Date(dataShortCompany: $dataShortCompany, company: $company, xmdata: $xmdata, zhouqi: $zhouqi, endshouyi: $endshouyi, elseMoney: $elseMoney, bugcoupon: $bugcoupon, endbenjin: $endbenjin, endMoney: $endMoney, dblogo: $dblogo, offiseal: $offiseal, picsign: $picsign, issign: $issign, iscertificate: $iscertificate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateImpl &&
            (identical(other.dataShortCompany, dataShortCompany) ||
                other.dataShortCompany == dataShortCompany) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.xmdata, xmdata) || other.xmdata == xmdata) &&
            (identical(other.zhouqi, zhouqi) || other.zhouqi == zhouqi) &&
            (identical(other.endshouyi, endshouyi) ||
                other.endshouyi == endshouyi) &&
            (identical(other.elseMoney, elseMoney) ||
                other.elseMoney == elseMoney) &&
            (identical(other.bugcoupon, bugcoupon) ||
                other.bugcoupon == bugcoupon) &&
            (identical(other.endbenjin, endbenjin) ||
                other.endbenjin == endbenjin) &&
            (identical(other.endMoney, endMoney) ||
                other.endMoney == endMoney) &&
            (identical(other.dblogo, dblogo) || other.dblogo == dblogo) &&
            (identical(other.offiseal, offiseal) ||
                other.offiseal == offiseal) &&
            (identical(other.picsign, picsign) || other.picsign == picsign) &&
            (identical(other.issign, issign) || other.issign == issign) &&
            (identical(other.iscertificate, iscertificate) ||
                other.iscertificate == iscertificate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dataShortCompany,
      company,
      xmdata,
      zhouqi,
      endshouyi,
      elseMoney,
      bugcoupon,
      endbenjin,
      endMoney,
      dblogo,
      offiseal,
      picsign,
      issign,
      iscertificate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateImplCopyWith<_$DateImpl> get copyWith =>
      __$$DateImplCopyWithImpl<_$DateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DateImplToJson(
      this,
    );
  }
}

abstract class _Date implements Date {
  const factory _Date(
      {@JsonKey(name: "data_shortCompany") final String? dataShortCompany,
      @JsonKey(name: "Company") final String? company,
      @JsonKey(name: "xmdata") final String? xmdata,
      @JsonKey(name: "zhouqi") final String? zhouqi,
      @JsonKey(name: "endshouyi") final String? endshouyi,
      @JsonKey(name: "elseMoney") final String? elseMoney,
      @JsonKey(name: "bugcoupon") final String? bugcoupon,
      @JsonKey(name: "endbenjin") final int? endbenjin,
      @JsonKey(name: "endMoney") final String? endMoney,
      @JsonKey(name: "dblogo") final String? dblogo,
      @JsonKey(name: "offiseal") final String? offiseal,
      @JsonKey(name: "picsign") final String? picsign,
      @JsonKey(name: "issign") final int? issign,
      @JsonKey(name: "iscertificate") final int? iscertificate}) = _$DateImpl;

  factory _Date.fromJson(Map<String, dynamic> json) = _$DateImpl.fromJson;

  @override
  @JsonKey(name: "data_shortCompany")
  String? get dataShortCompany;
  @override
  @JsonKey(name: "Company")
  String? get company;
  @override
  @JsonKey(name: "xmdata")
  String? get xmdata;
  @override
  @JsonKey(name: "zhouqi")
  String? get zhouqi;
  @override
  @JsonKey(name: "endshouyi")
  String? get endshouyi;
  @override
  @JsonKey(name: "elseMoney")
  String? get elseMoney;
  @override
  @JsonKey(name: "bugcoupon")
  String? get bugcoupon;
  @override
  @JsonKey(name: "endbenjin")
  int? get endbenjin;
  @override
  @JsonKey(name: "endMoney")
  String? get endMoney;
  @override
  @JsonKey(name: "dblogo")
  String? get dblogo;
  @override
  @JsonKey(name: "offiseal")
  String? get offiseal;
  @override
  @JsonKey(name: "picsign")
  String? get picsign;
  @override
  @JsonKey(name: "issign")
  int? get issign;
  @override
  @JsonKey(name: "iscertificate")
  int? get iscertificate;
  @override
  @JsonKey(ignore: true)
  _$$DateImplCopyWith<_$DateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Mb _$MbFromJson(Map<String, dynamic> json) {
  return _Mb.fromJson(json);
}

/// @nodoc
mixin _$Mb {
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "realname")
  String? get realname => throw _privateConstructorUsedError;
  @JsonKey(name: "card")
  String? get card => throw _privateConstructorUsedError;
  @JsonKey(name: "bankrealname")
  String? get bankrealname => throw _privateConstructorUsedError;
  @JsonKey(name: "bankcode")
  String? get bankcode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MbCopyWith<Mb> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MbCopyWith<$Res> {
  factory $MbCopyWith(Mb value, $Res Function(Mb) then) =
      _$MbCopyWithImpl<$Res, Mb>;
  @useResult
  $Res call(
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "realname") String? realname,
      @JsonKey(name: "card") String? card,
      @JsonKey(name: "bankrealname") String? bankrealname,
      @JsonKey(name: "bankcode") String? bankcode});
}

/// @nodoc
class _$MbCopyWithImpl<$Res, $Val extends Mb> implements $MbCopyWith<$Res> {
  _$MbCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? realname = freezed,
    Object? card = freezed,
    Object? bankrealname = freezed,
    Object? bankcode = freezed,
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
      card: freezed == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as String?,
      bankrealname: freezed == bankrealname
          ? _value.bankrealname
          : bankrealname // ignore: cast_nullable_to_non_nullable
              as String?,
      bankcode: freezed == bankcode
          ? _value.bankcode
          : bankcode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MbImplCopyWith<$Res> implements $MbCopyWith<$Res> {
  factory _$$MbImplCopyWith(_$MbImpl value, $Res Function(_$MbImpl) then) =
      __$$MbImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "username") String? username,
      @JsonKey(name: "realname") String? realname,
      @JsonKey(name: "card") String? card,
      @JsonKey(name: "bankrealname") String? bankrealname,
      @JsonKey(name: "bankcode") String? bankcode});
}

/// @nodoc
class __$$MbImplCopyWithImpl<$Res> extends _$MbCopyWithImpl<$Res, _$MbImpl>
    implements _$$MbImplCopyWith<$Res> {
  __$$MbImplCopyWithImpl(_$MbImpl _value, $Res Function(_$MbImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? realname = freezed,
    Object? card = freezed,
    Object? bankrealname = freezed,
    Object? bankcode = freezed,
  }) {
    return _then(_$MbImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      realname: freezed == realname
          ? _value.realname
          : realname // ignore: cast_nullable_to_non_nullable
              as String?,
      card: freezed == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as String?,
      bankrealname: freezed == bankrealname
          ? _value.bankrealname
          : bankrealname // ignore: cast_nullable_to_non_nullable
              as String?,
      bankcode: freezed == bankcode
          ? _value.bankcode
          : bankcode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MbImpl implements _Mb {
  const _$MbImpl(
      {@JsonKey(name: "username") this.username,
      @JsonKey(name: "realname") this.realname,
      @JsonKey(name: "card") this.card,
      @JsonKey(name: "bankrealname") this.bankrealname,
      @JsonKey(name: "bankcode") this.bankcode});

  factory _$MbImpl.fromJson(Map<String, dynamic> json) =>
      _$$MbImplFromJson(json);

  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "realname")
  final String? realname;
  @override
  @JsonKey(name: "card")
  final String? card;
  @override
  @JsonKey(name: "bankrealname")
  final String? bankrealname;
  @override
  @JsonKey(name: "bankcode")
  final String? bankcode;

  @override
  String toString() {
    return 'Mb(username: $username, realname: $realname, card: $card, bankrealname: $bankrealname, bankcode: $bankcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MbImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.realname, realname) ||
                other.realname == realname) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.bankrealname, bankrealname) ||
                other.bankrealname == bankrealname) &&
            (identical(other.bankcode, bankcode) ||
                other.bankcode == bankcode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, username, realname, card, bankrealname, bankcode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MbImplCopyWith<_$MbImpl> get copyWith =>
      __$$MbImplCopyWithImpl<_$MbImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MbImplToJson(
      this,
    );
  }
}

abstract class _Mb implements Mb {
  const factory _Mb(
      {@JsonKey(name: "username") final String? username,
      @JsonKey(name: "realname") final String? realname,
      @JsonKey(name: "card") final String? card,
      @JsonKey(name: "bankrealname") final String? bankrealname,
      @JsonKey(name: "bankcode") final String? bankcode}) = _$MbImpl;

  factory _Mb.fromJson(Map<String, dynamic> json) = _$MbImpl.fromJson;

  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "realname")
  String? get realname;
  @override
  @JsonKey(name: "card")
  String? get card;
  @override
  @JsonKey(name: "bankrealname")
  String? get bankrealname;
  @override
  @JsonKey(name: "bankcode")
  String? get bankcode;
  @override
  @JsonKey(ignore: true)
  _$$MbImplCopyWith<_$MbImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pro _$ProFromJson(Map<String, dynamic> json) {
  return _Pro.fromJson(json);
}

/// @nodoc
mixin _$Pro {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "category_name")
  String? get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "bljg")
  String? get bljg => throw _privateConstructorUsedError;
  @JsonKey(name: "xmgm")
  int? get xmgm => throw _privateConstructorUsedError;
  @JsonKey(name: "xmjd")
  int? get xmjd => throw _privateConstructorUsedError;
  @JsonKey(name: "qtje")
  int? get qtje => throw _privateConstructorUsedError;
  @JsonKey(name: "zgje")
  String? get zgje => throw _privateConstructorUsedError;
  @JsonKey(name: "isgao")
  int? get isgao => throw _privateConstructorUsedError;
  @JsonKey(name: "ktje")
  dynamic get ktje => throw _privateConstructorUsedError;
  @JsonKey(name: "jyrsy")
  String? get jyrsy => throw _privateConstructorUsedError;
  @JsonKey(name: "tqsyyj")
  String? get tqsyyj => throw _privateConstructorUsedError;
  @JsonKey(name: "shijian")
  String? get shijian => throw _privateConstructorUsedError;
  @JsonKey(name: "pic")
  String? get pic => throw _privateConstructorUsedError;
  @JsonKey(name: "content")
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: "qxdw")
  String? get qxdw => throw _privateConstructorUsedError;
  @JsonKey(name: "hkfs")
  int? get hkfs => throw _privateConstructorUsedError;
  @JsonKey(name: "cishu")
  dynamic get cishu => throw _privateConstructorUsedError;
  @JsonKey(name: "tzzt")
  int? get tzzt => throw _privateConstructorUsedError;
  @JsonKey(name: "isft")
  int? get isft => throw _privateConstructorUsedError;
  @JsonKey(name: "ftjl")
  int? get ftjl => throw _privateConstructorUsedError;
  @JsonKey(name: "level")
  int? get level => throw _privateConstructorUsedError;
  @JsonKey(name: "issy")
  int? get issy => throw _privateConstructorUsedError;
  @JsonKey(name: "issj")
  int? get issj => throw _privateConstructorUsedError;
  @JsonKey(name: "isdt")
  int? get isdt => throw _privateConstructorUsedError;
  @JsonKey(name: "iswj")
  int? get iswj => throw _privateConstructorUsedError;
  @JsonKey(name: "sort")
  int? get sort => throw _privateConstructorUsedError;
  @JsonKey(name: "tzyq")
  int? get tzyq => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "cycle")
  int? get cycle => throw _privateConstructorUsedError;
  @JsonKey(name: "istzbug")
  int? get istzbug => throw _privateConstructorUsedError;
  @JsonKey(name: "isnew")
  int? get isnew => throw _privateConstructorUsedError;
  @JsonKey(name: "doubled")
  int? get doubled => throw _privateConstructorUsedError;
  @JsonKey(name: "countequity")
  int? get countequity => throw _privateConstructorUsedError;
  @JsonKey(name: "bugunmber")
  int? get bugunmber => throw _privateConstructorUsedError;
  @JsonKey(name: "ismake")
  int? get ismake => throw _privateConstructorUsedError;
  @JsonKey(name: "endingtime")
  DateTime? get endingtime => throw _privateConstructorUsedError;
  @JsonKey(name: "isaouttm")
  int? get isaouttm => throw _privateConstructorUsedError;
  @JsonKey(name: "interval_time")
  int? get intervalTime => throw _privateConstructorUsedError;
  @JsonKey(name: "rise_time")
  DateTime? get riseTime => throw _privateConstructorUsedError;
  @JsonKey(name: "frequency")
  int? get frequency => throw _privateConstructorUsedError;
  @JsonKey(name: "rise_settings")
  String? get riseSettings => throw _privateConstructorUsedError;
  @JsonKey(name: "rise")
  double? get rise => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon")
  String? get coupon => throw _privateConstructorUsedError;
  @JsonKey(name: "givecoupon")
  String? get givecoupon => throw _privateConstructorUsedError;
  @JsonKey(name: "oldmoney")
  String? get oldmoney => throw _privateConstructorUsedError;
  @JsonKey(name: "daikuan")
  String? get daikuan => throw _privateConstructorUsedError;
  @JsonKey(name: "equity")
  String? get equity => throw _privateConstructorUsedError;
  @JsonKey(name: "integralgive")
  String? get integralgive => throw _privateConstructorUsedError;
  @JsonKey(name: "nextintegralgive")
  int? get nextintegralgive => throw _privateConstructorUsedError;
  @JsonKey(name: "ticket")
  int? get ticket => throw _privateConstructorUsedError;
  @JsonKey(name: "beans")
  int? get beans => throw _privateConstructorUsedError;
  @JsonKey(name: "xxtcbl")
  String? get xxtcbl => throw _privateConstructorUsedError;
  @JsonKey(name: "xxtcbll")
  String? get xxtcbll => throw _privateConstructorUsedError;
  @JsonKey(name: "xxtcblll")
  String? get xxtcblll => throw _privateConstructorUsedError;
  @JsonKey(name: "xxtcbllll")
  String? get xxtcbllll => throw _privateConstructorUsedError;
  @JsonKey(name: "jiechuhetong")
  int? get jiechuhetong => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  int? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "discountlist")
  String? get discountlist => throw _privateConstructorUsedError;
  @JsonKey(name: "capital")
  int? get capital => throw _privateConstructorUsedError;
  @JsonKey(name: "specialbenefits")
  String? get specialbenefits => throw _privateConstructorUsedError;
  @JsonKey(name: "bjzk")
  int? get bjzk => throw _privateConstructorUsedError;
  @JsonKey(name: "endtime")
  DateTime? get endtime => throw _privateConstructorUsedError;
  @JsonKey(name: "zengsongid")
  int? get zengsongid => throw _privateConstructorUsedError;
  @JsonKey(name: "nextpid")
  int? get nextpid => throw _privateConstructorUsedError;
  @JsonKey(name: "jfpid")
  int? get jfpid => throw _privateConstructorUsedError;
  @JsonKey(name: "joining")
  int? get joining => throw _privateConstructorUsedError;
  @JsonKey(name: "organizer")
  int? get organizer => throw _privateConstructorUsedError;
  @JsonKey(name: "isgroup")
  int? get isgroup => throw _privateConstructorUsedError;
  @JsonKey(name: "is_group_lerver")
  int? get isGroupLerver => throw _privateConstructorUsedError;
  @JsonKey(name: "extmoney")
  int? get extmoney => throw _privateConstructorUsedError;
  @JsonKey(name: "extday")
  int? get extday => throw _privateConstructorUsedError;
  @JsonKey(name: "groupcbl")
  String? get groupcbl => throw _privateConstructorUsedError;
  @JsonKey(name: "isnorate")
  int? get isnorate => throw _privateConstructorUsedError;
  @JsonKey(name: "presale")
  int? get presale => throw _privateConstructorUsedError;
  @JsonKey(name: "firstbuy")
  int? get firstbuy => throw _privateConstructorUsedError;
  @JsonKey(name: "insurance")
  int? get insurance => throw _privateConstructorUsedError;
  @JsonKey(name: "ft_after_success")
  int? get ftAfterSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: "present_level")
  int? get presentLevel => throw _privateConstructorUsedError;
  @JsonKey(name: "return_dividends")
  int? get returnDividends => throw _privateConstructorUsedError;
  @JsonKey(name: "return_capital")
  int? get returnCapital => throw _privateConstructorUsedError;
  @JsonKey(name: "is_aggregated_amount")
  int? get isAggregatedAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "hd_sel")
  bool? get hdSel => throw _privateConstructorUsedError;
  @JsonKey(name: "hd_info")
  String? get hdInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProCopyWith<Pro> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProCopyWith<$Res> {
  factory $ProCopyWith(Pro value, $Res Function(Pro) then) =
      _$ProCopyWithImpl<$Res, Pro>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "category_id") int? categoryId,
      @JsonKey(name: "category_name") String? categoryName,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "bljg") String? bljg,
      @JsonKey(name: "xmgm") int? xmgm,
      @JsonKey(name: "xmjd") int? xmjd,
      @JsonKey(name: "qtje") int? qtje,
      @JsonKey(name: "zgje") String? zgje,
      @JsonKey(name: "isgao") int? isgao,
      @JsonKey(name: "ktje") dynamic ktje,
      @JsonKey(name: "jyrsy") String? jyrsy,
      @JsonKey(name: "tqsyyj") String? tqsyyj,
      @JsonKey(name: "shijian") String? shijian,
      @JsonKey(name: "pic") String? pic,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "qxdw") String? qxdw,
      @JsonKey(name: "hkfs") int? hkfs,
      @JsonKey(name: "cishu") dynamic cishu,
      @JsonKey(name: "tzzt") int? tzzt,
      @JsonKey(name: "isft") int? isft,
      @JsonKey(name: "ftjl") int? ftjl,
      @JsonKey(name: "level") int? level,
      @JsonKey(name: "issy") int? issy,
      @JsonKey(name: "issj") int? issj,
      @JsonKey(name: "isdt") int? isdt,
      @JsonKey(name: "iswj") int? iswj,
      @JsonKey(name: "sort") int? sort,
      @JsonKey(name: "tzyq") int? tzyq,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "cycle") int? cycle,
      @JsonKey(name: "istzbug") int? istzbug,
      @JsonKey(name: "isnew") int? isnew,
      @JsonKey(name: "doubled") int? doubled,
      @JsonKey(name: "countequity") int? countequity,
      @JsonKey(name: "bugunmber") int? bugunmber,
      @JsonKey(name: "ismake") int? ismake,
      @JsonKey(name: "endingtime") DateTime? endingtime,
      @JsonKey(name: "isaouttm") int? isaouttm,
      @JsonKey(name: "interval_time") int? intervalTime,
      @JsonKey(name: "rise_time") DateTime? riseTime,
      @JsonKey(name: "frequency") int? frequency,
      @JsonKey(name: "rise_settings") String? riseSettings,
      @JsonKey(name: "rise") double? rise,
      @JsonKey(name: "coupon") String? coupon,
      @JsonKey(name: "givecoupon") String? givecoupon,
      @JsonKey(name: "oldmoney") String? oldmoney,
      @JsonKey(name: "daikuan") String? daikuan,
      @JsonKey(name: "equity") String? equity,
      @JsonKey(name: "integralgive") String? integralgive,
      @JsonKey(name: "nextintegralgive") int? nextintegralgive,
      @JsonKey(name: "ticket") int? ticket,
      @JsonKey(name: "beans") int? beans,
      @JsonKey(name: "xxtcbl") String? xxtcbl,
      @JsonKey(name: "xxtcbll") String? xxtcbll,
      @JsonKey(name: "xxtcblll") String? xxtcblll,
      @JsonKey(name: "xxtcbllll") String? xxtcbllll,
      @JsonKey(name: "jiechuhetong") int? jiechuhetong,
      @JsonKey(name: "discount") int? discount,
      @JsonKey(name: "discountlist") String? discountlist,
      @JsonKey(name: "capital") int? capital,
      @JsonKey(name: "specialbenefits") String? specialbenefits,
      @JsonKey(name: "bjzk") int? bjzk,
      @JsonKey(name: "endtime") DateTime? endtime,
      @JsonKey(name: "zengsongid") int? zengsongid,
      @JsonKey(name: "nextpid") int? nextpid,
      @JsonKey(name: "jfpid") int? jfpid,
      @JsonKey(name: "joining") int? joining,
      @JsonKey(name: "organizer") int? organizer,
      @JsonKey(name: "isgroup") int? isgroup,
      @JsonKey(name: "is_group_lerver") int? isGroupLerver,
      @JsonKey(name: "extmoney") int? extmoney,
      @JsonKey(name: "extday") int? extday,
      @JsonKey(name: "groupcbl") String? groupcbl,
      @JsonKey(name: "isnorate") int? isnorate,
      @JsonKey(name: "presale") int? presale,
      @JsonKey(name: "firstbuy") int? firstbuy,
      @JsonKey(name: "insurance") int? insurance,
      @JsonKey(name: "ft_after_success") int? ftAfterSuccess,
      @JsonKey(name: "present_level") int? presentLevel,
      @JsonKey(name: "return_dividends") int? returnDividends,
      @JsonKey(name: "return_capital") int? returnCapital,
      @JsonKey(name: "is_aggregated_amount") int? isAggregatedAmount,
      @JsonKey(name: "hd_sel") bool? hdSel,
      @JsonKey(name: "hd_info") String? hdInfo});
}

/// @nodoc
class _$ProCopyWithImpl<$Res, $Val extends Pro> implements $ProCopyWith<$Res> {
  _$ProCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? title = freezed,
    Object? bljg = freezed,
    Object? xmgm = freezed,
    Object? xmjd = freezed,
    Object? qtje = freezed,
    Object? zgje = freezed,
    Object? isgao = freezed,
    Object? ktje = freezed,
    Object? jyrsy = freezed,
    Object? tqsyyj = freezed,
    Object? shijian = freezed,
    Object? pic = freezed,
    Object? content = freezed,
    Object? qxdw = freezed,
    Object? hkfs = freezed,
    Object? cishu = freezed,
    Object? tzzt = freezed,
    Object? isft = freezed,
    Object? ftjl = freezed,
    Object? level = freezed,
    Object? issy = freezed,
    Object? issj = freezed,
    Object? isdt = freezed,
    Object? iswj = freezed,
    Object? sort = freezed,
    Object? tzyq = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? cycle = freezed,
    Object? istzbug = freezed,
    Object? isnew = freezed,
    Object? doubled = freezed,
    Object? countequity = freezed,
    Object? bugunmber = freezed,
    Object? ismake = freezed,
    Object? endingtime = freezed,
    Object? isaouttm = freezed,
    Object? intervalTime = freezed,
    Object? riseTime = freezed,
    Object? frequency = freezed,
    Object? riseSettings = freezed,
    Object? rise = freezed,
    Object? coupon = freezed,
    Object? givecoupon = freezed,
    Object? oldmoney = freezed,
    Object? daikuan = freezed,
    Object? equity = freezed,
    Object? integralgive = freezed,
    Object? nextintegralgive = freezed,
    Object? ticket = freezed,
    Object? beans = freezed,
    Object? xxtcbl = freezed,
    Object? xxtcbll = freezed,
    Object? xxtcblll = freezed,
    Object? xxtcbllll = freezed,
    Object? jiechuhetong = freezed,
    Object? discount = freezed,
    Object? discountlist = freezed,
    Object? capital = freezed,
    Object? specialbenefits = freezed,
    Object? bjzk = freezed,
    Object? endtime = freezed,
    Object? zengsongid = freezed,
    Object? nextpid = freezed,
    Object? jfpid = freezed,
    Object? joining = freezed,
    Object? organizer = freezed,
    Object? isgroup = freezed,
    Object? isGroupLerver = freezed,
    Object? extmoney = freezed,
    Object? extday = freezed,
    Object? groupcbl = freezed,
    Object? isnorate = freezed,
    Object? presale = freezed,
    Object? firstbuy = freezed,
    Object? insurance = freezed,
    Object? ftAfterSuccess = freezed,
    Object? presentLevel = freezed,
    Object? returnDividends = freezed,
    Object? returnCapital = freezed,
    Object? isAggregatedAmount = freezed,
    Object? hdSel = freezed,
    Object? hdInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      bljg: freezed == bljg
          ? _value.bljg
          : bljg // ignore: cast_nullable_to_non_nullable
              as String?,
      xmgm: freezed == xmgm
          ? _value.xmgm
          : xmgm // ignore: cast_nullable_to_non_nullable
              as int?,
      xmjd: freezed == xmjd
          ? _value.xmjd
          : xmjd // ignore: cast_nullable_to_non_nullable
              as int?,
      qtje: freezed == qtje
          ? _value.qtje
          : qtje // ignore: cast_nullable_to_non_nullable
              as int?,
      zgje: freezed == zgje
          ? _value.zgje
          : zgje // ignore: cast_nullable_to_non_nullable
              as String?,
      isgao: freezed == isgao
          ? _value.isgao
          : isgao // ignore: cast_nullable_to_non_nullable
              as int?,
      ktje: freezed == ktje
          ? _value.ktje
          : ktje // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jyrsy: freezed == jyrsy
          ? _value.jyrsy
          : jyrsy // ignore: cast_nullable_to_non_nullable
              as String?,
      tqsyyj: freezed == tqsyyj
          ? _value.tqsyyj
          : tqsyyj // ignore: cast_nullable_to_non_nullable
              as String?,
      shijian: freezed == shijian
          ? _value.shijian
          : shijian // ignore: cast_nullable_to_non_nullable
              as String?,
      pic: freezed == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      qxdw: freezed == qxdw
          ? _value.qxdw
          : qxdw // ignore: cast_nullable_to_non_nullable
              as String?,
      hkfs: freezed == hkfs
          ? _value.hkfs
          : hkfs // ignore: cast_nullable_to_non_nullable
              as int?,
      cishu: freezed == cishu
          ? _value.cishu
          : cishu // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tzzt: freezed == tzzt
          ? _value.tzzt
          : tzzt // ignore: cast_nullable_to_non_nullable
              as int?,
      isft: freezed == isft
          ? _value.isft
          : isft // ignore: cast_nullable_to_non_nullable
              as int?,
      ftjl: freezed == ftjl
          ? _value.ftjl
          : ftjl // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      issy: freezed == issy
          ? _value.issy
          : issy // ignore: cast_nullable_to_non_nullable
              as int?,
      issj: freezed == issj
          ? _value.issj
          : issj // ignore: cast_nullable_to_non_nullable
              as int?,
      isdt: freezed == isdt
          ? _value.isdt
          : isdt // ignore: cast_nullable_to_non_nullable
              as int?,
      iswj: freezed == iswj
          ? _value.iswj
          : iswj // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
      tzyq: freezed == tzyq
          ? _value.tzyq
          : tzyq // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cycle: freezed == cycle
          ? _value.cycle
          : cycle // ignore: cast_nullable_to_non_nullable
              as int?,
      istzbug: freezed == istzbug
          ? _value.istzbug
          : istzbug // ignore: cast_nullable_to_non_nullable
              as int?,
      isnew: freezed == isnew
          ? _value.isnew
          : isnew // ignore: cast_nullable_to_non_nullable
              as int?,
      doubled: freezed == doubled
          ? _value.doubled
          : doubled // ignore: cast_nullable_to_non_nullable
              as int?,
      countequity: freezed == countequity
          ? _value.countequity
          : countequity // ignore: cast_nullable_to_non_nullable
              as int?,
      bugunmber: freezed == bugunmber
          ? _value.bugunmber
          : bugunmber // ignore: cast_nullable_to_non_nullable
              as int?,
      ismake: freezed == ismake
          ? _value.ismake
          : ismake // ignore: cast_nullable_to_non_nullable
              as int?,
      endingtime: freezed == endingtime
          ? _value.endingtime
          : endingtime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isaouttm: freezed == isaouttm
          ? _value.isaouttm
          : isaouttm // ignore: cast_nullable_to_non_nullable
              as int?,
      intervalTime: freezed == intervalTime
          ? _value.intervalTime
          : intervalTime // ignore: cast_nullable_to_non_nullable
              as int?,
      riseTime: freezed == riseTime
          ? _value.riseTime
          : riseTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int?,
      riseSettings: freezed == riseSettings
          ? _value.riseSettings
          : riseSettings // ignore: cast_nullable_to_non_nullable
              as String?,
      rise: freezed == rise
          ? _value.rise
          : rise // ignore: cast_nullable_to_non_nullable
              as double?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String?,
      givecoupon: freezed == givecoupon
          ? _value.givecoupon
          : givecoupon // ignore: cast_nullable_to_non_nullable
              as String?,
      oldmoney: freezed == oldmoney
          ? _value.oldmoney
          : oldmoney // ignore: cast_nullable_to_non_nullable
              as String?,
      daikuan: freezed == daikuan
          ? _value.daikuan
          : daikuan // ignore: cast_nullable_to_non_nullable
              as String?,
      equity: freezed == equity
          ? _value.equity
          : equity // ignore: cast_nullable_to_non_nullable
              as String?,
      integralgive: freezed == integralgive
          ? _value.integralgive
          : integralgive // ignore: cast_nullable_to_non_nullable
              as String?,
      nextintegralgive: freezed == nextintegralgive
          ? _value.nextintegralgive
          : nextintegralgive // ignore: cast_nullable_to_non_nullable
              as int?,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as int?,
      beans: freezed == beans
          ? _value.beans
          : beans // ignore: cast_nullable_to_non_nullable
              as int?,
      xxtcbl: freezed == xxtcbl
          ? _value.xxtcbl
          : xxtcbl // ignore: cast_nullable_to_non_nullable
              as String?,
      xxtcbll: freezed == xxtcbll
          ? _value.xxtcbll
          : xxtcbll // ignore: cast_nullable_to_non_nullable
              as String?,
      xxtcblll: freezed == xxtcblll
          ? _value.xxtcblll
          : xxtcblll // ignore: cast_nullable_to_non_nullable
              as String?,
      xxtcbllll: freezed == xxtcbllll
          ? _value.xxtcbllll
          : xxtcbllll // ignore: cast_nullable_to_non_nullable
              as String?,
      jiechuhetong: freezed == jiechuhetong
          ? _value.jiechuhetong
          : jiechuhetong // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      discountlist: freezed == discountlist
          ? _value.discountlist
          : discountlist // ignore: cast_nullable_to_non_nullable
              as String?,
      capital: freezed == capital
          ? _value.capital
          : capital // ignore: cast_nullable_to_non_nullable
              as int?,
      specialbenefits: freezed == specialbenefits
          ? _value.specialbenefits
          : specialbenefits // ignore: cast_nullable_to_non_nullable
              as String?,
      bjzk: freezed == bjzk
          ? _value.bjzk
          : bjzk // ignore: cast_nullable_to_non_nullable
              as int?,
      endtime: freezed == endtime
          ? _value.endtime
          : endtime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      zengsongid: freezed == zengsongid
          ? _value.zengsongid
          : zengsongid // ignore: cast_nullable_to_non_nullable
              as int?,
      nextpid: freezed == nextpid
          ? _value.nextpid
          : nextpid // ignore: cast_nullable_to_non_nullable
              as int?,
      jfpid: freezed == jfpid
          ? _value.jfpid
          : jfpid // ignore: cast_nullable_to_non_nullable
              as int?,
      joining: freezed == joining
          ? _value.joining
          : joining // ignore: cast_nullable_to_non_nullable
              as int?,
      organizer: freezed == organizer
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as int?,
      isgroup: freezed == isgroup
          ? _value.isgroup
          : isgroup // ignore: cast_nullable_to_non_nullable
              as int?,
      isGroupLerver: freezed == isGroupLerver
          ? _value.isGroupLerver
          : isGroupLerver // ignore: cast_nullable_to_non_nullable
              as int?,
      extmoney: freezed == extmoney
          ? _value.extmoney
          : extmoney // ignore: cast_nullable_to_non_nullable
              as int?,
      extday: freezed == extday
          ? _value.extday
          : extday // ignore: cast_nullable_to_non_nullable
              as int?,
      groupcbl: freezed == groupcbl
          ? _value.groupcbl
          : groupcbl // ignore: cast_nullable_to_non_nullable
              as String?,
      isnorate: freezed == isnorate
          ? _value.isnorate
          : isnorate // ignore: cast_nullable_to_non_nullable
              as int?,
      presale: freezed == presale
          ? _value.presale
          : presale // ignore: cast_nullable_to_non_nullable
              as int?,
      firstbuy: freezed == firstbuy
          ? _value.firstbuy
          : firstbuy // ignore: cast_nullable_to_non_nullable
              as int?,
      insurance: freezed == insurance
          ? _value.insurance
          : insurance // ignore: cast_nullable_to_non_nullable
              as int?,
      ftAfterSuccess: freezed == ftAfterSuccess
          ? _value.ftAfterSuccess
          : ftAfterSuccess // ignore: cast_nullable_to_non_nullable
              as int?,
      presentLevel: freezed == presentLevel
          ? _value.presentLevel
          : presentLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      returnDividends: freezed == returnDividends
          ? _value.returnDividends
          : returnDividends // ignore: cast_nullable_to_non_nullable
              as int?,
      returnCapital: freezed == returnCapital
          ? _value.returnCapital
          : returnCapital // ignore: cast_nullable_to_non_nullable
              as int?,
      isAggregatedAmount: freezed == isAggregatedAmount
          ? _value.isAggregatedAmount
          : isAggregatedAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      hdSel: freezed == hdSel
          ? _value.hdSel
          : hdSel // ignore: cast_nullable_to_non_nullable
              as bool?,
      hdInfo: freezed == hdInfo
          ? _value.hdInfo
          : hdInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProImplCopyWith<$Res> implements $ProCopyWith<$Res> {
  factory _$$ProImplCopyWith(_$ProImpl value, $Res Function(_$ProImpl) then) =
      __$$ProImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "category_id") int? categoryId,
      @JsonKey(name: "category_name") String? categoryName,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "bljg") String? bljg,
      @JsonKey(name: "xmgm") int? xmgm,
      @JsonKey(name: "xmjd") int? xmjd,
      @JsonKey(name: "qtje") int? qtje,
      @JsonKey(name: "zgje") String? zgje,
      @JsonKey(name: "isgao") int? isgao,
      @JsonKey(name: "ktje") dynamic ktje,
      @JsonKey(name: "jyrsy") String? jyrsy,
      @JsonKey(name: "tqsyyj") String? tqsyyj,
      @JsonKey(name: "shijian") String? shijian,
      @JsonKey(name: "pic") String? pic,
      @JsonKey(name: "content") String? content,
      @JsonKey(name: "qxdw") String? qxdw,
      @JsonKey(name: "hkfs") int? hkfs,
      @JsonKey(name: "cishu") dynamic cishu,
      @JsonKey(name: "tzzt") int? tzzt,
      @JsonKey(name: "isft") int? isft,
      @JsonKey(name: "ftjl") int? ftjl,
      @JsonKey(name: "level") int? level,
      @JsonKey(name: "issy") int? issy,
      @JsonKey(name: "issj") int? issj,
      @JsonKey(name: "isdt") int? isdt,
      @JsonKey(name: "iswj") int? iswj,
      @JsonKey(name: "sort") int? sort,
      @JsonKey(name: "tzyq") int? tzyq,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt,
      @JsonKey(name: "cycle") int? cycle,
      @JsonKey(name: "istzbug") int? istzbug,
      @JsonKey(name: "isnew") int? isnew,
      @JsonKey(name: "doubled") int? doubled,
      @JsonKey(name: "countequity") int? countequity,
      @JsonKey(name: "bugunmber") int? bugunmber,
      @JsonKey(name: "ismake") int? ismake,
      @JsonKey(name: "endingtime") DateTime? endingtime,
      @JsonKey(name: "isaouttm") int? isaouttm,
      @JsonKey(name: "interval_time") int? intervalTime,
      @JsonKey(name: "rise_time") DateTime? riseTime,
      @JsonKey(name: "frequency") int? frequency,
      @JsonKey(name: "rise_settings") String? riseSettings,
      @JsonKey(name: "rise") double? rise,
      @JsonKey(name: "coupon") String? coupon,
      @JsonKey(name: "givecoupon") String? givecoupon,
      @JsonKey(name: "oldmoney") String? oldmoney,
      @JsonKey(name: "daikuan") String? daikuan,
      @JsonKey(name: "equity") String? equity,
      @JsonKey(name: "integralgive") String? integralgive,
      @JsonKey(name: "nextintegralgive") int? nextintegralgive,
      @JsonKey(name: "ticket") int? ticket,
      @JsonKey(name: "beans") int? beans,
      @JsonKey(name: "xxtcbl") String? xxtcbl,
      @JsonKey(name: "xxtcbll") String? xxtcbll,
      @JsonKey(name: "xxtcblll") String? xxtcblll,
      @JsonKey(name: "xxtcbllll") String? xxtcbllll,
      @JsonKey(name: "jiechuhetong") int? jiechuhetong,
      @JsonKey(name: "discount") int? discount,
      @JsonKey(name: "discountlist") String? discountlist,
      @JsonKey(name: "capital") int? capital,
      @JsonKey(name: "specialbenefits") String? specialbenefits,
      @JsonKey(name: "bjzk") int? bjzk,
      @JsonKey(name: "endtime") DateTime? endtime,
      @JsonKey(name: "zengsongid") int? zengsongid,
      @JsonKey(name: "nextpid") int? nextpid,
      @JsonKey(name: "jfpid") int? jfpid,
      @JsonKey(name: "joining") int? joining,
      @JsonKey(name: "organizer") int? organizer,
      @JsonKey(name: "isgroup") int? isgroup,
      @JsonKey(name: "is_group_lerver") int? isGroupLerver,
      @JsonKey(name: "extmoney") int? extmoney,
      @JsonKey(name: "extday") int? extday,
      @JsonKey(name: "groupcbl") String? groupcbl,
      @JsonKey(name: "isnorate") int? isnorate,
      @JsonKey(name: "presale") int? presale,
      @JsonKey(name: "firstbuy") int? firstbuy,
      @JsonKey(name: "insurance") int? insurance,
      @JsonKey(name: "ft_after_success") int? ftAfterSuccess,
      @JsonKey(name: "present_level") int? presentLevel,
      @JsonKey(name: "return_dividends") int? returnDividends,
      @JsonKey(name: "return_capital") int? returnCapital,
      @JsonKey(name: "is_aggregated_amount") int? isAggregatedAmount,
      @JsonKey(name: "hd_sel") bool? hdSel,
      @JsonKey(name: "hd_info") String? hdInfo});
}

/// @nodoc
class __$$ProImplCopyWithImpl<$Res> extends _$ProCopyWithImpl<$Res, _$ProImpl>
    implements _$$ProImplCopyWith<$Res> {
  __$$ProImplCopyWithImpl(_$ProImpl _value, $Res Function(_$ProImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? title = freezed,
    Object? bljg = freezed,
    Object? xmgm = freezed,
    Object? xmjd = freezed,
    Object? qtje = freezed,
    Object? zgje = freezed,
    Object? isgao = freezed,
    Object? ktje = freezed,
    Object? jyrsy = freezed,
    Object? tqsyyj = freezed,
    Object? shijian = freezed,
    Object? pic = freezed,
    Object? content = freezed,
    Object? qxdw = freezed,
    Object? hkfs = freezed,
    Object? cishu = freezed,
    Object? tzzt = freezed,
    Object? isft = freezed,
    Object? ftjl = freezed,
    Object? level = freezed,
    Object? issy = freezed,
    Object? issj = freezed,
    Object? isdt = freezed,
    Object? iswj = freezed,
    Object? sort = freezed,
    Object? tzyq = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? cycle = freezed,
    Object? istzbug = freezed,
    Object? isnew = freezed,
    Object? doubled = freezed,
    Object? countequity = freezed,
    Object? bugunmber = freezed,
    Object? ismake = freezed,
    Object? endingtime = freezed,
    Object? isaouttm = freezed,
    Object? intervalTime = freezed,
    Object? riseTime = freezed,
    Object? frequency = freezed,
    Object? riseSettings = freezed,
    Object? rise = freezed,
    Object? coupon = freezed,
    Object? givecoupon = freezed,
    Object? oldmoney = freezed,
    Object? daikuan = freezed,
    Object? equity = freezed,
    Object? integralgive = freezed,
    Object? nextintegralgive = freezed,
    Object? ticket = freezed,
    Object? beans = freezed,
    Object? xxtcbl = freezed,
    Object? xxtcbll = freezed,
    Object? xxtcblll = freezed,
    Object? xxtcbllll = freezed,
    Object? jiechuhetong = freezed,
    Object? discount = freezed,
    Object? discountlist = freezed,
    Object? capital = freezed,
    Object? specialbenefits = freezed,
    Object? bjzk = freezed,
    Object? endtime = freezed,
    Object? zengsongid = freezed,
    Object? nextpid = freezed,
    Object? jfpid = freezed,
    Object? joining = freezed,
    Object? organizer = freezed,
    Object? isgroup = freezed,
    Object? isGroupLerver = freezed,
    Object? extmoney = freezed,
    Object? extday = freezed,
    Object? groupcbl = freezed,
    Object? isnorate = freezed,
    Object? presale = freezed,
    Object? firstbuy = freezed,
    Object? insurance = freezed,
    Object? ftAfterSuccess = freezed,
    Object? presentLevel = freezed,
    Object? returnDividends = freezed,
    Object? returnCapital = freezed,
    Object? isAggregatedAmount = freezed,
    Object? hdSel = freezed,
    Object? hdInfo = freezed,
  }) {
    return _then(_$ProImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      bljg: freezed == bljg
          ? _value.bljg
          : bljg // ignore: cast_nullable_to_non_nullable
              as String?,
      xmgm: freezed == xmgm
          ? _value.xmgm
          : xmgm // ignore: cast_nullable_to_non_nullable
              as int?,
      xmjd: freezed == xmjd
          ? _value.xmjd
          : xmjd // ignore: cast_nullable_to_non_nullable
              as int?,
      qtje: freezed == qtje
          ? _value.qtje
          : qtje // ignore: cast_nullable_to_non_nullable
              as int?,
      zgje: freezed == zgje
          ? _value.zgje
          : zgje // ignore: cast_nullable_to_non_nullable
              as String?,
      isgao: freezed == isgao
          ? _value.isgao
          : isgao // ignore: cast_nullable_to_non_nullable
              as int?,
      ktje: freezed == ktje
          ? _value.ktje
          : ktje // ignore: cast_nullable_to_non_nullable
              as dynamic,
      jyrsy: freezed == jyrsy
          ? _value.jyrsy
          : jyrsy // ignore: cast_nullable_to_non_nullable
              as String?,
      tqsyyj: freezed == tqsyyj
          ? _value.tqsyyj
          : tqsyyj // ignore: cast_nullable_to_non_nullable
              as String?,
      shijian: freezed == shijian
          ? _value.shijian
          : shijian // ignore: cast_nullable_to_non_nullable
              as String?,
      pic: freezed == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      qxdw: freezed == qxdw
          ? _value.qxdw
          : qxdw // ignore: cast_nullable_to_non_nullable
              as String?,
      hkfs: freezed == hkfs
          ? _value.hkfs
          : hkfs // ignore: cast_nullable_to_non_nullable
              as int?,
      cishu: freezed == cishu
          ? _value.cishu
          : cishu // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tzzt: freezed == tzzt
          ? _value.tzzt
          : tzzt // ignore: cast_nullable_to_non_nullable
              as int?,
      isft: freezed == isft
          ? _value.isft
          : isft // ignore: cast_nullable_to_non_nullable
              as int?,
      ftjl: freezed == ftjl
          ? _value.ftjl
          : ftjl // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      issy: freezed == issy
          ? _value.issy
          : issy // ignore: cast_nullable_to_non_nullable
              as int?,
      issj: freezed == issj
          ? _value.issj
          : issj // ignore: cast_nullable_to_non_nullable
              as int?,
      isdt: freezed == isdt
          ? _value.isdt
          : isdt // ignore: cast_nullable_to_non_nullable
              as int?,
      iswj: freezed == iswj
          ? _value.iswj
          : iswj // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
      tzyq: freezed == tzyq
          ? _value.tzyq
          : tzyq // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cycle: freezed == cycle
          ? _value.cycle
          : cycle // ignore: cast_nullable_to_non_nullable
              as int?,
      istzbug: freezed == istzbug
          ? _value.istzbug
          : istzbug // ignore: cast_nullable_to_non_nullable
              as int?,
      isnew: freezed == isnew
          ? _value.isnew
          : isnew // ignore: cast_nullable_to_non_nullable
              as int?,
      doubled: freezed == doubled
          ? _value.doubled
          : doubled // ignore: cast_nullable_to_non_nullable
              as int?,
      countequity: freezed == countequity
          ? _value.countequity
          : countequity // ignore: cast_nullable_to_non_nullable
              as int?,
      bugunmber: freezed == bugunmber
          ? _value.bugunmber
          : bugunmber // ignore: cast_nullable_to_non_nullable
              as int?,
      ismake: freezed == ismake
          ? _value.ismake
          : ismake // ignore: cast_nullable_to_non_nullable
              as int?,
      endingtime: freezed == endingtime
          ? _value.endingtime
          : endingtime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isaouttm: freezed == isaouttm
          ? _value.isaouttm
          : isaouttm // ignore: cast_nullable_to_non_nullable
              as int?,
      intervalTime: freezed == intervalTime
          ? _value.intervalTime
          : intervalTime // ignore: cast_nullable_to_non_nullable
              as int?,
      riseTime: freezed == riseTime
          ? _value.riseTime
          : riseTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int?,
      riseSettings: freezed == riseSettings
          ? _value.riseSettings
          : riseSettings // ignore: cast_nullable_to_non_nullable
              as String?,
      rise: freezed == rise
          ? _value.rise
          : rise // ignore: cast_nullable_to_non_nullable
              as double?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as String?,
      givecoupon: freezed == givecoupon
          ? _value.givecoupon
          : givecoupon // ignore: cast_nullable_to_non_nullable
              as String?,
      oldmoney: freezed == oldmoney
          ? _value.oldmoney
          : oldmoney // ignore: cast_nullable_to_non_nullable
              as String?,
      daikuan: freezed == daikuan
          ? _value.daikuan
          : daikuan // ignore: cast_nullable_to_non_nullable
              as String?,
      equity: freezed == equity
          ? _value.equity
          : equity // ignore: cast_nullable_to_non_nullable
              as String?,
      integralgive: freezed == integralgive
          ? _value.integralgive
          : integralgive // ignore: cast_nullable_to_non_nullable
              as String?,
      nextintegralgive: freezed == nextintegralgive
          ? _value.nextintegralgive
          : nextintegralgive // ignore: cast_nullable_to_non_nullable
              as int?,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as int?,
      beans: freezed == beans
          ? _value.beans
          : beans // ignore: cast_nullable_to_non_nullable
              as int?,
      xxtcbl: freezed == xxtcbl
          ? _value.xxtcbl
          : xxtcbl // ignore: cast_nullable_to_non_nullable
              as String?,
      xxtcbll: freezed == xxtcbll
          ? _value.xxtcbll
          : xxtcbll // ignore: cast_nullable_to_non_nullable
              as String?,
      xxtcblll: freezed == xxtcblll
          ? _value.xxtcblll
          : xxtcblll // ignore: cast_nullable_to_non_nullable
              as String?,
      xxtcbllll: freezed == xxtcbllll
          ? _value.xxtcbllll
          : xxtcbllll // ignore: cast_nullable_to_non_nullable
              as String?,
      jiechuhetong: freezed == jiechuhetong
          ? _value.jiechuhetong
          : jiechuhetong // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      discountlist: freezed == discountlist
          ? _value.discountlist
          : discountlist // ignore: cast_nullable_to_non_nullable
              as String?,
      capital: freezed == capital
          ? _value.capital
          : capital // ignore: cast_nullable_to_non_nullable
              as int?,
      specialbenefits: freezed == specialbenefits
          ? _value.specialbenefits
          : specialbenefits // ignore: cast_nullable_to_non_nullable
              as String?,
      bjzk: freezed == bjzk
          ? _value.bjzk
          : bjzk // ignore: cast_nullable_to_non_nullable
              as int?,
      endtime: freezed == endtime
          ? _value.endtime
          : endtime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      zengsongid: freezed == zengsongid
          ? _value.zengsongid
          : zengsongid // ignore: cast_nullable_to_non_nullable
              as int?,
      nextpid: freezed == nextpid
          ? _value.nextpid
          : nextpid // ignore: cast_nullable_to_non_nullable
              as int?,
      jfpid: freezed == jfpid
          ? _value.jfpid
          : jfpid // ignore: cast_nullable_to_non_nullable
              as int?,
      joining: freezed == joining
          ? _value.joining
          : joining // ignore: cast_nullable_to_non_nullable
              as int?,
      organizer: freezed == organizer
          ? _value.organizer
          : organizer // ignore: cast_nullable_to_non_nullable
              as int?,
      isgroup: freezed == isgroup
          ? _value.isgroup
          : isgroup // ignore: cast_nullable_to_non_nullable
              as int?,
      isGroupLerver: freezed == isGroupLerver
          ? _value.isGroupLerver
          : isGroupLerver // ignore: cast_nullable_to_non_nullable
              as int?,
      extmoney: freezed == extmoney
          ? _value.extmoney
          : extmoney // ignore: cast_nullable_to_non_nullable
              as int?,
      extday: freezed == extday
          ? _value.extday
          : extday // ignore: cast_nullable_to_non_nullable
              as int?,
      groupcbl: freezed == groupcbl
          ? _value.groupcbl
          : groupcbl // ignore: cast_nullable_to_non_nullable
              as String?,
      isnorate: freezed == isnorate
          ? _value.isnorate
          : isnorate // ignore: cast_nullable_to_non_nullable
              as int?,
      presale: freezed == presale
          ? _value.presale
          : presale // ignore: cast_nullable_to_non_nullable
              as int?,
      firstbuy: freezed == firstbuy
          ? _value.firstbuy
          : firstbuy // ignore: cast_nullable_to_non_nullable
              as int?,
      insurance: freezed == insurance
          ? _value.insurance
          : insurance // ignore: cast_nullable_to_non_nullable
              as int?,
      ftAfterSuccess: freezed == ftAfterSuccess
          ? _value.ftAfterSuccess
          : ftAfterSuccess // ignore: cast_nullable_to_non_nullable
              as int?,
      presentLevel: freezed == presentLevel
          ? _value.presentLevel
          : presentLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      returnDividends: freezed == returnDividends
          ? _value.returnDividends
          : returnDividends // ignore: cast_nullable_to_non_nullable
              as int?,
      returnCapital: freezed == returnCapital
          ? _value.returnCapital
          : returnCapital // ignore: cast_nullable_to_non_nullable
              as int?,
      isAggregatedAmount: freezed == isAggregatedAmount
          ? _value.isAggregatedAmount
          : isAggregatedAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      hdSel: freezed == hdSel
          ? _value.hdSel
          : hdSel // ignore: cast_nullable_to_non_nullable
              as bool?,
      hdInfo: freezed == hdInfo
          ? _value.hdInfo
          : hdInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProImpl implements _Pro {
  const _$ProImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "category_id") this.categoryId,
      @JsonKey(name: "category_name") this.categoryName,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "bljg") this.bljg,
      @JsonKey(name: "xmgm") this.xmgm,
      @JsonKey(name: "xmjd") this.xmjd,
      @JsonKey(name: "qtje") this.qtje,
      @JsonKey(name: "zgje") this.zgje,
      @JsonKey(name: "isgao") this.isgao,
      @JsonKey(name: "ktje") this.ktje,
      @JsonKey(name: "jyrsy") this.jyrsy,
      @JsonKey(name: "tqsyyj") this.tqsyyj,
      @JsonKey(name: "shijian") this.shijian,
      @JsonKey(name: "pic") this.pic,
      @JsonKey(name: "content") this.content,
      @JsonKey(name: "qxdw") this.qxdw,
      @JsonKey(name: "hkfs") this.hkfs,
      @JsonKey(name: "cishu") this.cishu,
      @JsonKey(name: "tzzt") this.tzzt,
      @JsonKey(name: "isft") this.isft,
      @JsonKey(name: "ftjl") this.ftjl,
      @JsonKey(name: "level") this.level,
      @JsonKey(name: "issy") this.issy,
      @JsonKey(name: "issj") this.issj,
      @JsonKey(name: "isdt") this.isdt,
      @JsonKey(name: "iswj") this.iswj,
      @JsonKey(name: "sort") this.sort,
      @JsonKey(name: "tzyq") this.tzyq,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "cycle") this.cycle,
      @JsonKey(name: "istzbug") this.istzbug,
      @JsonKey(name: "isnew") this.isnew,
      @JsonKey(name: "doubled") this.doubled,
      @JsonKey(name: "countequity") this.countequity,
      @JsonKey(name: "bugunmber") this.bugunmber,
      @JsonKey(name: "ismake") this.ismake,
      @JsonKey(name: "endingtime") this.endingtime,
      @JsonKey(name: "isaouttm") this.isaouttm,
      @JsonKey(name: "interval_time") this.intervalTime,
      @JsonKey(name: "rise_time") this.riseTime,
      @JsonKey(name: "frequency") this.frequency,
      @JsonKey(name: "rise_settings") this.riseSettings,
      @JsonKey(name: "rise") this.rise,
      @JsonKey(name: "coupon") this.coupon,
      @JsonKey(name: "givecoupon") this.givecoupon,
      @JsonKey(name: "oldmoney") this.oldmoney,
      @JsonKey(name: "daikuan") this.daikuan,
      @JsonKey(name: "equity") this.equity,
      @JsonKey(name: "integralgive") this.integralgive,
      @JsonKey(name: "nextintegralgive") this.nextintegralgive,
      @JsonKey(name: "ticket") this.ticket,
      @JsonKey(name: "beans") this.beans,
      @JsonKey(name: "xxtcbl") this.xxtcbl,
      @JsonKey(name: "xxtcbll") this.xxtcbll,
      @JsonKey(name: "xxtcblll") this.xxtcblll,
      @JsonKey(name: "xxtcbllll") this.xxtcbllll,
      @JsonKey(name: "jiechuhetong") this.jiechuhetong,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "discountlist") this.discountlist,
      @JsonKey(name: "capital") this.capital,
      @JsonKey(name: "specialbenefits") this.specialbenefits,
      @JsonKey(name: "bjzk") this.bjzk,
      @JsonKey(name: "endtime") this.endtime,
      @JsonKey(name: "zengsongid") this.zengsongid,
      @JsonKey(name: "nextpid") this.nextpid,
      @JsonKey(name: "jfpid") this.jfpid,
      @JsonKey(name: "joining") this.joining,
      @JsonKey(name: "organizer") this.organizer,
      @JsonKey(name: "isgroup") this.isgroup,
      @JsonKey(name: "is_group_lerver") this.isGroupLerver,
      @JsonKey(name: "extmoney") this.extmoney,
      @JsonKey(name: "extday") this.extday,
      @JsonKey(name: "groupcbl") this.groupcbl,
      @JsonKey(name: "isnorate") this.isnorate,
      @JsonKey(name: "presale") this.presale,
      @JsonKey(name: "firstbuy") this.firstbuy,
      @JsonKey(name: "insurance") this.insurance,
      @JsonKey(name: "ft_after_success") this.ftAfterSuccess,
      @JsonKey(name: "present_level") this.presentLevel,
      @JsonKey(name: "return_dividends") this.returnDividends,
      @JsonKey(name: "return_capital") this.returnCapital,
      @JsonKey(name: "is_aggregated_amount") this.isAggregatedAmount,
      @JsonKey(name: "hd_sel") this.hdSel,
      @JsonKey(name: "hd_info") this.hdInfo});

  factory _$ProImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "category_id")
  final int? categoryId;
  @override
  @JsonKey(name: "category_name")
  final String? categoryName;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "bljg")
  final String? bljg;
  @override
  @JsonKey(name: "xmgm")
  final int? xmgm;
  @override
  @JsonKey(name: "xmjd")
  final int? xmjd;
  @override
  @JsonKey(name: "qtje")
  final int? qtje;
  @override
  @JsonKey(name: "zgje")
  final String? zgje;
  @override
  @JsonKey(name: "isgao")
  final int? isgao;
  @override
  @JsonKey(name: "ktje")
  final dynamic ktje;
  @override
  @JsonKey(name: "jyrsy")
  final String? jyrsy;
  @override
  @JsonKey(name: "tqsyyj")
  final String? tqsyyj;
  @override
  @JsonKey(name: "shijian")
  final String? shijian;
  @override
  @JsonKey(name: "pic")
  final String? pic;
  @override
  @JsonKey(name: "content")
  final String? content;
  @override
  @JsonKey(name: "qxdw")
  final String? qxdw;
  @override
  @JsonKey(name: "hkfs")
  final int? hkfs;
  @override
  @JsonKey(name: "cishu")
  final dynamic cishu;
  @override
  @JsonKey(name: "tzzt")
  final int? tzzt;
  @override
  @JsonKey(name: "isft")
  final int? isft;
  @override
  @JsonKey(name: "ftjl")
  final int? ftjl;
  @override
  @JsonKey(name: "level")
  final int? level;
  @override
  @JsonKey(name: "issy")
  final int? issy;
  @override
  @JsonKey(name: "issj")
  final int? issj;
  @override
  @JsonKey(name: "isdt")
  final int? isdt;
  @override
  @JsonKey(name: "iswj")
  final int? iswj;
  @override
  @JsonKey(name: "sort")
  final int? sort;
  @override
  @JsonKey(name: "tzyq")
  final int? tzyq;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "cycle")
  final int? cycle;
  @override
  @JsonKey(name: "istzbug")
  final int? istzbug;
  @override
  @JsonKey(name: "isnew")
  final int? isnew;
  @override
  @JsonKey(name: "doubled")
  final int? doubled;
  @override
  @JsonKey(name: "countequity")
  final int? countequity;
  @override
  @JsonKey(name: "bugunmber")
  final int? bugunmber;
  @override
  @JsonKey(name: "ismake")
  final int? ismake;
  @override
  @JsonKey(name: "endingtime")
  final DateTime? endingtime;
  @override
  @JsonKey(name: "isaouttm")
  final int? isaouttm;
  @override
  @JsonKey(name: "interval_time")
  final int? intervalTime;
  @override
  @JsonKey(name: "rise_time")
  final DateTime? riseTime;
  @override
  @JsonKey(name: "frequency")
  final int? frequency;
  @override
  @JsonKey(name: "rise_settings")
  final String? riseSettings;
  @override
  @JsonKey(name: "rise")
  final double? rise;
  @override
  @JsonKey(name: "coupon")
  final String? coupon;
  @override
  @JsonKey(name: "givecoupon")
  final String? givecoupon;
  @override
  @JsonKey(name: "oldmoney")
  final String? oldmoney;
  @override
  @JsonKey(name: "daikuan")
  final String? daikuan;
  @override
  @JsonKey(name: "equity")
  final String? equity;
  @override
  @JsonKey(name: "integralgive")
  final String? integralgive;
  @override
  @JsonKey(name: "nextintegralgive")
  final int? nextintegralgive;
  @override
  @JsonKey(name: "ticket")
  final int? ticket;
  @override
  @JsonKey(name: "beans")
  final int? beans;
  @override
  @JsonKey(name: "xxtcbl")
  final String? xxtcbl;
  @override
  @JsonKey(name: "xxtcbll")
  final String? xxtcbll;
  @override
  @JsonKey(name: "xxtcblll")
  final String? xxtcblll;
  @override
  @JsonKey(name: "xxtcbllll")
  final String? xxtcbllll;
  @override
  @JsonKey(name: "jiechuhetong")
  final int? jiechuhetong;
  @override
  @JsonKey(name: "discount")
  final int? discount;
  @override
  @JsonKey(name: "discountlist")
  final String? discountlist;
  @override
  @JsonKey(name: "capital")
  final int? capital;
  @override
  @JsonKey(name: "specialbenefits")
  final String? specialbenefits;
  @override
  @JsonKey(name: "bjzk")
  final int? bjzk;
  @override
  @JsonKey(name: "endtime")
  final DateTime? endtime;
  @override
  @JsonKey(name: "zengsongid")
  final int? zengsongid;
  @override
  @JsonKey(name: "nextpid")
  final int? nextpid;
  @override
  @JsonKey(name: "jfpid")
  final int? jfpid;
  @override
  @JsonKey(name: "joining")
  final int? joining;
  @override
  @JsonKey(name: "organizer")
  final int? organizer;
  @override
  @JsonKey(name: "isgroup")
  final int? isgroup;
  @override
  @JsonKey(name: "is_group_lerver")
  final int? isGroupLerver;
  @override
  @JsonKey(name: "extmoney")
  final int? extmoney;
  @override
  @JsonKey(name: "extday")
  final int? extday;
  @override
  @JsonKey(name: "groupcbl")
  final String? groupcbl;
  @override
  @JsonKey(name: "isnorate")
  final int? isnorate;
  @override
  @JsonKey(name: "presale")
  final int? presale;
  @override
  @JsonKey(name: "firstbuy")
  final int? firstbuy;
  @override
  @JsonKey(name: "insurance")
  final int? insurance;
  @override
  @JsonKey(name: "ft_after_success")
  final int? ftAfterSuccess;
  @override
  @JsonKey(name: "present_level")
  final int? presentLevel;
  @override
  @JsonKey(name: "return_dividends")
  final int? returnDividends;
  @override
  @JsonKey(name: "return_capital")
  final int? returnCapital;
  @override
  @JsonKey(name: "is_aggregated_amount")
  final int? isAggregatedAmount;
  @override
  @JsonKey(name: "hd_sel")
  final bool? hdSel;
  @override
  @JsonKey(name: "hd_info")
  final String? hdInfo;

  @override
  String toString() {
    return 'Pro(id: $id, categoryId: $categoryId, categoryName: $categoryName, title: $title, bljg: $bljg, xmgm: $xmgm, xmjd: $xmjd, qtje: $qtje, zgje: $zgje, isgao: $isgao, ktje: $ktje, jyrsy: $jyrsy, tqsyyj: $tqsyyj, shijian: $shijian, pic: $pic, content: $content, qxdw: $qxdw, hkfs: $hkfs, cishu: $cishu, tzzt: $tzzt, isft: $isft, ftjl: $ftjl, level: $level, issy: $issy, issj: $issj, isdt: $isdt, iswj: $iswj, sort: $sort, tzyq: $tzyq, createdAt: $createdAt, updatedAt: $updatedAt, cycle: $cycle, istzbug: $istzbug, isnew: $isnew, doubled: $doubled, countequity: $countequity, bugunmber: $bugunmber, ismake: $ismake, endingtime: $endingtime, isaouttm: $isaouttm, intervalTime: $intervalTime, riseTime: $riseTime, frequency: $frequency, riseSettings: $riseSettings, rise: $rise, coupon: $coupon, givecoupon: $givecoupon, oldmoney: $oldmoney, daikuan: $daikuan, equity: $equity, integralgive: $integralgive, nextintegralgive: $nextintegralgive, ticket: $ticket, beans: $beans, xxtcbl: $xxtcbl, xxtcbll: $xxtcbll, xxtcblll: $xxtcblll, xxtcbllll: $xxtcbllll, jiechuhetong: $jiechuhetong, discount: $discount, discountlist: $discountlist, capital: $capital, specialbenefits: $specialbenefits, bjzk: $bjzk, endtime: $endtime, zengsongid: $zengsongid, nextpid: $nextpid, jfpid: $jfpid, joining: $joining, organizer: $organizer, isgroup: $isgroup, isGroupLerver: $isGroupLerver, extmoney: $extmoney, extday: $extday, groupcbl: $groupcbl, isnorate: $isnorate, presale: $presale, firstbuy: $firstbuy, insurance: $insurance, ftAfterSuccess: $ftAfterSuccess, presentLevel: $presentLevel, returnDividends: $returnDividends, returnCapital: $returnCapital, isAggregatedAmount: $isAggregatedAmount, hdSel: $hdSel, hdInfo: $hdInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.bljg, bljg) || other.bljg == bljg) &&
            (identical(other.xmgm, xmgm) || other.xmgm == xmgm) &&
            (identical(other.xmjd, xmjd) || other.xmjd == xmjd) &&
            (identical(other.qtje, qtje) || other.qtje == qtje) &&
            (identical(other.zgje, zgje) || other.zgje == zgje) &&
            (identical(other.isgao, isgao) || other.isgao == isgao) &&
            const DeepCollectionEquality().equals(other.ktje, ktje) &&
            (identical(other.jyrsy, jyrsy) || other.jyrsy == jyrsy) &&
            (identical(other.tqsyyj, tqsyyj) || other.tqsyyj == tqsyyj) &&
            (identical(other.shijian, shijian) || other.shijian == shijian) &&
            (identical(other.pic, pic) || other.pic == pic) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.qxdw, qxdw) || other.qxdw == qxdw) &&
            (identical(other.hkfs, hkfs) || other.hkfs == hkfs) &&
            const DeepCollectionEquality().equals(other.cishu, cishu) &&
            (identical(other.tzzt, tzzt) || other.tzzt == tzzt) &&
            (identical(other.isft, isft) || other.isft == isft) &&
            (identical(other.ftjl, ftjl) || other.ftjl == ftjl) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.issy, issy) || other.issy == issy) &&
            (identical(other.issj, issj) || other.issj == issj) &&
            (identical(other.isdt, isdt) || other.isdt == isdt) &&
            (identical(other.iswj, iswj) || other.iswj == iswj) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.tzyq, tzyq) || other.tzyq == tzyq) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.cycle, cycle) || other.cycle == cycle) &&
            (identical(other.istzbug, istzbug) || other.istzbug == istzbug) &&
            (identical(other.isnew, isnew) || other.isnew == isnew) &&
            (identical(other.doubled, doubled) || other.doubled == doubled) &&
            (identical(other.countequity, countequity) ||
                other.countequity == countequity) &&
            (identical(other.bugunmber, bugunmber) ||
                other.bugunmber == bugunmber) &&
            (identical(other.ismake, ismake) || other.ismake == ismake) &&
            (identical(other.endingtime, endingtime) ||
                other.endingtime == endingtime) &&
            (identical(other.isaouttm, isaouttm) ||
                other.isaouttm == isaouttm) &&
            (identical(other.intervalTime, intervalTime) ||
                other.intervalTime == intervalTime) &&
            (identical(other.riseTime, riseTime) ||
                other.riseTime == riseTime) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.riseSettings, riseSettings) ||
                other.riseSettings == riseSettings) &&
            (identical(other.rise, rise) || other.rise == rise) &&
            (identical(other.coupon, coupon) || other.coupon == coupon) &&
            (identical(other.givecoupon, givecoupon) ||
                other.givecoupon == givecoupon) &&
            (identical(other.oldmoney, oldmoney) ||
                other.oldmoney == oldmoney) &&
            (identical(other.daikuan, daikuan) || other.daikuan == daikuan) &&
            (identical(other.equity, equity) || other.equity == equity) &&
            (identical(other.integralgive, integralgive) ||
                other.integralgive == integralgive) &&
            (identical(other.nextintegralgive, nextintegralgive) ||
                other.nextintegralgive == nextintegralgive) &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.beans, beans) || other.beans == beans) &&
            (identical(other.xxtcbl, xxtcbl) || other.xxtcbl == xxtcbl) &&
            (identical(other.xxtcbll, xxtcbll) || other.xxtcbll == xxtcbll) &&
            (identical(other.xxtcblll, xxtcblll) ||
                other.xxtcblll == xxtcblll) &&
            (identical(other.xxtcbllll, xxtcbllll) ||
                other.xxtcbllll == xxtcbllll) &&
            (identical(other.jiechuhetong, jiechuhetong) ||
                other.jiechuhetong == jiechuhetong) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.discountlist, discountlist) ||
                other.discountlist == discountlist) &&
            (identical(other.capital, capital) || other.capital == capital) &&
            (identical(other.specialbenefits, specialbenefits) ||
                other.specialbenefits == specialbenefits) &&
            (identical(other.bjzk, bjzk) || other.bjzk == bjzk) &&
            (identical(other.endtime, endtime) || other.endtime == endtime) &&
            (identical(other.zengsongid, zengsongid) ||
                other.zengsongid == zengsongid) &&
            (identical(other.nextpid, nextpid) || other.nextpid == nextpid) &&
            (identical(other.jfpid, jfpid) || other.jfpid == jfpid) &&
            (identical(other.joining, joining) || other.joining == joining) &&
            (identical(other.organizer, organizer) ||
                other.organizer == organizer) &&
            (identical(other.isgroup, isgroup) || other.isgroup == isgroup) &&
            (identical(other.isGroupLerver, isGroupLerver) ||
                other.isGroupLerver == isGroupLerver) &&
            (identical(other.extmoney, extmoney) ||
                other.extmoney == extmoney) &&
            (identical(other.extday, extday) || other.extday == extday) &&
            (identical(other.groupcbl, groupcbl) ||
                other.groupcbl == groupcbl) &&
            (identical(other.isnorate, isnorate) ||
                other.isnorate == isnorate) &&
            (identical(other.presale, presale) || other.presale == presale) &&
            (identical(other.firstbuy, firstbuy) ||
                other.firstbuy == firstbuy) &&
            (identical(other.insurance, insurance) ||
                other.insurance == insurance) &&
            (identical(other.ftAfterSuccess, ftAfterSuccess) ||
                other.ftAfterSuccess == ftAfterSuccess) &&
            (identical(other.presentLevel, presentLevel) ||
                other.presentLevel == presentLevel) &&
            (identical(other.returnDividends, returnDividends) ||
                other.returnDividends == returnDividends) &&
            (identical(other.returnCapital, returnCapital) ||
                other.returnCapital == returnCapital) &&
            (identical(other.isAggregatedAmount, isAggregatedAmount) ||
                other.isAggregatedAmount == isAggregatedAmount) &&
            (identical(other.hdSel, hdSel) || other.hdSel == hdSel) &&
            (identical(other.hdInfo, hdInfo) || other.hdInfo == hdInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        categoryId,
        categoryName,
        title,
        bljg,
        xmgm,
        xmjd,
        qtje,
        zgje,
        isgao,
        const DeepCollectionEquality().hash(ktje),
        jyrsy,
        tqsyyj,
        shijian,
        pic,
        content,
        qxdw,
        hkfs,
        const DeepCollectionEquality().hash(cishu),
        tzzt,
        isft,
        ftjl,
        level,
        issy,
        issj,
        isdt,
        iswj,
        sort,
        tzyq,
        createdAt,
        updatedAt,
        cycle,
        istzbug,
        isnew,
        doubled,
        countequity,
        bugunmber,
        ismake,
        endingtime,
        isaouttm,
        intervalTime,
        riseTime,
        frequency,
        riseSettings,
        rise,
        coupon,
        givecoupon,
        oldmoney,
        daikuan,
        equity,
        integralgive,
        nextintegralgive,
        ticket,
        beans,
        xxtcbl,
        xxtcbll,
        xxtcblll,
        xxtcbllll,
        jiechuhetong,
        discount,
        discountlist,
        capital,
        specialbenefits,
        bjzk,
        endtime,
        zengsongid,
        nextpid,
        jfpid,
        joining,
        organizer,
        isgroup,
        isGroupLerver,
        extmoney,
        extday,
        groupcbl,
        isnorate,
        presale,
        firstbuy,
        insurance,
        ftAfterSuccess,
        presentLevel,
        returnDividends,
        returnCapital,
        isAggregatedAmount,
        hdSel,
        hdInfo
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProImplCopyWith<_$ProImpl> get copyWith =>
      __$$ProImplCopyWithImpl<_$ProImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProImplToJson(
      this,
    );
  }
}

abstract class _Pro implements Pro {
  const factory _Pro(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "category_id") final int? categoryId,
      @JsonKey(name: "category_name") final String? categoryName,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "bljg") final String? bljg,
      @JsonKey(name: "xmgm") final int? xmgm,
      @JsonKey(name: "xmjd") final int? xmjd,
      @JsonKey(name: "qtje") final int? qtje,
      @JsonKey(name: "zgje") final String? zgje,
      @JsonKey(name: "isgao") final int? isgao,
      @JsonKey(name: "ktje") final dynamic ktje,
      @JsonKey(name: "jyrsy") final String? jyrsy,
      @JsonKey(name: "tqsyyj") final String? tqsyyj,
      @JsonKey(name: "shijian") final String? shijian,
      @JsonKey(name: "pic") final String? pic,
      @JsonKey(name: "content") final String? content,
      @JsonKey(name: "qxdw") final String? qxdw,
      @JsonKey(name: "hkfs") final int? hkfs,
      @JsonKey(name: "cishu") final dynamic cishu,
      @JsonKey(name: "tzzt") final int? tzzt,
      @JsonKey(name: "isft") final int? isft,
      @JsonKey(name: "ftjl") final int? ftjl,
      @JsonKey(name: "level") final int? level,
      @JsonKey(name: "issy") final int? issy,
      @JsonKey(name: "issj") final int? issj,
      @JsonKey(name: "isdt") final int? isdt,
      @JsonKey(name: "iswj") final int? iswj,
      @JsonKey(name: "sort") final int? sort,
      @JsonKey(name: "tzyq") final int? tzyq,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "updated_at") final DateTime? updatedAt,
      @JsonKey(name: "cycle") final int? cycle,
      @JsonKey(name: "istzbug") final int? istzbug,
      @JsonKey(name: "isnew") final int? isnew,
      @JsonKey(name: "doubled") final int? doubled,
      @JsonKey(name: "countequity") final int? countequity,
      @JsonKey(name: "bugunmber") final int? bugunmber,
      @JsonKey(name: "ismake") final int? ismake,
      @JsonKey(name: "endingtime") final DateTime? endingtime,
      @JsonKey(name: "isaouttm") final int? isaouttm,
      @JsonKey(name: "interval_time") final int? intervalTime,
      @JsonKey(name: "rise_time") final DateTime? riseTime,
      @JsonKey(name: "frequency") final int? frequency,
      @JsonKey(name: "rise_settings") final String? riseSettings,
      @JsonKey(name: "rise") final double? rise,
      @JsonKey(name: "coupon") final String? coupon,
      @JsonKey(name: "givecoupon") final String? givecoupon,
      @JsonKey(name: "oldmoney") final String? oldmoney,
      @JsonKey(name: "daikuan") final String? daikuan,
      @JsonKey(name: "equity") final String? equity,
      @JsonKey(name: "integralgive") final String? integralgive,
      @JsonKey(name: "nextintegralgive") final int? nextintegralgive,
      @JsonKey(name: "ticket") final int? ticket,
      @JsonKey(name: "beans") final int? beans,
      @JsonKey(name: "xxtcbl") final String? xxtcbl,
      @JsonKey(name: "xxtcbll") final String? xxtcbll,
      @JsonKey(name: "xxtcblll") final String? xxtcblll,
      @JsonKey(name: "xxtcbllll") final String? xxtcbllll,
      @JsonKey(name: "jiechuhetong") final int? jiechuhetong,
      @JsonKey(name: "discount") final int? discount,
      @JsonKey(name: "discountlist") final String? discountlist,
      @JsonKey(name: "capital") final int? capital,
      @JsonKey(name: "specialbenefits") final String? specialbenefits,
      @JsonKey(name: "bjzk") final int? bjzk,
      @JsonKey(name: "endtime") final DateTime? endtime,
      @JsonKey(name: "zengsongid") final int? zengsongid,
      @JsonKey(name: "nextpid") final int? nextpid,
      @JsonKey(name: "jfpid") final int? jfpid,
      @JsonKey(name: "joining") final int? joining,
      @JsonKey(name: "organizer") final int? organizer,
      @JsonKey(name: "isgroup") final int? isgroup,
      @JsonKey(name: "is_group_lerver") final int? isGroupLerver,
      @JsonKey(name: "extmoney") final int? extmoney,
      @JsonKey(name: "extday") final int? extday,
      @JsonKey(name: "groupcbl") final String? groupcbl,
      @JsonKey(name: "isnorate") final int? isnorate,
      @JsonKey(name: "presale") final int? presale,
      @JsonKey(name: "firstbuy") final int? firstbuy,
      @JsonKey(name: "insurance") final int? insurance,
      @JsonKey(name: "ft_after_success") final int? ftAfterSuccess,
      @JsonKey(name: "present_level") final int? presentLevel,
      @JsonKey(name: "return_dividends") final int? returnDividends,
      @JsonKey(name: "return_capital") final int? returnCapital,
      @JsonKey(name: "is_aggregated_amount") final int? isAggregatedAmount,
      @JsonKey(name: "hd_sel") final bool? hdSel,
      @JsonKey(name: "hd_info") final String? hdInfo}) = _$ProImpl;

  factory _Pro.fromJson(Map<String, dynamic> json) = _$ProImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "category_id")
  int? get categoryId;
  @override
  @JsonKey(name: "category_name")
  String? get categoryName;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "bljg")
  String? get bljg;
  @override
  @JsonKey(name: "xmgm")
  int? get xmgm;
  @override
  @JsonKey(name: "xmjd")
  int? get xmjd;
  @override
  @JsonKey(name: "qtje")
  int? get qtje;
  @override
  @JsonKey(name: "zgje")
  String? get zgje;
  @override
  @JsonKey(name: "isgao")
  int? get isgao;
  @override
  @JsonKey(name: "ktje")
  dynamic get ktje;
  @override
  @JsonKey(name: "jyrsy")
  String? get jyrsy;
  @override
  @JsonKey(name: "tqsyyj")
  String? get tqsyyj;
  @override
  @JsonKey(name: "shijian")
  String? get shijian;
  @override
  @JsonKey(name: "pic")
  String? get pic;
  @override
  @JsonKey(name: "content")
  String? get content;
  @override
  @JsonKey(name: "qxdw")
  String? get qxdw;
  @override
  @JsonKey(name: "hkfs")
  int? get hkfs;
  @override
  @JsonKey(name: "cishu")
  dynamic get cishu;
  @override
  @JsonKey(name: "tzzt")
  int? get tzzt;
  @override
  @JsonKey(name: "isft")
  int? get isft;
  @override
  @JsonKey(name: "ftjl")
  int? get ftjl;
  @override
  @JsonKey(name: "level")
  int? get level;
  @override
  @JsonKey(name: "issy")
  int? get issy;
  @override
  @JsonKey(name: "issj")
  int? get issj;
  @override
  @JsonKey(name: "isdt")
  int? get isdt;
  @override
  @JsonKey(name: "iswj")
  int? get iswj;
  @override
  @JsonKey(name: "sort")
  int? get sort;
  @override
  @JsonKey(name: "tzyq")
  int? get tzyq;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "cycle")
  int? get cycle;
  @override
  @JsonKey(name: "istzbug")
  int? get istzbug;
  @override
  @JsonKey(name: "isnew")
  int? get isnew;
  @override
  @JsonKey(name: "doubled")
  int? get doubled;
  @override
  @JsonKey(name: "countequity")
  int? get countequity;
  @override
  @JsonKey(name: "bugunmber")
  int? get bugunmber;
  @override
  @JsonKey(name: "ismake")
  int? get ismake;
  @override
  @JsonKey(name: "endingtime")
  DateTime? get endingtime;
  @override
  @JsonKey(name: "isaouttm")
  int? get isaouttm;
  @override
  @JsonKey(name: "interval_time")
  int? get intervalTime;
  @override
  @JsonKey(name: "rise_time")
  DateTime? get riseTime;
  @override
  @JsonKey(name: "frequency")
  int? get frequency;
  @override
  @JsonKey(name: "rise_settings")
  String? get riseSettings;
  @override
  @JsonKey(name: "rise")
  double? get rise;
  @override
  @JsonKey(name: "coupon")
  String? get coupon;
  @override
  @JsonKey(name: "givecoupon")
  String? get givecoupon;
  @override
  @JsonKey(name: "oldmoney")
  String? get oldmoney;
  @override
  @JsonKey(name: "daikuan")
  String? get daikuan;
  @override
  @JsonKey(name: "equity")
  String? get equity;
  @override
  @JsonKey(name: "integralgive")
  String? get integralgive;
  @override
  @JsonKey(name: "nextintegralgive")
  int? get nextintegralgive;
  @override
  @JsonKey(name: "ticket")
  int? get ticket;
  @override
  @JsonKey(name: "beans")
  int? get beans;
  @override
  @JsonKey(name: "xxtcbl")
  String? get xxtcbl;
  @override
  @JsonKey(name: "xxtcbll")
  String? get xxtcbll;
  @override
  @JsonKey(name: "xxtcblll")
  String? get xxtcblll;
  @override
  @JsonKey(name: "xxtcbllll")
  String? get xxtcbllll;
  @override
  @JsonKey(name: "jiechuhetong")
  int? get jiechuhetong;
  @override
  @JsonKey(name: "discount")
  int? get discount;
  @override
  @JsonKey(name: "discountlist")
  String? get discountlist;
  @override
  @JsonKey(name: "capital")
  int? get capital;
  @override
  @JsonKey(name: "specialbenefits")
  String? get specialbenefits;
  @override
  @JsonKey(name: "bjzk")
  int? get bjzk;
  @override
  @JsonKey(name: "endtime")
  DateTime? get endtime;
  @override
  @JsonKey(name: "zengsongid")
  int? get zengsongid;
  @override
  @JsonKey(name: "nextpid")
  int? get nextpid;
  @override
  @JsonKey(name: "jfpid")
  int? get jfpid;
  @override
  @JsonKey(name: "joining")
  int? get joining;
  @override
  @JsonKey(name: "organizer")
  int? get organizer;
  @override
  @JsonKey(name: "isgroup")
  int? get isgroup;
  @override
  @JsonKey(name: "is_group_lerver")
  int? get isGroupLerver;
  @override
  @JsonKey(name: "extmoney")
  int? get extmoney;
  @override
  @JsonKey(name: "extday")
  int? get extday;
  @override
  @JsonKey(name: "groupcbl")
  String? get groupcbl;
  @override
  @JsonKey(name: "isnorate")
  int? get isnorate;
  @override
  @JsonKey(name: "presale")
  int? get presale;
  @override
  @JsonKey(name: "firstbuy")
  int? get firstbuy;
  @override
  @JsonKey(name: "insurance")
  int? get insurance;
  @override
  @JsonKey(name: "ft_after_success")
  int? get ftAfterSuccess;
  @override
  @JsonKey(name: "present_level")
  int? get presentLevel;
  @override
  @JsonKey(name: "return_dividends")
  int? get returnDividends;
  @override
  @JsonKey(name: "return_capital")
  int? get returnCapital;
  @override
  @JsonKey(name: "is_aggregated_amount")
  int? get isAggregatedAmount;
  @override
  @JsonKey(name: "hd_sel")
  bool? get hdSel;
  @override
  @JsonKey(name: "hd_info")
  String? get hdInfo;
  @override
  @JsonKey(ignore: true)
  _$$ProImplCopyWith<_$ProImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProBuy _$ProBuyFromJson(Map<String, dynamic> json) {
  return _ProBuy.fromJson(json);
}

/// @nodoc
mixin _$ProBuy {
  @JsonKey(name: "amount")
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "bugcoupon")
  int? get bugcoupon => throw _privateConstructorUsedError;
  @JsonKey(name: "sign_img")
  String? get signImg => throw _privateConstructorUsedError;
  @JsonKey(name: "is_insurance")
  int? get isInsurance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProBuyCopyWith<ProBuy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProBuyCopyWith<$Res> {
  factory $ProBuyCopyWith(ProBuy value, $Res Function(ProBuy) then) =
      _$ProBuyCopyWithImpl<$Res, ProBuy>;
  @useResult
  $Res call(
      {@JsonKey(name: "amount") int? amount,
      @JsonKey(name: "bugcoupon") int? bugcoupon,
      @JsonKey(name: "sign_img") String? signImg,
      @JsonKey(name: "is_insurance") int? isInsurance});
}

/// @nodoc
class _$ProBuyCopyWithImpl<$Res, $Val extends ProBuy>
    implements $ProBuyCopyWith<$Res> {
  _$ProBuyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? bugcoupon = freezed,
    Object? signImg = freezed,
    Object? isInsurance = freezed,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      bugcoupon: freezed == bugcoupon
          ? _value.bugcoupon
          : bugcoupon // ignore: cast_nullable_to_non_nullable
              as int?,
      signImg: freezed == signImg
          ? _value.signImg
          : signImg // ignore: cast_nullable_to_non_nullable
              as String?,
      isInsurance: freezed == isInsurance
          ? _value.isInsurance
          : isInsurance // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProBuyImplCopyWith<$Res> implements $ProBuyCopyWith<$Res> {
  factory _$$ProBuyImplCopyWith(
          _$ProBuyImpl value, $Res Function(_$ProBuyImpl) then) =
      __$$ProBuyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "amount") int? amount,
      @JsonKey(name: "bugcoupon") int? bugcoupon,
      @JsonKey(name: "sign_img") String? signImg,
      @JsonKey(name: "is_insurance") int? isInsurance});
}

/// @nodoc
class __$$ProBuyImplCopyWithImpl<$Res>
    extends _$ProBuyCopyWithImpl<$Res, _$ProBuyImpl>
    implements _$$ProBuyImplCopyWith<$Res> {
  __$$ProBuyImplCopyWithImpl(
      _$ProBuyImpl _value, $Res Function(_$ProBuyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? bugcoupon = freezed,
    Object? signImg = freezed,
    Object? isInsurance = freezed,
  }) {
    return _then(_$ProBuyImpl(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      bugcoupon: freezed == bugcoupon
          ? _value.bugcoupon
          : bugcoupon // ignore: cast_nullable_to_non_nullable
              as int?,
      signImg: freezed == signImg
          ? _value.signImg
          : signImg // ignore: cast_nullable_to_non_nullable
              as String?,
      isInsurance: freezed == isInsurance
          ? _value.isInsurance
          : isInsurance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProBuyImpl implements _ProBuy {
  const _$ProBuyImpl(
      {@JsonKey(name: "amount") this.amount,
      @JsonKey(name: "bugcoupon") this.bugcoupon,
      @JsonKey(name: "sign_img") this.signImg,
      @JsonKey(name: "is_insurance") this.isInsurance});

  factory _$ProBuyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProBuyImplFromJson(json);

  @override
  @JsonKey(name: "amount")
  final int? amount;
  @override
  @JsonKey(name: "bugcoupon")
  final int? bugcoupon;
  @override
  @JsonKey(name: "sign_img")
  final String? signImg;
  @override
  @JsonKey(name: "is_insurance")
  final int? isInsurance;

  @override
  String toString() {
    return 'ProBuy(amount: $amount, bugcoupon: $bugcoupon, signImg: $signImg, isInsurance: $isInsurance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProBuyImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.bugcoupon, bugcoupon) ||
                other.bugcoupon == bugcoupon) &&
            (identical(other.signImg, signImg) || other.signImg == signImg) &&
            (identical(other.isInsurance, isInsurance) ||
                other.isInsurance == isInsurance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, amount, bugcoupon, signImg, isInsurance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProBuyImplCopyWith<_$ProBuyImpl> get copyWith =>
      __$$ProBuyImplCopyWithImpl<_$ProBuyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProBuyImplToJson(
      this,
    );
  }
}

abstract class _ProBuy implements ProBuy {
  const factory _ProBuy(
      {@JsonKey(name: "amount") final int? amount,
      @JsonKey(name: "bugcoupon") final int? bugcoupon,
      @JsonKey(name: "sign_img") final String? signImg,
      @JsonKey(name: "is_insurance") final int? isInsurance}) = _$ProBuyImpl;

  factory _ProBuy.fromJson(Map<String, dynamic> json) = _$ProBuyImpl.fromJson;

  @override
  @JsonKey(name: "amount")
  int? get amount;
  @override
  @JsonKey(name: "bugcoupon")
  int? get bugcoupon;
  @override
  @JsonKey(name: "sign_img")
  String? get signImg;
  @override
  @JsonKey(name: "is_insurance")
  int? get isInsurance;
  @override
  @JsonKey(ignore: true)
  _$$ProBuyImplCopyWith<_$ProBuyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
