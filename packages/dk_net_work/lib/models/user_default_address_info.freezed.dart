// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_default_address_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDefaultAddressInfo _$UserDefaultAddressInfoFromJson(
    Map<String, dynamic> json) {
  return _UserDefaultAddressInfo.fromJson(json);
}

/// @nodoc
mixin _$UserDefaultAddressInfo {
  int? get status => throw _privateConstructorUsedError;
  set status(int? value) => throw _privateConstructorUsedError;
  AddressInfo? get info => throw _privateConstructorUsedError;
  set info(AddressInfo? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDefaultAddressInfoCopyWith<UserDefaultAddressInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDefaultAddressInfoCopyWith<$Res> {
  factory $UserDefaultAddressInfoCopyWith(UserDefaultAddressInfo value,
          $Res Function(UserDefaultAddressInfo) then) =
      _$UserDefaultAddressInfoCopyWithImpl<$Res, UserDefaultAddressInfo>;
  @useResult
  $Res call({int? status, AddressInfo? info});

  $AddressInfoCopyWith<$Res>? get info;
}

/// @nodoc
class _$UserDefaultAddressInfoCopyWithImpl<$Res,
        $Val extends UserDefaultAddressInfo>
    implements $UserDefaultAddressInfoCopyWith<$Res> {
  _$UserDefaultAddressInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AddressInfo?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressInfoCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $AddressInfoCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserDefaultAddressInfoImplCopyWith<$Res>
    implements $UserDefaultAddressInfoCopyWith<$Res> {
  factory _$$UserDefaultAddressInfoImplCopyWith(
          _$UserDefaultAddressInfoImpl value,
          $Res Function(_$UserDefaultAddressInfoImpl) then) =
      __$$UserDefaultAddressInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, AddressInfo? info});

  @override
  $AddressInfoCopyWith<$Res>? get info;
}

/// @nodoc
class __$$UserDefaultAddressInfoImplCopyWithImpl<$Res>
    extends _$UserDefaultAddressInfoCopyWithImpl<$Res,
        _$UserDefaultAddressInfoImpl>
    implements _$$UserDefaultAddressInfoImplCopyWith<$Res> {
  __$$UserDefaultAddressInfoImplCopyWithImpl(
      _$UserDefaultAddressInfoImpl _value,
      $Res Function(_$UserDefaultAddressInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? info = freezed,
  }) {
    return _then(_$UserDefaultAddressInfoImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as AddressInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDefaultAddressInfoImpl implements _UserDefaultAddressInfo {
  _$UserDefaultAddressInfoImpl({this.status, this.info});

  factory _$UserDefaultAddressInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDefaultAddressInfoImplFromJson(json);

  @override
  int? status;
  @override
  AddressInfo? info;

  @override
  String toString() {
    return 'UserDefaultAddressInfo(status: $status, info: $info)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDefaultAddressInfoImplCopyWith<_$UserDefaultAddressInfoImpl>
      get copyWith => __$$UserDefaultAddressInfoImplCopyWithImpl<
          _$UserDefaultAddressInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDefaultAddressInfoImplToJson(
      this,
    );
  }
}

abstract class _UserDefaultAddressInfo implements UserDefaultAddressInfo {
  factory _UserDefaultAddressInfo({int? status, AddressInfo? info}) =
      _$UserDefaultAddressInfoImpl;

  factory _UserDefaultAddressInfo.fromJson(Map<String, dynamic> json) =
      _$UserDefaultAddressInfoImpl.fromJson;

  @override
  int? get status;
  set status(int? value);
  @override
  AddressInfo? get info;
  set info(AddressInfo? value);
  @override
  @JsonKey(ignore: true)
  _$$UserDefaultAddressInfoImplCopyWith<_$UserDefaultAddressInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AddressInfo _$AddressInfoFromJson(Map<String, dynamic> json) {
  return _AddressInfo.fromJson(json);
}

/// @nodoc
mixin _$AddressInfo {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
  int? get userid => throw _privateConstructorUsedError;
  set userid(int? value) => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  set name(String? value) => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  set phone(String? value) => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  set location(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "is_default")
  int? get isDefault => throw _privateConstructorUsedError;
  @JsonKey(name: "is_default")
  set isDefault(int? value) => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  set address(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  set createdAt(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  set updatedAt(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "name_mask")
  String? get nameMask => throw _privateConstructorUsedError;
  @JsonKey(name: "name_mask")
  set nameMask(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_mask")
  String? get phoneMask => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_mask")
  set phoneMask(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: "address_mask")
  String? get addressMask => throw _privateConstructorUsedError;
  @JsonKey(name: "address_mask")
  set addressMask(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressInfoCopyWith<AddressInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressInfoCopyWith<$Res> {
  factory $AddressInfoCopyWith(
          AddressInfo value, $Res Function(AddressInfo) then) =
      _$AddressInfoCopyWithImpl<$Res, AddressInfo>;
  @useResult
  $Res call(
      {int? id,
      int? userid,
      String? name,
      String? phone,
      String? location,
      @JsonKey(name: "is_default") int? isDefault,
      String? address,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "name_mask") String? nameMask,
      @JsonKey(name: "phone_mask") String? phoneMask,
      @JsonKey(name: "address_mask") String? addressMask});
}

/// @nodoc
class _$AddressInfoCopyWithImpl<$Res, $Val extends AddressInfo>
    implements $AddressInfoCopyWith<$Res> {
  _$AddressInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userid = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? location = freezed,
    Object? isDefault = freezed,
    Object? address = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? nameMask = freezed,
    Object? phoneMask = freezed,
    Object? addressMask = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      nameMask: freezed == nameMask
          ? _value.nameMask
          : nameMask // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneMask: freezed == phoneMask
          ? _value.phoneMask
          : phoneMask // ignore: cast_nullable_to_non_nullable
              as String?,
      addressMask: freezed == addressMask
          ? _value.addressMask
          : addressMask // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressInfoImplCopyWith<$Res>
    implements $AddressInfoCopyWith<$Res> {
  factory _$$AddressInfoImplCopyWith(
          _$AddressInfoImpl value, $Res Function(_$AddressInfoImpl) then) =
      __$$AddressInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? userid,
      String? name,
      String? phone,
      String? location,
      @JsonKey(name: "is_default") int? isDefault,
      String? address,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "name_mask") String? nameMask,
      @JsonKey(name: "phone_mask") String? phoneMask,
      @JsonKey(name: "address_mask") String? addressMask});
}

/// @nodoc
class __$$AddressInfoImplCopyWithImpl<$Res>
    extends _$AddressInfoCopyWithImpl<$Res, _$AddressInfoImpl>
    implements _$$AddressInfoImplCopyWith<$Res> {
  __$$AddressInfoImplCopyWithImpl(
      _$AddressInfoImpl _value, $Res Function(_$AddressInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userid = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? location = freezed,
    Object? isDefault = freezed,
    Object? address = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? nameMask = freezed,
    Object? phoneMask = freezed,
    Object? addressMask = freezed,
  }) {
    return _then(_$AddressInfoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      nameMask: freezed == nameMask
          ? _value.nameMask
          : nameMask // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneMask: freezed == phoneMask
          ? _value.phoneMask
          : phoneMask // ignore: cast_nullable_to_non_nullable
              as String?,
      addressMask: freezed == addressMask
          ? _value.addressMask
          : addressMask // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressInfoImpl implements _AddressInfo {
  _$AddressInfoImpl(
      {this.id,
      this.userid,
      this.name,
      this.phone,
      this.location,
      @JsonKey(name: "is_default") this.isDefault,
      this.address,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "name_mask") this.nameMask,
      @JsonKey(name: "phone_mask") this.phoneMask,
      @JsonKey(name: "address_mask") this.addressMask});

  factory _$AddressInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressInfoImplFromJson(json);

  @override
  int? id;
  @override
  int? userid;
  @override
  String? name;
  @override
  String? phone;
  @override
  String? location;
  @override
  @JsonKey(name: "is_default")
  int? isDefault;
  @override
  String? address;
  @override
  @JsonKey(name: "created_at")
  String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? updatedAt;
  @override
  @JsonKey(name: "name_mask")
  String? nameMask;
  @override
  @JsonKey(name: "phone_mask")
  String? phoneMask;
  @override
  @JsonKey(name: "address_mask")
  String? addressMask;

  @override
  String toString() {
    return 'AddressInfo(id: $id, userid: $userid, name: $name, phone: $phone, location: $location, isDefault: $isDefault, address: $address, createdAt: $createdAt, updatedAt: $updatedAt, nameMask: $nameMask, phoneMask: $phoneMask, addressMask: $addressMask)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressInfoImplCopyWith<_$AddressInfoImpl> get copyWith =>
      __$$AddressInfoImplCopyWithImpl<_$AddressInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressInfoImplToJson(
      this,
    );
  }
}

abstract class _AddressInfo implements AddressInfo {
  factory _AddressInfo(
      {int? id,
      int? userid,
      String? name,
      String? phone,
      String? location,
      @JsonKey(name: "is_default") int? isDefault,
      String? address,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "name_mask") String? nameMask,
      @JsonKey(name: "phone_mask") String? phoneMask,
      @JsonKey(name: "address_mask") String? addressMask}) = _$AddressInfoImpl;

  factory _AddressInfo.fromJson(Map<String, dynamic> json) =
      _$AddressInfoImpl.fromJson;

  @override
  int? get id;
  set id(int? value);
  @override
  int? get userid;
  set userid(int? value);
  @override
  String? get name;
  set name(String? value);
  @override
  String? get phone;
  set phone(String? value);
  @override
  String? get location;
  set location(String? value);
  @override
  @JsonKey(name: "is_default")
  int? get isDefault;
  @JsonKey(name: "is_default")
  set isDefault(int? value);
  @override
  String? get address;
  set address(String? value);
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @JsonKey(name: "created_at")
  set createdAt(String? value);
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @JsonKey(name: "updated_at")
  set updatedAt(String? value);
  @override
  @JsonKey(name: "name_mask")
  String? get nameMask;
  @JsonKey(name: "name_mask")
  set nameMask(String? value);
  @override
  @JsonKey(name: "phone_mask")
  String? get phoneMask;
  @JsonKey(name: "phone_mask")
  set phoneMask(String? value);
  @override
  @JsonKey(name: "address_mask")
  String? get addressMask;
  @JsonKey(name: "address_mask")
  set addressMask(String? value);
  @override
  @JsonKey(ignore: true)
  _$$AddressInfoImplCopyWith<_$AddressInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
