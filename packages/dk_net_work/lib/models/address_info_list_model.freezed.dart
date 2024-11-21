// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_info_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressInfoListModel _$AddressInfoListModelFromJson(Map<String, dynamic> json) {
  return _AddressInfoListModel.fromJson(json);
}

/// @nodoc
mixin _$AddressInfoListModel {
  int? get status => throw _privateConstructorUsedError;
  set status(int? value) => throw _privateConstructorUsedError;
  List<AddressInfo>? get list => throw _privateConstructorUsedError;
  set list(List<AddressInfo>? value) => throw _privateConstructorUsedError;
  String? get pagesize => throw _privateConstructorUsedError;
  set pagesize(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressInfoListModelCopyWith<AddressInfoListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressInfoListModelCopyWith<$Res> {
  factory $AddressInfoListModelCopyWith(AddressInfoListModel value,
          $Res Function(AddressInfoListModel) then) =
      _$AddressInfoListModelCopyWithImpl<$Res, AddressInfoListModel>;
  @useResult
  $Res call({int? status, List<AddressInfo>? list, String? pagesize});
}

/// @nodoc
class _$AddressInfoListModelCopyWithImpl<$Res,
        $Val extends AddressInfoListModel>
    implements $AddressInfoListModelCopyWith<$Res> {
  _$AddressInfoListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
    Object? pagesize = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<AddressInfo>?,
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressInfoListModelImplCopyWith<$Res>
    implements $AddressInfoListModelCopyWith<$Res> {
  factory _$$AddressInfoListModelImplCopyWith(_$AddressInfoListModelImpl value,
          $Res Function(_$AddressInfoListModelImpl) then) =
      __$$AddressInfoListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, List<AddressInfo>? list, String? pagesize});
}

/// @nodoc
class __$$AddressInfoListModelImplCopyWithImpl<$Res>
    extends _$AddressInfoListModelCopyWithImpl<$Res, _$AddressInfoListModelImpl>
    implements _$$AddressInfoListModelImplCopyWith<$Res> {
  __$$AddressInfoListModelImplCopyWithImpl(_$AddressInfoListModelImpl _value,
      $Res Function(_$AddressInfoListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
    Object? pagesize = freezed,
  }) {
    return _then(_$AddressInfoListModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<AddressInfo>?,
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressInfoListModelImpl implements _AddressInfoListModel {
  _$AddressInfoListModelImpl({this.status, this.list, this.pagesize});

  factory _$AddressInfoListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressInfoListModelImplFromJson(json);

  @override
  int? status;
  @override
  List<AddressInfo>? list;
  @override
  String? pagesize;

  @override
  String toString() {
    return 'AddressInfoListModel(status: $status, list: $list, pagesize: $pagesize)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressInfoListModelImplCopyWith<_$AddressInfoListModelImpl>
      get copyWith =>
          __$$AddressInfoListModelImplCopyWithImpl<_$AddressInfoListModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressInfoListModelImplToJson(
      this,
    );
  }
}

abstract class _AddressInfoListModel implements AddressInfoListModel {
  factory _AddressInfoListModel(
      {int? status,
      List<AddressInfo>? list,
      String? pagesize}) = _$AddressInfoListModelImpl;

  factory _AddressInfoListModel.fromJson(Map<String, dynamic> json) =
      _$AddressInfoListModelImpl.fromJson;

  @override
  int? get status;
  set status(int? value);
  @override
  List<AddressInfo>? get list;
  set list(List<AddressInfo>? value);
  @override
  String? get pagesize;
  set pagesize(String? value);
  @override
  @JsonKey(ignore: true)
  _$$AddressInfoListModelImplCopyWith<_$AddressInfoListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
