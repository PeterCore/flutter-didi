// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoanStatusModel _$LoanStatusModelFromJson(Map<String, dynamic> json) {
  return _LoanStatusModel.fromJson(json);
}

/// @nodoc
mixin _$LoanStatusModel {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "withdrawalmin")
  String? get withdrawalmin => throw _privateConstructorUsedError;
  @JsonKey(name: "money")
  String? get money => throw _privateConstructorUsedError;
  @JsonKey(name: "isdaikuan")
  int? get isdaikuan => throw _privateConstructorUsedError;
  @JsonKey(name: "daikuancontent")
  String? get daikuancontent => throw _privateConstructorUsedError;
  @JsonKey(name: "jiemoney")
  String? get jiemoney => throw _privateConstructorUsedError;
  @JsonKey(name: "huanmoney")
  String? get huanmoney => throw _privateConstructorUsedError;
  @JsonKey(name: "yidaimoney")
  String? get yidaimoney => throw _privateConstructorUsedError;
  @JsonKey(name: "txmoney")
  String? get txmoney => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "huankuan_tiqian_content")
  String? get earlyRepayContent => throw _privateConstructorUsedError;
  int? get esignature => throw _privateConstructorUsedError;
  @JsonKey(name: "huankuancontent")
  String? get huankuancontent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoanStatusModelCopyWith<LoanStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanStatusModelCopyWith<$Res> {
  factory $LoanStatusModelCopyWith(
          LoanStatusModel value, $Res Function(LoanStatusModel) then) =
      _$LoanStatusModelCopyWithImpl<$Res, LoanStatusModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "withdrawalmin") String? withdrawalmin,
      @JsonKey(name: "money") String? money,
      @JsonKey(name: "isdaikuan") int? isdaikuan,
      @JsonKey(name: "daikuancontent") String? daikuancontent,
      @JsonKey(name: "jiemoney") String? jiemoney,
      @JsonKey(name: "huanmoney") String? huanmoney,
      @JsonKey(name: "yidaimoney") String? yidaimoney,
      @JsonKey(name: "txmoney") String? txmoney,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "huankuan_tiqian_content") String? earlyRepayContent,
      int? esignature,
      @JsonKey(name: "huankuancontent") String? huankuancontent});
}

/// @nodoc
class _$LoanStatusModelCopyWithImpl<$Res, $Val extends LoanStatusModel>
    implements $LoanStatusModelCopyWith<$Res> {
  _$LoanStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? withdrawalmin = freezed,
    Object? money = freezed,
    Object? isdaikuan = freezed,
    Object? daikuancontent = freezed,
    Object? jiemoney = freezed,
    Object? huanmoney = freezed,
    Object? yidaimoney = freezed,
    Object? txmoney = freezed,
    Object? amount = freezed,
    Object? earlyRepayContent = freezed,
    Object? esignature = freezed,
    Object? huankuancontent = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      withdrawalmin: freezed == withdrawalmin
          ? _value.withdrawalmin
          : withdrawalmin // ignore: cast_nullable_to_non_nullable
              as String?,
      money: freezed == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as String?,
      isdaikuan: freezed == isdaikuan
          ? _value.isdaikuan
          : isdaikuan // ignore: cast_nullable_to_non_nullable
              as int?,
      daikuancontent: freezed == daikuancontent
          ? _value.daikuancontent
          : daikuancontent // ignore: cast_nullable_to_non_nullable
              as String?,
      jiemoney: freezed == jiemoney
          ? _value.jiemoney
          : jiemoney // ignore: cast_nullable_to_non_nullable
              as String?,
      huanmoney: freezed == huanmoney
          ? _value.huanmoney
          : huanmoney // ignore: cast_nullable_to_non_nullable
              as String?,
      yidaimoney: freezed == yidaimoney
          ? _value.yidaimoney
          : yidaimoney // ignore: cast_nullable_to_non_nullable
              as String?,
      txmoney: freezed == txmoney
          ? _value.txmoney
          : txmoney // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      earlyRepayContent: freezed == earlyRepayContent
          ? _value.earlyRepayContent
          : earlyRepayContent // ignore: cast_nullable_to_non_nullable
              as String?,
      esignature: freezed == esignature
          ? _value.esignature
          : esignature // ignore: cast_nullable_to_non_nullable
              as int?,
      huankuancontent: freezed == huankuancontent
          ? _value.huankuancontent
          : huankuancontent // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoanStatusModelImplCopyWith<$Res>
    implements $LoanStatusModelCopyWith<$Res> {
  factory _$$LoanStatusModelImplCopyWith(_$LoanStatusModelImpl value,
          $Res Function(_$LoanStatusModelImpl) then) =
      __$$LoanStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "withdrawalmin") String? withdrawalmin,
      @JsonKey(name: "money") String? money,
      @JsonKey(name: "isdaikuan") int? isdaikuan,
      @JsonKey(name: "daikuancontent") String? daikuancontent,
      @JsonKey(name: "jiemoney") String? jiemoney,
      @JsonKey(name: "huanmoney") String? huanmoney,
      @JsonKey(name: "yidaimoney") String? yidaimoney,
      @JsonKey(name: "txmoney") String? txmoney,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "huankuan_tiqian_content") String? earlyRepayContent,
      int? esignature,
      @JsonKey(name: "huankuancontent") String? huankuancontent});
}

/// @nodoc
class __$$LoanStatusModelImplCopyWithImpl<$Res>
    extends _$LoanStatusModelCopyWithImpl<$Res, _$LoanStatusModelImpl>
    implements _$$LoanStatusModelImplCopyWith<$Res> {
  __$$LoanStatusModelImplCopyWithImpl(
      _$LoanStatusModelImpl _value, $Res Function(_$LoanStatusModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? withdrawalmin = freezed,
    Object? money = freezed,
    Object? isdaikuan = freezed,
    Object? daikuancontent = freezed,
    Object? jiemoney = freezed,
    Object? huanmoney = freezed,
    Object? yidaimoney = freezed,
    Object? txmoney = freezed,
    Object? amount = freezed,
    Object? earlyRepayContent = freezed,
    Object? esignature = freezed,
    Object? huankuancontent = freezed,
  }) {
    return _then(_$LoanStatusModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      withdrawalmin: freezed == withdrawalmin
          ? _value.withdrawalmin
          : withdrawalmin // ignore: cast_nullable_to_non_nullable
              as String?,
      money: freezed == money
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as String?,
      isdaikuan: freezed == isdaikuan
          ? _value.isdaikuan
          : isdaikuan // ignore: cast_nullable_to_non_nullable
              as int?,
      daikuancontent: freezed == daikuancontent
          ? _value.daikuancontent
          : daikuancontent // ignore: cast_nullable_to_non_nullable
              as String?,
      jiemoney: freezed == jiemoney
          ? _value.jiemoney
          : jiemoney // ignore: cast_nullable_to_non_nullable
              as String?,
      huanmoney: freezed == huanmoney
          ? _value.huanmoney
          : huanmoney // ignore: cast_nullable_to_non_nullable
              as String?,
      yidaimoney: freezed == yidaimoney
          ? _value.yidaimoney
          : yidaimoney // ignore: cast_nullable_to_non_nullable
              as String?,
      txmoney: freezed == txmoney
          ? _value.txmoney
          : txmoney // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      earlyRepayContent: freezed == earlyRepayContent
          ? _value.earlyRepayContent
          : earlyRepayContent // ignore: cast_nullable_to_non_nullable
              as String?,
      esignature: freezed == esignature
          ? _value.esignature
          : esignature // ignore: cast_nullable_to_non_nullable
              as int?,
      huankuancontent: freezed == huankuancontent
          ? _value.huankuancontent
          : huankuancontent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoanStatusModelImpl implements _LoanStatusModel {
  const _$LoanStatusModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "withdrawalmin") this.withdrawalmin,
      @JsonKey(name: "money") this.money,
      @JsonKey(name: "isdaikuan") this.isdaikuan,
      @JsonKey(name: "daikuancontent") this.daikuancontent,
      @JsonKey(name: "jiemoney") this.jiemoney,
      @JsonKey(name: "huanmoney") this.huanmoney,
      @JsonKey(name: "yidaimoney") this.yidaimoney,
      @JsonKey(name: "txmoney") this.txmoney,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "huankuan_tiqian_content") this.earlyRepayContent,
      this.esignature,
      @JsonKey(name: "huankuancontent") this.huankuancontent});

  factory _$LoanStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanStatusModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "withdrawalmin")
  final String? withdrawalmin;
  @override
  @JsonKey(name: "money")
  final String? money;
  @override
  @JsonKey(name: "isdaikuan")
  final int? isdaikuan;
  @override
  @JsonKey(name: "daikuancontent")
  final String? daikuancontent;
  @override
  @JsonKey(name: "jiemoney")
  final String? jiemoney;
  @override
  @JsonKey(name: "huanmoney")
  final String? huanmoney;
  @override
  @JsonKey(name: "yidaimoney")
  final String? yidaimoney;
  @override
  @JsonKey(name: "txmoney")
  final String? txmoney;
  @override
  @JsonKey(name: "amount")
  final String? amount;
  @override
  @JsonKey(name: "huankuan_tiqian_content")
  final String? earlyRepayContent;
  @override
  final int? esignature;
  @override
  @JsonKey(name: "huankuancontent")
  final String? huankuancontent;

  @override
  String toString() {
    return 'LoanStatusModel(status: $status, withdrawalmin: $withdrawalmin, money: $money, isdaikuan: $isdaikuan, daikuancontent: $daikuancontent, jiemoney: $jiemoney, huanmoney: $huanmoney, yidaimoney: $yidaimoney, txmoney: $txmoney, amount: $amount, earlyRepayContent: $earlyRepayContent, esignature: $esignature, huankuancontent: $huankuancontent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanStatusModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.withdrawalmin, withdrawalmin) ||
                other.withdrawalmin == withdrawalmin) &&
            (identical(other.money, money) || other.money == money) &&
            (identical(other.isdaikuan, isdaikuan) ||
                other.isdaikuan == isdaikuan) &&
            (identical(other.daikuancontent, daikuancontent) ||
                other.daikuancontent == daikuancontent) &&
            (identical(other.jiemoney, jiemoney) ||
                other.jiemoney == jiemoney) &&
            (identical(other.huanmoney, huanmoney) ||
                other.huanmoney == huanmoney) &&
            (identical(other.yidaimoney, yidaimoney) ||
                other.yidaimoney == yidaimoney) &&
            (identical(other.txmoney, txmoney) || other.txmoney == txmoney) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.earlyRepayContent, earlyRepayContent) ||
                other.earlyRepayContent == earlyRepayContent) &&
            (identical(other.esignature, esignature) ||
                other.esignature == esignature) &&
            (identical(other.huankuancontent, huankuancontent) ||
                other.huankuancontent == huankuancontent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      withdrawalmin,
      money,
      isdaikuan,
      daikuancontent,
      jiemoney,
      huanmoney,
      yidaimoney,
      txmoney,
      amount,
      earlyRepayContent,
      esignature,
      huankuancontent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanStatusModelImplCopyWith<_$LoanStatusModelImpl> get copyWith =>
      __$$LoanStatusModelImplCopyWithImpl<_$LoanStatusModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanStatusModelImplToJson(
      this,
    );
  }
}

abstract class _LoanStatusModel implements LoanStatusModel {
  const factory _LoanStatusModel(
      {@JsonKey(name: "status") final int? status,
      @JsonKey(name: "withdrawalmin") final String? withdrawalmin,
      @JsonKey(name: "money") final String? money,
      @JsonKey(name: "isdaikuan") final int? isdaikuan,
      @JsonKey(name: "daikuancontent") final String? daikuancontent,
      @JsonKey(name: "jiemoney") final String? jiemoney,
      @JsonKey(name: "huanmoney") final String? huanmoney,
      @JsonKey(name: "yidaimoney") final String? yidaimoney,
      @JsonKey(name: "txmoney") final String? txmoney,
      @JsonKey(name: "amount") final String? amount,
      @JsonKey(name: "huankuan_tiqian_content") final String? earlyRepayContent,
      final int? esignature,
      @JsonKey(name: "huankuancontent")
      final String? huankuancontent}) = _$LoanStatusModelImpl;

  factory _LoanStatusModel.fromJson(Map<String, dynamic> json) =
      _$LoanStatusModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "withdrawalmin")
  String? get withdrawalmin;
  @override
  @JsonKey(name: "money")
  String? get money;
  @override
  @JsonKey(name: "isdaikuan")
  int? get isdaikuan;
  @override
  @JsonKey(name: "daikuancontent")
  String? get daikuancontent;
  @override
  @JsonKey(name: "jiemoney")
  String? get jiemoney;
  @override
  @JsonKey(name: "huanmoney")
  String? get huanmoney;
  @override
  @JsonKey(name: "yidaimoney")
  String? get yidaimoney;
  @override
  @JsonKey(name: "txmoney")
  String? get txmoney;
  @override
  @JsonKey(name: "amount")
  String? get amount;
  @override
  @JsonKey(name: "huankuan_tiqian_content")
  String? get earlyRepayContent;
  @override
  int? get esignature;
  @override
  @JsonKey(name: "huankuancontent")
  String? get huankuancontent;
  @override
  @JsonKey(ignore: true)
  _$$LoanStatusModelImplCopyWith<_$LoanStatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
