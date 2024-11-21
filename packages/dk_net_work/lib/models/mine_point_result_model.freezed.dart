// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mine_point_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MinePointResultModel _$MinePointResultModelFromJson(Map<String, dynamic> json) {
  return _MinePointResultModel.fromJson(json);
}

/// @nodoc
mixin _$MinePointResultModel {
  int? get status => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MinePointResultModelCopyWith<MinePointResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinePointResultModelCopyWith<$Res> {
  factory $MinePointResultModelCopyWith(MinePointResultModel value,
          $Res Function(MinePointResultModel) then) =
      _$MinePointResultModelCopyWithImpl<$Res, MinePointResultModel>;
  @useResult
  $Res call({int? status, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$MinePointResultModelCopyWithImpl<$Res,
        $Val extends MinePointResultModel>
    implements $MinePointResultModelCopyWith<$Res> {
  _$MinePointResultModelCopyWithImpl(this._value, this._then);

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
abstract class _$$MinePointResultModelImplCopyWith<$Res>
    implements $MinePointResultModelCopyWith<$Res> {
  factory _$$MinePointResultModelImplCopyWith(_$MinePointResultModelImpl value,
          $Res Function(_$MinePointResultModelImpl) then) =
      __$$MinePointResultModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$MinePointResultModelImplCopyWithImpl<$Res>
    extends _$MinePointResultModelCopyWithImpl<$Res, _$MinePointResultModelImpl>
    implements _$$MinePointResultModelImplCopyWith<$Res> {
  __$$MinePointResultModelImplCopyWithImpl(_$MinePointResultModelImpl _value,
      $Res Function(_$MinePointResultModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$MinePointResultModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MinePointResultModelImpl implements _MinePointResultModel {
  const _$MinePointResultModelImpl({this.status, this.data});

  factory _$MinePointResultModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MinePointResultModelImplFromJson(json);

  @override
  final int? status;
  @override
  final Data? data;

  @override
  String toString() {
    return 'MinePointResultModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinePointResultModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MinePointResultModelImplCopyWith<_$MinePointResultModelImpl>
      get copyWith =>
          __$$MinePointResultModelImplCopyWithImpl<_$MinePointResultModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MinePointResultModelImplToJson(
      this,
    );
  }
}

abstract class _MinePointResultModel implements MinePointResultModel {
  const factory _MinePointResultModel({final int? status, final Data? data}) =
      _$MinePointResultModelImpl;

  factory _MinePointResultModel.fromJson(Map<String, dynamic> json) =
      _$MinePointResultModelImpl.fromJson;

  @override
  int? get status;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$MinePointResultModelImplCopyWith<_$MinePointResultModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "Pointsratio")
  String? get pointsratio => throw _privateConstructorUsedError;
  String? get integral => throw _privateConstructorUsedError;
  String? get minExchange => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "Pointsratio") String? pointsratio,
      String? integral,
      String? minExchange});
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
    Object? pointsratio = freezed,
    Object? integral = freezed,
    Object? minExchange = freezed,
  }) {
    return _then(_value.copyWith(
      pointsratio: freezed == pointsratio
          ? _value.pointsratio
          : pointsratio // ignore: cast_nullable_to_non_nullable
              as String?,
      integral: freezed == integral
          ? _value.integral
          : integral // ignore: cast_nullable_to_non_nullable
              as String?,
      minExchange: freezed == minExchange
          ? _value.minExchange
          : minExchange // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "Pointsratio") String? pointsratio,
      String? integral,
      String? minExchange});
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
    Object? pointsratio = freezed,
    Object? integral = freezed,
    Object? minExchange = freezed,
  }) {
    return _then(_$DataImpl(
      pointsratio: freezed == pointsratio
          ? _value.pointsratio
          : pointsratio // ignore: cast_nullable_to_non_nullable
              as String?,
      integral: freezed == integral
          ? _value.integral
          : integral // ignore: cast_nullable_to_non_nullable
              as String?,
      minExchange: freezed == minExchange
          ? _value.minExchange
          : minExchange // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "Pointsratio") this.pointsratio,
      this.integral,
      this.minExchange});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "Pointsratio")
  final String? pointsratio;
  @override
  final String? integral;
  @override
  final String? minExchange;

  @override
  String toString() {
    return 'Data(pointsratio: $pointsratio, integral: $integral, minExchange: $minExchange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.pointsratio, pointsratio) ||
                other.pointsratio == pointsratio) &&
            (identical(other.integral, integral) ||
                other.integral == integral) &&
            (identical(other.minExchange, minExchange) ||
                other.minExchange == minExchange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, pointsratio, integral, minExchange);

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
      {@JsonKey(name: "Pointsratio") final String? pointsratio,
      final String? integral,
      final String? minExchange}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "Pointsratio")
  String? get pointsratio;
  @override
  String? get integral;
  @override
  String? get minExchange;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
