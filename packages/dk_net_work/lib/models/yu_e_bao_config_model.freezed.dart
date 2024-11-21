// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'yu_e_bao_config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

YueBaoConfigModel _$YueBaoConfigModelFromJson(Map<String, dynamic> json) {
  return _YueBaoConfigModel.fromJson(json);
}

/// @nodoc
mixin _$YueBaoConfigModel {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  DataConfig? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YueBaoConfigModelCopyWith<YueBaoConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YueBaoConfigModelCopyWith<$Res> {
  factory $YueBaoConfigModelCopyWith(
          YueBaoConfigModel value, $Res Function(YueBaoConfigModel) then) =
      _$YueBaoConfigModelCopyWithImpl<$Res, YueBaoConfigModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "data") DataConfig? data});

  $DataConfigCopyWith<$Res>? get data;
}

/// @nodoc
class _$YueBaoConfigModelCopyWithImpl<$Res, $Val extends YueBaoConfigModel>
    implements $YueBaoConfigModelCopyWith<$Res> {
  _$YueBaoConfigModelCopyWithImpl(this._value, this._then);

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
              as DataConfig?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataConfigCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataConfigCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$YueBaoConfigModelImplCopyWith<$Res>
    implements $YueBaoConfigModelCopyWith<$Res> {
  factory _$$YueBaoConfigModelImplCopyWith(_$YueBaoConfigModelImpl value,
          $Res Function(_$YueBaoConfigModelImpl) then) =
      __$$YueBaoConfigModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "data") DataConfig? data});

  @override
  $DataConfigCopyWith<$Res>? get data;
}

/// @nodoc
class __$$YueBaoConfigModelImplCopyWithImpl<$Res>
    extends _$YueBaoConfigModelCopyWithImpl<$Res, _$YueBaoConfigModelImpl>
    implements _$$YueBaoConfigModelImplCopyWith<$Res> {
  __$$YueBaoConfigModelImplCopyWithImpl(_$YueBaoConfigModelImpl _value,
      $Res Function(_$YueBaoConfigModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$YueBaoConfigModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataConfig?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YueBaoConfigModelImpl implements _YueBaoConfigModel {
  const _$YueBaoConfigModelImpl(
      {@JsonKey(name: "status") this.status, @JsonKey(name: "data") this.data});

  factory _$YueBaoConfigModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$YueBaoConfigModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "data")
  final DataConfig? data;

  @override
  String toString() {
    return 'YueBaoConfigModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YueBaoConfigModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YueBaoConfigModelImplCopyWith<_$YueBaoConfigModelImpl> get copyWith =>
      __$$YueBaoConfigModelImplCopyWithImpl<_$YueBaoConfigModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YueBaoConfigModelImplToJson(
      this,
    );
  }
}

abstract class _YueBaoConfigModel implements YueBaoConfigModel {
  const factory _YueBaoConfigModel(
      {@JsonKey(name: "status") final int? status,
      @JsonKey(name: "data") final DataConfig? data}) = _$YueBaoConfigModelImpl;

  factory _YueBaoConfigModel.fromJson(Map<String, dynamic> json) =
      _$YueBaoConfigModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "data")
  DataConfig? get data;
  @override
  @JsonKey(ignore: true)
  _$$YueBaoConfigModelImplCopyWith<_$YueBaoConfigModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataConfig _$DataConfigFromJson(Map<String, dynamic> json) {
  return _DataConfig.fromJson(json);
}

/// @nodoc
mixin _$DataConfig {
  @JsonKey(name: "zong_jin_e")
  String? get zongJinE => throw _privateConstructorUsedError;
  @JsonKey(name: "fanl_jin_e")
  String? get fanlJinE => throw _privateConstructorUsedError;
  @JsonKey(name: "rule_str")
  String? get ruleStr => throw _privateConstructorUsedError;
  @JsonKey(name: "minduodeli")
  String? get minduodeli => throw _privateConstructorUsedError;
  @JsonKey(name: "txmoney")
  String? get txmoney => throw _privateConstructorUsedError;
  @JsonKey(name: "ratduodeli")
  String? get ratduodeli => throw _privateConstructorUsedError;
  @JsonKey(name: "wanduodeli")
  double? get wanduodeli => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataConfigCopyWith<DataConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataConfigCopyWith<$Res> {
  factory $DataConfigCopyWith(
          DataConfig value, $Res Function(DataConfig) then) =
      _$DataConfigCopyWithImpl<$Res, DataConfig>;
  @useResult
  $Res call(
      {@JsonKey(name: "zong_jin_e") String? zongJinE,
      @JsonKey(name: "fanl_jin_e") String? fanlJinE,
      @JsonKey(name: "rule_str") String? ruleStr,
      @JsonKey(name: "minduodeli") String? minduodeli,
      @JsonKey(name: "txmoney") String? txmoney,
      @JsonKey(name: "ratduodeli") String? ratduodeli,
      @JsonKey(name: "wanduodeli") double? wanduodeli});
}

/// @nodoc
class _$DataConfigCopyWithImpl<$Res, $Val extends DataConfig>
    implements $DataConfigCopyWith<$Res> {
  _$DataConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zongJinE = freezed,
    Object? fanlJinE = freezed,
    Object? ruleStr = freezed,
    Object? minduodeli = freezed,
    Object? txmoney = freezed,
    Object? ratduodeli = freezed,
    Object? wanduodeli = freezed,
  }) {
    return _then(_value.copyWith(
      zongJinE: freezed == zongJinE
          ? _value.zongJinE
          : zongJinE // ignore: cast_nullable_to_non_nullable
              as String?,
      fanlJinE: freezed == fanlJinE
          ? _value.fanlJinE
          : fanlJinE // ignore: cast_nullable_to_non_nullable
              as String?,
      ruleStr: freezed == ruleStr
          ? _value.ruleStr
          : ruleStr // ignore: cast_nullable_to_non_nullable
              as String?,
      minduodeli: freezed == minduodeli
          ? _value.minduodeli
          : minduodeli // ignore: cast_nullable_to_non_nullable
              as String?,
      txmoney: freezed == txmoney
          ? _value.txmoney
          : txmoney // ignore: cast_nullable_to_non_nullable
              as String?,
      ratduodeli: freezed == ratduodeli
          ? _value.ratduodeli
          : ratduodeli // ignore: cast_nullable_to_non_nullable
              as String?,
      wanduodeli: freezed == wanduodeli
          ? _value.wanduodeli
          : wanduodeli // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataConfigImplCopyWith<$Res>
    implements $DataConfigCopyWith<$Res> {
  factory _$$DataConfigImplCopyWith(
          _$DataConfigImpl value, $Res Function(_$DataConfigImpl) then) =
      __$$DataConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "zong_jin_e") String? zongJinE,
      @JsonKey(name: "fanl_jin_e") String? fanlJinE,
      @JsonKey(name: "rule_str") String? ruleStr,
      @JsonKey(name: "minduodeli") String? minduodeli,
      @JsonKey(name: "txmoney") String? txmoney,
      @JsonKey(name: "ratduodeli") String? ratduodeli,
      @JsonKey(name: "wanduodeli") double? wanduodeli});
}

/// @nodoc
class __$$DataConfigImplCopyWithImpl<$Res>
    extends _$DataConfigCopyWithImpl<$Res, _$DataConfigImpl>
    implements _$$DataConfigImplCopyWith<$Res> {
  __$$DataConfigImplCopyWithImpl(
      _$DataConfigImpl _value, $Res Function(_$DataConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zongJinE = freezed,
    Object? fanlJinE = freezed,
    Object? ruleStr = freezed,
    Object? minduodeli = freezed,
    Object? txmoney = freezed,
    Object? ratduodeli = freezed,
    Object? wanduodeli = freezed,
  }) {
    return _then(_$DataConfigImpl(
      zongJinE: freezed == zongJinE
          ? _value.zongJinE
          : zongJinE // ignore: cast_nullable_to_non_nullable
              as String?,
      fanlJinE: freezed == fanlJinE
          ? _value.fanlJinE
          : fanlJinE // ignore: cast_nullable_to_non_nullable
              as String?,
      ruleStr: freezed == ruleStr
          ? _value.ruleStr
          : ruleStr // ignore: cast_nullable_to_non_nullable
              as String?,
      minduodeli: freezed == minduodeli
          ? _value.minduodeli
          : minduodeli // ignore: cast_nullable_to_non_nullable
              as String?,
      txmoney: freezed == txmoney
          ? _value.txmoney
          : txmoney // ignore: cast_nullable_to_non_nullable
              as String?,
      ratduodeli: freezed == ratduodeli
          ? _value.ratduodeli
          : ratduodeli // ignore: cast_nullable_to_non_nullable
              as String?,
      wanduodeli: freezed == wanduodeli
          ? _value.wanduodeli
          : wanduodeli // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataConfigImpl implements _DataConfig {
  const _$DataConfigImpl(
      {@JsonKey(name: "zong_jin_e") this.zongJinE,
      @JsonKey(name: "fanl_jin_e") this.fanlJinE,
      @JsonKey(name: "rule_str") this.ruleStr,
      @JsonKey(name: "minduodeli") this.minduodeli,
      @JsonKey(name: "txmoney") this.txmoney,
      @JsonKey(name: "ratduodeli") this.ratduodeli,
      @JsonKey(name: "wanduodeli") this.wanduodeli});

  factory _$DataConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataConfigImplFromJson(json);

  @override
  @JsonKey(name: "zong_jin_e")
  final String? zongJinE;
  @override
  @JsonKey(name: "fanl_jin_e")
  final String? fanlJinE;
  @override
  @JsonKey(name: "rule_str")
  final String? ruleStr;
  @override
  @JsonKey(name: "minduodeli")
  final String? minduodeli;
  @override
  @JsonKey(name: "txmoney")
  final String? txmoney;
  @override
  @JsonKey(name: "ratduodeli")
  final String? ratduodeli;
  @override
  @JsonKey(name: "wanduodeli")
  final double? wanduodeli;

  @override
  String toString() {
    return 'DataConfig(zongJinE: $zongJinE, fanlJinE: $fanlJinE, ruleStr: $ruleStr, minduodeli: $minduodeli, txmoney: $txmoney, ratduodeli: $ratduodeli, wanduodeli: $wanduodeli)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataConfigImpl &&
            (identical(other.zongJinE, zongJinE) ||
                other.zongJinE == zongJinE) &&
            (identical(other.fanlJinE, fanlJinE) ||
                other.fanlJinE == fanlJinE) &&
            (identical(other.ruleStr, ruleStr) || other.ruleStr == ruleStr) &&
            (identical(other.minduodeli, minduodeli) ||
                other.minduodeli == minduodeli) &&
            (identical(other.txmoney, txmoney) || other.txmoney == txmoney) &&
            (identical(other.ratduodeli, ratduodeli) ||
                other.ratduodeli == ratduodeli) &&
            (identical(other.wanduodeli, wanduodeli) ||
                other.wanduodeli == wanduodeli));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, zongJinE, fanlJinE, ruleStr,
      minduodeli, txmoney, ratduodeli, wanduodeli);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataConfigImplCopyWith<_$DataConfigImpl> get copyWith =>
      __$$DataConfigImplCopyWithImpl<_$DataConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataConfigImplToJson(
      this,
    );
  }
}

abstract class _DataConfig implements DataConfig {
  const factory _DataConfig(
          {@JsonKey(name: "zong_jin_e") final String? zongJinE,
          @JsonKey(name: "fanl_jin_e") final String? fanlJinE,
          @JsonKey(name: "rule_str") final String? ruleStr,
          @JsonKey(name: "minduodeli") final String? minduodeli,
          @JsonKey(name: "txmoney") final String? txmoney,
          @JsonKey(name: "ratduodeli") final String? ratduodeli,
          @JsonKey(name: "wanduodeli") final double? wanduodeli}) =
      _$DataConfigImpl;

  factory _DataConfig.fromJson(Map<String, dynamic> json) =
      _$DataConfigImpl.fromJson;

  @override
  @JsonKey(name: "zong_jin_e")
  String? get zongJinE;
  @override
  @JsonKey(name: "fanl_jin_e")
  String? get fanlJinE;
  @override
  @JsonKey(name: "rule_str")
  String? get ruleStr;
  @override
  @JsonKey(name: "minduodeli")
  String? get minduodeli;
  @override
  @JsonKey(name: "txmoney")
  String? get txmoney;
  @override
  @JsonKey(name: "ratduodeli")
  String? get ratduodeli;
  @override
  @JsonKey(name: "wanduodeli")
  double? get wanduodeli;
  @override
  @JsonKey(ignore: true)
  _$$DataConfigImplCopyWith<_$DataConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
