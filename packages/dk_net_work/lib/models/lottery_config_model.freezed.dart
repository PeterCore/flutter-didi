// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lottery_config_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LotteryConfigModel _$LotteryConfigModelFromJson(Map<String, dynamic> json) {
  return _LotteryConfigModel.fromJson(json);
}

/// @nodoc
mixin _$LotteryConfigModel {
  @JsonKey(name: "state")
  int? get state => throw _privateConstructorUsedError;
  @JsonKey(name: "LotteryPeizhi")
  List<LotteryPeizhi>? get lotteryPeizhi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LotteryConfigModelCopyWith<LotteryConfigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotteryConfigModelCopyWith<$Res> {
  factory $LotteryConfigModelCopyWith(
          LotteryConfigModel value, $Res Function(LotteryConfigModel) then) =
      _$LotteryConfigModelCopyWithImpl<$Res, LotteryConfigModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "state") int? state,
      @JsonKey(name: "LotteryPeizhi") List<LotteryPeizhi>? lotteryPeizhi});
}

/// @nodoc
class _$LotteryConfigModelCopyWithImpl<$Res, $Val extends LotteryConfigModel>
    implements $LotteryConfigModelCopyWith<$Res> {
  _$LotteryConfigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? lotteryPeizhi = freezed,
  }) {
    return _then(_value.copyWith(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      lotteryPeizhi: freezed == lotteryPeizhi
          ? _value.lotteryPeizhi
          : lotteryPeizhi // ignore: cast_nullable_to_non_nullable
              as List<LotteryPeizhi>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LotteryConfigModelImplCopyWith<$Res>
    implements $LotteryConfigModelCopyWith<$Res> {
  factory _$$LotteryConfigModelImplCopyWith(_$LotteryConfigModelImpl value,
          $Res Function(_$LotteryConfigModelImpl) then) =
      __$$LotteryConfigModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "state") int? state,
      @JsonKey(name: "LotteryPeizhi") List<LotteryPeizhi>? lotteryPeizhi});
}

/// @nodoc
class __$$LotteryConfigModelImplCopyWithImpl<$Res>
    extends _$LotteryConfigModelCopyWithImpl<$Res, _$LotteryConfigModelImpl>
    implements _$$LotteryConfigModelImplCopyWith<$Res> {
  __$$LotteryConfigModelImplCopyWithImpl(_$LotteryConfigModelImpl _value,
      $Res Function(_$LotteryConfigModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? lotteryPeizhi = freezed,
  }) {
    return _then(_$LotteryConfigModelImpl(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as int?,
      lotteryPeizhi: freezed == lotteryPeizhi
          ? _value._lotteryPeizhi
          : lotteryPeizhi // ignore: cast_nullable_to_non_nullable
              as List<LotteryPeizhi>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LotteryConfigModelImpl implements _LotteryConfigModel {
  const _$LotteryConfigModelImpl(
      {@JsonKey(name: "state") this.state,
      @JsonKey(name: "LotteryPeizhi") final List<LotteryPeizhi>? lotteryPeizhi})
      : _lotteryPeizhi = lotteryPeizhi;

  factory _$LotteryConfigModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotteryConfigModelImplFromJson(json);

  @override
  @JsonKey(name: "state")
  final int? state;
  final List<LotteryPeizhi>? _lotteryPeizhi;
  @override
  @JsonKey(name: "LotteryPeizhi")
  List<LotteryPeizhi>? get lotteryPeizhi {
    final value = _lotteryPeizhi;
    if (value == null) return null;
    if (_lotteryPeizhi is EqualUnmodifiableListView) return _lotteryPeizhi;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LotteryConfigModel(state: $state, lotteryPeizhi: $lotteryPeizhi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotteryConfigModelImpl &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality()
                .equals(other._lotteryPeizhi, _lotteryPeizhi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, state, const DeepCollectionEquality().hash(_lotteryPeizhi));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotteryConfigModelImplCopyWith<_$LotteryConfigModelImpl> get copyWith =>
      __$$LotteryConfigModelImplCopyWithImpl<_$LotteryConfigModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotteryConfigModelImplToJson(
      this,
    );
  }
}

abstract class _LotteryConfigModel implements LotteryConfigModel {
  const factory _LotteryConfigModel(
      {@JsonKey(name: "state") final int? state,
      @JsonKey(name: "LotteryPeizhi")
      final List<LotteryPeizhi>? lotteryPeizhi}) = _$LotteryConfigModelImpl;

  factory _LotteryConfigModel.fromJson(Map<String, dynamic> json) =
      _$LotteryConfigModelImpl.fromJson;

  @override
  @JsonKey(name: "state")
  int? get state;
  @override
  @JsonKey(name: "LotteryPeizhi")
  List<LotteryPeizhi>? get lotteryPeizhi;
  @override
  @JsonKey(ignore: true)
  _$$LotteryConfigModelImplCopyWith<_$LotteryConfigModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LotteryPeizhi _$LotteryPeizhiFromJson(Map<String, dynamic> json) {
  return _LotteryPeizhi.fromJson(json);
}

/// @nodoc
mixin _$LotteryPeizhi {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "moneys")
  double? get moneys => throw _privateConstructorUsedError;
  @JsonKey(name: "prize")
  String? get prize => throw _privateConstructorUsedError;
  @JsonKey(name: "winningrate")
  int? get winningrate => throw _privateConstructorUsedError;
  @JsonKey(name: "img")
  String? get img => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LotteryPeizhiCopyWith<LotteryPeizhi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotteryPeizhiCopyWith<$Res> {
  factory $LotteryPeizhiCopyWith(
          LotteryPeizhi value, $Res Function(LotteryPeizhi) then) =
      _$LotteryPeizhiCopyWithImpl<$Res, LotteryPeizhi>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "moneys") double? moneys,
      @JsonKey(name: "prize") String? prize,
      @JsonKey(name: "winningrate") int? winningrate,
      @JsonKey(name: "img") String? img,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$LotteryPeizhiCopyWithImpl<$Res, $Val extends LotteryPeizhi>
    implements $LotteryPeizhiCopyWith<$Res> {
  _$LotteryPeizhiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? moneys = freezed,
    Object? prize = freezed,
    Object? winningrate = freezed,
    Object? img = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      moneys: freezed == moneys
          ? _value.moneys
          : moneys // ignore: cast_nullable_to_non_nullable
              as double?,
      prize: freezed == prize
          ? _value.prize
          : prize // ignore: cast_nullable_to_non_nullable
              as String?,
      winningrate: freezed == winningrate
          ? _value.winningrate
          : winningrate // ignore: cast_nullable_to_non_nullable
              as int?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LotteryPeizhiImplCopyWith<$Res>
    implements $LotteryPeizhiCopyWith<$Res> {
  factory _$$LotteryPeizhiImplCopyWith(
          _$LotteryPeizhiImpl value, $Res Function(_$LotteryPeizhiImpl) then) =
      __$$LotteryPeizhiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "moneys") double? moneys,
      @JsonKey(name: "prize") String? prize,
      @JsonKey(name: "winningrate") int? winningrate,
      @JsonKey(name: "img") String? img,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$$LotteryPeizhiImplCopyWithImpl<$Res>
    extends _$LotteryPeizhiCopyWithImpl<$Res, _$LotteryPeizhiImpl>
    implements _$$LotteryPeizhiImplCopyWith<$Res> {
  __$$LotteryPeizhiImplCopyWithImpl(
      _$LotteryPeizhiImpl _value, $Res Function(_$LotteryPeizhiImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? moneys = freezed,
    Object? prize = freezed,
    Object? winningrate = freezed,
    Object? img = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$LotteryPeizhiImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      moneys: freezed == moneys
          ? _value.moneys
          : moneys // ignore: cast_nullable_to_non_nullable
              as double?,
      prize: freezed == prize
          ? _value.prize
          : prize // ignore: cast_nullable_to_non_nullable
              as String?,
      winningrate: freezed == winningrate
          ? _value.winningrate
          : winningrate // ignore: cast_nullable_to_non_nullable
              as int?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LotteryPeizhiImpl implements _LotteryPeizhi {
  const _$LotteryPeizhiImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "moneys") this.moneys,
      @JsonKey(name: "prize") this.prize,
      @JsonKey(name: "winningrate") this.winningrate,
      @JsonKey(name: "img") this.img,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$LotteryPeizhiImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotteryPeizhiImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "moneys")
  final double? moneys;
  @override
  @JsonKey(name: "prize")
  final String? prize;
  @override
  @JsonKey(name: "winningrate")
  final int? winningrate;
  @override
  @JsonKey(name: "img")
  final String? img;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString() {
    return 'LotteryPeizhi(id: $id, name: $name, moneys: $moneys, prize: $prize, winningrate: $winningrate, img: $img, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotteryPeizhiImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.moneys, moneys) || other.moneys == moneys) &&
            (identical(other.prize, prize) || other.prize == prize) &&
            (identical(other.winningrate, winningrate) ||
                other.winningrate == winningrate) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, moneys, prize,
      winningrate, img, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotteryPeizhiImplCopyWith<_$LotteryPeizhiImpl> get copyWith =>
      __$$LotteryPeizhiImplCopyWithImpl<_$LotteryPeizhiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotteryPeizhiImplToJson(
      this,
    );
  }
}

abstract class _LotteryPeizhi implements LotteryPeizhi {
  const factory _LotteryPeizhi(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "moneys") final double? moneys,
          @JsonKey(name: "prize") final String? prize,
          @JsonKey(name: "winningrate") final int? winningrate,
          @JsonKey(name: "img") final String? img,
          @JsonKey(name: "created_at") final String? createdAt,
          @JsonKey(name: "updated_at") final String? updatedAt}) =
      _$LotteryPeizhiImpl;

  factory _LotteryPeizhi.fromJson(Map<String, dynamic> json) =
      _$LotteryPeizhiImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "moneys")
  double? get moneys;
  @override
  @JsonKey(name: "prize")
  String? get prize;
  @override
  @JsonKey(name: "winningrate")
  int? get winningrate;
  @override
  @JsonKey(name: "img")
  String? get img;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$LotteryPeizhiImplCopyWith<_$LotteryPeizhiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
