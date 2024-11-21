// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountDetailModel _$AccountDetailModelFromJson(Map<String, dynamic> json) {
  return _AccountDetailModel.fromJson(json);
}

/// @nodoc
mixin _$AccountDetailModel {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  AccountDetailData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountDetailModelCopyWith<AccountDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDetailModelCopyWith<$Res> {
  factory $AccountDetailModelCopyWith(
          AccountDetailModel value, $Res Function(AccountDetailModel) then) =
      _$AccountDetailModelCopyWithImpl<$Res, AccountDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "data") AccountDetailData? data});

  $AccountDetailDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AccountDetailModelCopyWithImpl<$Res, $Val extends AccountDetailModel>
    implements $AccountDetailModelCopyWith<$Res> {
  _$AccountDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AccountDetailData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountDetailDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AccountDetailDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountDetailModelImplCopyWith<$Res>
    implements $AccountDetailModelCopyWith<$Res> {
  factory _$$AccountDetailModelImplCopyWith(_$AccountDetailModelImpl value,
          $Res Function(_$AccountDetailModelImpl) then) =
      __$$AccountDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "data") AccountDetailData? data});

  @override
  $AccountDetailDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AccountDetailModelImplCopyWithImpl<$Res>
    extends _$AccountDetailModelCopyWithImpl<$Res, _$AccountDetailModelImpl>
    implements _$$AccountDetailModelImplCopyWith<$Res> {
  __$$AccountDetailModelImplCopyWithImpl(_$AccountDetailModelImpl _value,
      $Res Function(_$AccountDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AccountDetailModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AccountDetailData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountDetailModelImpl implements _AccountDetailModel {
  const _$AccountDetailModelImpl(
      {@JsonKey(name: "status") this.status, @JsonKey(name: "data") this.data});

  factory _$AccountDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountDetailModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "data")
  final AccountDetailData? data;

  @override
  String toString() {
    return 'AccountDetailModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDetailModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountDetailModelImplCopyWith<_$AccountDetailModelImpl> get copyWith =>
      __$$AccountDetailModelImplCopyWithImpl<_$AccountDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountDetailModelImplToJson(
      this,
    );
  }
}

abstract class _AccountDetailModel implements AccountDetailModel {
  const factory _AccountDetailModel(
          {@JsonKey(name: "status") final int? status,
          @JsonKey(name: "data") final AccountDetailData? data}) =
      _$AccountDetailModelImpl;

  factory _AccountDetailModel.fromJson(Map<String, dynamic> json) =
      _$AccountDetailModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "data")
  AccountDetailData? get data;
  @override
  @JsonKey(ignore: true)
  _$$AccountDetailModelImplCopyWith<_$AccountDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AccountDetailData _$AccountDetailDataFromJson(Map<String, dynamic> json) {
  return _AccountDetailData.fromJson(json);
}

/// @nodoc
mixin _$AccountDetailData {
  @JsonKey(name: "amount")
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "txmoney")
  String? get txmoney => throw _privateConstructorUsedError;
  @JsonKey(name: "Dmoneys")
  String? get dmoneys => throw _privateConstructorUsedError;
  @JsonKey(name: "Ymoneys")
  String? get ymoneys => throw _privateConstructorUsedError;
  @JsonKey(name: "buyjsamounts")
  String? get buyjsamounts => throw _privateConstructorUsedError;
  @JsonKey(name: "withdrawals")
  String? get withdrawals => throw _privateConstructorUsedError;
  @JsonKey(name: "mark")
  String? get mark => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountDetailDataCopyWith<AccountDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDetailDataCopyWith<$Res> {
  factory $AccountDetailDataCopyWith(
          AccountDetailData value, $Res Function(AccountDetailData) then) =
      _$AccountDetailDataCopyWithImpl<$Res, AccountDetailData>;
  @useResult
  $Res call(
      {@JsonKey(name: "amount") String? amount,
      @JsonKey(name: "txmoney") String? txmoney,
      @JsonKey(name: "Dmoneys") String? dmoneys,
      @JsonKey(name: "Ymoneys") String? ymoneys,
      @JsonKey(name: "buyjsamounts") String? buyjsamounts,
      @JsonKey(name: "withdrawals") String? withdrawals,
      @JsonKey(name: "mark") String? mark});
}

/// @nodoc
class _$AccountDetailDataCopyWithImpl<$Res, $Val extends AccountDetailData>
    implements $AccountDetailDataCopyWith<$Res> {
  _$AccountDetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? txmoney = freezed,
    Object? dmoneys = freezed,
    Object? ymoneys = freezed,
    Object? buyjsamounts = freezed,
    Object? withdrawals = freezed,
    Object? mark = freezed,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      txmoney: freezed == txmoney
          ? _value.txmoney
          : txmoney // ignore: cast_nullable_to_non_nullable
              as String?,
      dmoneys: freezed == dmoneys
          ? _value.dmoneys
          : dmoneys // ignore: cast_nullable_to_non_nullable
              as String?,
      ymoneys: freezed == ymoneys
          ? _value.ymoneys
          : ymoneys // ignore: cast_nullable_to_non_nullable
              as String?,
      buyjsamounts: freezed == buyjsamounts
          ? _value.buyjsamounts
          : buyjsamounts // ignore: cast_nullable_to_non_nullable
              as String?,
      withdrawals: freezed == withdrawals
          ? _value.withdrawals
          : withdrawals // ignore: cast_nullable_to_non_nullable
              as String?,
      mark: freezed == mark
          ? _value.mark
          : mark // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountDetailDataImplCopyWith<$Res>
    implements $AccountDetailDataCopyWith<$Res> {
  factory _$$AccountDetailDataImplCopyWith(_$AccountDetailDataImpl value,
          $Res Function(_$AccountDetailDataImpl) then) =
      __$$AccountDetailDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "amount") String? amount,
      @JsonKey(name: "txmoney") String? txmoney,
      @JsonKey(name: "Dmoneys") String? dmoneys,
      @JsonKey(name: "Ymoneys") String? ymoneys,
      @JsonKey(name: "buyjsamounts") String? buyjsamounts,
      @JsonKey(name: "withdrawals") String? withdrawals,
      @JsonKey(name: "mark") String? mark});
}

/// @nodoc
class __$$AccountDetailDataImplCopyWithImpl<$Res>
    extends _$AccountDetailDataCopyWithImpl<$Res, _$AccountDetailDataImpl>
    implements _$$AccountDetailDataImplCopyWith<$Res> {
  __$$AccountDetailDataImplCopyWithImpl(_$AccountDetailDataImpl _value,
      $Res Function(_$AccountDetailDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? txmoney = freezed,
    Object? dmoneys = freezed,
    Object? ymoneys = freezed,
    Object? buyjsamounts = freezed,
    Object? withdrawals = freezed,
    Object? mark = freezed,
  }) {
    return _then(_$AccountDetailDataImpl(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      txmoney: freezed == txmoney
          ? _value.txmoney
          : txmoney // ignore: cast_nullable_to_non_nullable
              as String?,
      dmoneys: freezed == dmoneys
          ? _value.dmoneys
          : dmoneys // ignore: cast_nullable_to_non_nullable
              as String?,
      ymoneys: freezed == ymoneys
          ? _value.ymoneys
          : ymoneys // ignore: cast_nullable_to_non_nullable
              as String?,
      buyjsamounts: freezed == buyjsamounts
          ? _value.buyjsamounts
          : buyjsamounts // ignore: cast_nullable_to_non_nullable
              as String?,
      withdrawals: freezed == withdrawals
          ? _value.withdrawals
          : withdrawals // ignore: cast_nullable_to_non_nullable
              as String?,
      mark: freezed == mark
          ? _value.mark
          : mark // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountDetailDataImpl implements _AccountDetailData {
  const _$AccountDetailDataImpl(
      {@JsonKey(name: "amount") this.amount,
      @JsonKey(name: "txmoney") this.txmoney,
      @JsonKey(name: "Dmoneys") this.dmoneys,
      @JsonKey(name: "Ymoneys") this.ymoneys,
      @JsonKey(name: "buyjsamounts") this.buyjsamounts,
      @JsonKey(name: "withdrawals") this.withdrawals,
      @JsonKey(name: "mark") this.mark});

  factory _$AccountDetailDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountDetailDataImplFromJson(json);

  @override
  @JsonKey(name: "amount")
  final String? amount;
  @override
  @JsonKey(name: "txmoney")
  final String? txmoney;
  @override
  @JsonKey(name: "Dmoneys")
  final String? dmoneys;
  @override
  @JsonKey(name: "Ymoneys")
  final String? ymoneys;
  @override
  @JsonKey(name: "buyjsamounts")
  final String? buyjsamounts;
  @override
  @JsonKey(name: "withdrawals")
  final String? withdrawals;
  @override
  @JsonKey(name: "mark")
  final String? mark;

  @override
  String toString() {
    return 'AccountDetailData(amount: $amount, txmoney: $txmoney, dmoneys: $dmoneys, ymoneys: $ymoneys, buyjsamounts: $buyjsamounts, withdrawals: $withdrawals, mark: $mark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDetailDataImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.txmoney, txmoney) || other.txmoney == txmoney) &&
            (identical(other.dmoneys, dmoneys) || other.dmoneys == dmoneys) &&
            (identical(other.ymoneys, ymoneys) || other.ymoneys == ymoneys) &&
            (identical(other.buyjsamounts, buyjsamounts) ||
                other.buyjsamounts == buyjsamounts) &&
            (identical(other.withdrawals, withdrawals) ||
                other.withdrawals == withdrawals) &&
            (identical(other.mark, mark) || other.mark == mark));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, txmoney, dmoneys,
      ymoneys, buyjsamounts, withdrawals, mark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountDetailDataImplCopyWith<_$AccountDetailDataImpl> get copyWith =>
      __$$AccountDetailDataImplCopyWithImpl<_$AccountDetailDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountDetailDataImplToJson(
      this,
    );
  }
}

abstract class _AccountDetailData implements AccountDetailData {
  const factory _AccountDetailData(
      {@JsonKey(name: "amount") final String? amount,
      @JsonKey(name: "txmoney") final String? txmoney,
      @JsonKey(name: "Dmoneys") final String? dmoneys,
      @JsonKey(name: "Ymoneys") final String? ymoneys,
      @JsonKey(name: "buyjsamounts") final String? buyjsamounts,
      @JsonKey(name: "withdrawals") final String? withdrawals,
      @JsonKey(name: "mark") final String? mark}) = _$AccountDetailDataImpl;

  factory _AccountDetailData.fromJson(Map<String, dynamic> json) =
      _$AccountDetailDataImpl.fromJson;

  @override
  @JsonKey(name: "amount")
  String? get amount;
  @override
  @JsonKey(name: "txmoney")
  String? get txmoney;
  @override
  @JsonKey(name: "Dmoneys")
  String? get dmoneys;
  @override
  @JsonKey(name: "Ymoneys")
  String? get ymoneys;
  @override
  @JsonKey(name: "buyjsamounts")
  String? get buyjsamounts;
  @override
  @JsonKey(name: "withdrawals")
  String? get withdrawals;
  @override
  @JsonKey(name: "mark")
  String? get mark;
  @override
  @JsonKey(ignore: true)
  _$$AccountDetailDataImplCopyWith<_$AccountDetailDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
