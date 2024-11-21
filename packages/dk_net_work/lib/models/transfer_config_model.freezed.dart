// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransferConfigModel _$TransferConfigModelFromJson(Map<String, dynamic> json) {
  return _TransferConfigModel.fromJson(json);
}

/// @nodoc
mixin _$TransferConfigModel {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  String? get msg => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransferConfigModelCopyWith<TransferConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferConfigModelCopyWith<$Res> {
  factory $TransferConfigModelCopyWith(
          TransferConfigModel value, $Res Function(TransferConfigModel) then) =
      _$TransferConfigModelCopyWithImpl<$Res, TransferConfigModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$TransferConfigModelCopyWithImpl<$Res, $Val extends TransferConfigModel>
    implements $TransferConfigModelCopyWith<$Res> {
  _$TransferConfigModelCopyWithImpl(this._value, this._then);

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
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransferConfigModelImplCopyWith<$Res>
    implements $TransferConfigModelCopyWith<$Res> {
  factory _$$TransferConfigModelImplCopyWith(_$TransferConfigModelImpl value,
          $Res Function(_$TransferConfigModelImpl) then) =
      __$$TransferConfigModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "msg") String? msg,
      @JsonKey(name: "data") Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$TransferConfigModelImplCopyWithImpl<$Res>
    extends _$TransferConfigModelCopyWithImpl<$Res, _$TransferConfigModelImpl>
    implements _$$TransferConfigModelImplCopyWith<$Res> {
  __$$TransferConfigModelImplCopyWithImpl(_$TransferConfigModelImpl _value,
      $Res Function(_$TransferConfigModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_$TransferConfigModelImpl(
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
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransferConfigModelImpl implements _TransferConfigModel {
  const _$TransferConfigModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "msg") this.msg,
      @JsonKey(name: "data") this.data});

  factory _$TransferConfigModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransferConfigModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "msg")
  final String? msg;
  @override
  @JsonKey(name: "data")
  final Data? data;

  @override
  String toString() {
    return 'TransferConfigModel(status: $status, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferConfigModelImpl &&
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
  _$$TransferConfigModelImplCopyWith<_$TransferConfigModelImpl> get copyWith =>
      __$$TransferConfigModelImplCopyWithImpl<_$TransferConfigModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransferConfigModelImplToJson(
      this,
    );
  }
}

abstract class _TransferConfigModel implements TransferConfigModel {
  const factory _TransferConfigModel(
      {@JsonKey(name: "status") final int? status,
      @JsonKey(name: "msg") final String? msg,
      @JsonKey(name: "data") final Data? data}) = _$TransferConfigModelImpl;

  factory _TransferConfigModel.fromJson(Map<String, dynamic> json) =
      _$TransferConfigModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "msg")
  String? get msg;
  @override
  @JsonKey(name: "data")
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$TransferConfigModelImplCopyWith<_$TransferConfigModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "txmoney")
  String? get txmoney => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "invicode")
  String? get invicode => throw _privateConstructorUsedError;
  @JsonKey(name: "in_method")
  List<InMethod>? get inMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "out_method")
  List<OutMethod>? get outMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "zhuantixianyue")
  int? get zhuantixianyue => throw _privateConstructorUsedError;
  @JsonKey(name: "zhuantouzi")
  int? get zhuantouzi => throw _privateConstructorUsedError;
  @JsonKey(name: "tixianzhanghu")
  int? get tixianzhanghu => throw _privateConstructorUsedError;
  String? get tip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "txmoney") String? txmoney,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "invicode") String? invicode,
      @JsonKey(name: "in_method") List<InMethod>? inMethod,
      @JsonKey(name: "out_method") List<OutMethod>? outMethod,
      @JsonKey(name: "zhuantixianyue") int? zhuantixianyue,
      @JsonKey(name: "zhuantouzi") int? zhuantouzi,
      @JsonKey(name: "tixianzhanghu") int? tixianzhanghu,
      String? tip});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txmoney = freezed,
    Object? amount = freezed,
    Object? invicode = freezed,
    Object? inMethod = freezed,
    Object? outMethod = freezed,
    Object? zhuantixianyue = freezed,
    Object? zhuantouzi = freezed,
    Object? tixianzhanghu = freezed,
    Object? tip = freezed,
  }) {
    return _then(_value.copyWith(
      txmoney: freezed == txmoney
          ? _value.txmoney
          : txmoney // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      invicode: freezed == invicode
          ? _value.invicode
          : invicode // ignore: cast_nullable_to_non_nullable
              as String?,
      inMethod: freezed == inMethod
          ? _value.inMethod
          : inMethod // ignore: cast_nullable_to_non_nullable
              as List<InMethod>?,
      outMethod: freezed == outMethod
          ? _value.outMethod
          : outMethod // ignore: cast_nullable_to_non_nullable
              as List<OutMethod>?,
      zhuantixianyue: freezed == zhuantixianyue
          ? _value.zhuantixianyue
          : zhuantixianyue // ignore: cast_nullable_to_non_nullable
              as int?,
      zhuantouzi: freezed == zhuantouzi
          ? _value.zhuantouzi
          : zhuantouzi // ignore: cast_nullable_to_non_nullable
              as int?,
      tixianzhanghu: freezed == tixianzhanghu
          ? _value.tixianzhanghu
          : tixianzhanghu // ignore: cast_nullable_to_non_nullable
              as int?,
      tip: freezed == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "txmoney") String? txmoney,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "invicode") String? invicode,
      @JsonKey(name: "in_method") List<InMethod>? inMethod,
      @JsonKey(name: "out_method") List<OutMethod>? outMethod,
      @JsonKey(name: "zhuantixianyue") int? zhuantixianyue,
      @JsonKey(name: "zhuantouzi") int? zhuantouzi,
      @JsonKey(name: "tixianzhanghu") int? tixianzhanghu,
      String? tip});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txmoney = freezed,
    Object? amount = freezed,
    Object? invicode = freezed,
    Object? inMethod = freezed,
    Object? outMethod = freezed,
    Object? zhuantixianyue = freezed,
    Object? zhuantouzi = freezed,
    Object? tixianzhanghu = freezed,
    Object? tip = freezed,
  }) {
    return _then(_$DataImpl(
      txmoney: freezed == txmoney
          ? _value.txmoney
          : txmoney // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      invicode: freezed == invicode
          ? _value.invicode
          : invicode // ignore: cast_nullable_to_non_nullable
              as String?,
      inMethod: freezed == inMethod
          ? _value._inMethod
          : inMethod // ignore: cast_nullable_to_non_nullable
              as List<InMethod>?,
      outMethod: freezed == outMethod
          ? _value._outMethod
          : outMethod // ignore: cast_nullable_to_non_nullable
              as List<OutMethod>?,
      zhuantixianyue: freezed == zhuantixianyue
          ? _value.zhuantixianyue
          : zhuantixianyue // ignore: cast_nullable_to_non_nullable
              as int?,
      zhuantouzi: freezed == zhuantouzi
          ? _value.zhuantouzi
          : zhuantouzi // ignore: cast_nullable_to_non_nullable
              as int?,
      tixianzhanghu: freezed == tixianzhanghu
          ? _value.tixianzhanghu
          : tixianzhanghu // ignore: cast_nullable_to_non_nullable
              as int?,
      tip: freezed == tip
          ? _value.tip
          : tip // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "txmoney") this.txmoney,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "invicode") this.invicode,
      @JsonKey(name: "in_method") final List<InMethod>? inMethod,
      @JsonKey(name: "out_method") final List<OutMethod>? outMethod,
      @JsonKey(name: "zhuantixianyue") this.zhuantixianyue,
      @JsonKey(name: "zhuantouzi") this.zhuantouzi,
      @JsonKey(name: "tixianzhanghu") this.tixianzhanghu,
      this.tip})
      : _inMethod = inMethod,
        _outMethod = outMethod;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "txmoney")
  final String? txmoney;
  @override
  @JsonKey(name: "amount")
  final String? amount;
  @override
  @JsonKey(name: "invicode")
  final String? invicode;
  final List<InMethod>? _inMethod;
  @override
  @JsonKey(name: "in_method")
  List<InMethod>? get inMethod {
    final value = _inMethod;
    if (value == null) return null;
    if (_inMethod is EqualUnmodifiableListView) return _inMethod;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OutMethod>? _outMethod;
  @override
  @JsonKey(name: "out_method")
  List<OutMethod>? get outMethod {
    final value = _outMethod;
    if (value == null) return null;
    if (_outMethod is EqualUnmodifiableListView) return _outMethod;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "zhuantixianyue")
  final int? zhuantixianyue;
  @override
  @JsonKey(name: "zhuantouzi")
  final int? zhuantouzi;
  @override
  @JsonKey(name: "tixianzhanghu")
  final int? tixianzhanghu;
  @override
  final String? tip;

  @override
  String toString() {
    return 'Data(txmoney: $txmoney, amount: $amount, invicode: $invicode, inMethod: $inMethod, outMethod: $outMethod, zhuantixianyue: $zhuantixianyue, zhuantouzi: $zhuantouzi, tixianzhanghu: $tixianzhanghu, tip: $tip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.txmoney, txmoney) || other.txmoney == txmoney) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.invicode, invicode) ||
                other.invicode == invicode) &&
            const DeepCollectionEquality().equals(other._inMethod, _inMethod) &&
            const DeepCollectionEquality()
                .equals(other._outMethod, _outMethod) &&
            (identical(other.zhuantixianyue, zhuantixianyue) ||
                other.zhuantixianyue == zhuantixianyue) &&
            (identical(other.zhuantouzi, zhuantouzi) ||
                other.zhuantouzi == zhuantouzi) &&
            (identical(other.tixianzhanghu, tixianzhanghu) ||
                other.tixianzhanghu == tixianzhanghu) &&
            (identical(other.tip, tip) || other.tip == tip));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      txmoney,
      amount,
      invicode,
      const DeepCollectionEquality().hash(_inMethod),
      const DeepCollectionEquality().hash(_outMethod),
      zhuantixianyue,
      zhuantouzi,
      tixianzhanghu,
      tip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: "txmoney") final String? txmoney,
      @JsonKey(name: "amount") final String? amount,
      @JsonKey(name: "invicode") final String? invicode,
      @JsonKey(name: "in_method") final List<InMethod>? inMethod,
      @JsonKey(name: "out_method") final List<OutMethod>? outMethod,
      @JsonKey(name: "zhuantixianyue") final int? zhuantixianyue,
      @JsonKey(name: "zhuantouzi") final int? zhuantouzi,
      @JsonKey(name: "tixianzhanghu") final int? tixianzhanghu,
      final String? tip}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "txmoney")
  String? get txmoney;
  @override
  @JsonKey(name: "amount")
  String? get amount;
  @override
  @JsonKey(name: "invicode")
  String? get invicode;
  @override
  @JsonKey(name: "in_method")
  List<InMethod>? get inMethod;
  @override
  @JsonKey(name: "out_method")
  List<OutMethod>? get outMethod;
  @override
  @JsonKey(name: "zhuantixianyue")
  int? get zhuantixianyue;
  @override
  @JsonKey(name: "zhuantouzi")
  int? get zhuantouzi;
  @override
  @JsonKey(name: "tixianzhanghu")
  int? get tixianzhanghu;
  @override
  String? get tip;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InMethod _$InMethodFromJson(Map<String, dynamic> json) {
  return _InMethod.fromJson(json);
}

/// @nodoc
mixin _$InMethod {
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InMethodCopyWith<InMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InMethodCopyWith<$Res> {
  factory $InMethodCopyWith(InMethod value, $Res Function(InMethod) then) =
      _$InMethodCopyWithImpl<$Res, InMethod>;
  @useResult
  $Res call(
      {@JsonKey(name: "title") String? title, @JsonKey(name: "id") int? id});
}

/// @nodoc
class _$InMethodCopyWithImpl<$Res, $Val extends InMethod>
    implements $InMethodCopyWith<$Res> {
  _$InMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InMethodImplCopyWith<$Res>
    implements $InMethodCopyWith<$Res> {
  factory _$$InMethodImplCopyWith(
          _$InMethodImpl value, $Res Function(_$InMethodImpl) then) =
      __$$InMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "title") String? title, @JsonKey(name: "id") int? id});
}

/// @nodoc
class __$$InMethodImplCopyWithImpl<$Res>
    extends _$InMethodCopyWithImpl<$Res, _$InMethodImpl>
    implements _$$InMethodImplCopyWith<$Res> {
  __$$InMethodImplCopyWithImpl(
      _$InMethodImpl _value, $Res Function(_$InMethodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? id = freezed,
  }) {
    return _then(_$InMethodImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InMethodImpl implements _InMethod {
  const _$InMethodImpl(
      {@JsonKey(name: "title") this.title, @JsonKey(name: "id") this.id});

  factory _$InMethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$InMethodImplFromJson(json);

  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "id")
  final int? id;

  @override
  String toString() {
    return 'InMethod(title: $title, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InMethodImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InMethodImplCopyWith<_$InMethodImpl> get copyWith =>
      __$$InMethodImplCopyWithImpl<_$InMethodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InMethodImplToJson(
      this,
    );
  }
}

abstract class _InMethod implements InMethod {
  const factory _InMethod(
      {@JsonKey(name: "title") final String? title,
      @JsonKey(name: "id") final int? id}) = _$InMethodImpl;

  factory _InMethod.fromJson(Map<String, dynamic> json) =
      _$InMethodImpl.fromJson;

  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$InMethodImplCopyWith<_$InMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OutMethod _$OutMethodFromJson(Map<String, dynamic> json) {
  return _OutMethod.fromJson(json);
}

/// @nodoc
mixin _$OutMethod {
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutMethodCopyWith<OutMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutMethodCopyWith<$Res> {
  factory $OutMethodCopyWith(OutMethod value, $Res Function(OutMethod) then) =
      _$OutMethodCopyWithImpl<$Res, OutMethod>;
  @useResult
  $Res call(
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "id") int? id});
}

/// @nodoc
class _$OutMethodCopyWithImpl<$Res, $Val extends OutMethod>
    implements $OutMethodCopyWith<$Res> {
  _$OutMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? amount = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OutMethodImplCopyWith<$Res>
    implements $OutMethodCopyWith<$Res> {
  factory _$$OutMethodImplCopyWith(
          _$OutMethodImpl value, $Res Function(_$OutMethodImpl) then) =
      __$$OutMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "title") String? title,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "id") int? id});
}

/// @nodoc
class __$$OutMethodImplCopyWithImpl<$Res>
    extends _$OutMethodCopyWithImpl<$Res, _$OutMethodImpl>
    implements _$$OutMethodImplCopyWith<$Res> {
  __$$OutMethodImplCopyWithImpl(
      _$OutMethodImpl _value, $Res Function(_$OutMethodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? amount = freezed,
    Object? id = freezed,
  }) {
    return _then(_$OutMethodImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutMethodImpl implements _OutMethod {
  const _$OutMethodImpl(
      {@JsonKey(name: "title") this.title,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "id") this.id});

  factory _$OutMethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutMethodImplFromJson(json);

  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "amount")
  final String? amount;
  @override
  @JsonKey(name: "id")
  final int? id;

  @override
  String toString() {
    return 'OutMethod(title: $title, amount: $amount, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutMethodImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, amount, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OutMethodImplCopyWith<_$OutMethodImpl> get copyWith =>
      __$$OutMethodImplCopyWithImpl<_$OutMethodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OutMethodImplToJson(
      this,
    );
  }
}

abstract class _OutMethod implements OutMethod {
  const factory _OutMethod(
      {@JsonKey(name: "title") final String? title,
      @JsonKey(name: "amount") final String? amount,
      @JsonKey(name: "id") final int? id}) = _$OutMethodImpl;

  factory _OutMethod.fromJson(Map<String, dynamic> json) =
      _$OutMethodImpl.fromJson;

  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "amount")
  String? get amount;
  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$OutMethodImplCopyWith<_$OutMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
