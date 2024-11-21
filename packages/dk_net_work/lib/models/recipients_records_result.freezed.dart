// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipients_records_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipientsRecordsResult _$RecipientsRecordsResultFromJson(
    Map<String, dynamic> json) {
  return _RecipientsRecordsResult.fromJson(json);
}

/// @nodoc
mixin _$RecipientsRecordsResult {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  List<RecipientsListElement>? get list => throw _privateConstructorUsedError;
  @JsonKey(name: "pagesize")
  String? get pagesize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipientsRecordsResultCopyWith<RecipientsRecordsResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipientsRecordsResultCopyWith<$Res> {
  factory $RecipientsRecordsResultCopyWith(RecipientsRecordsResult value,
          $Res Function(RecipientsRecordsResult) then) =
      _$RecipientsRecordsResultCopyWithImpl<$Res, RecipientsRecordsResult>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "list") List<RecipientsListElement>? list,
      @JsonKey(name: "pagesize") String? pagesize});
}

/// @nodoc
class _$RecipientsRecordsResultCopyWithImpl<$Res,
        $Val extends RecipientsRecordsResult>
    implements $RecipientsRecordsResultCopyWith<$Res> {
  _$RecipientsRecordsResultCopyWithImpl(this._value, this._then);

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
              as List<RecipientsListElement>?,
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipientsRecordsResultImplCopyWith<$Res>
    implements $RecipientsRecordsResultCopyWith<$Res> {
  factory _$$RecipientsRecordsResultImplCopyWith(
          _$RecipientsRecordsResultImpl value,
          $Res Function(_$RecipientsRecordsResultImpl) then) =
      __$$RecipientsRecordsResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "list") List<RecipientsListElement>? list,
      @JsonKey(name: "pagesize") String? pagesize});
}

/// @nodoc
class __$$RecipientsRecordsResultImplCopyWithImpl<$Res>
    extends _$RecipientsRecordsResultCopyWithImpl<$Res,
        _$RecipientsRecordsResultImpl>
    implements _$$RecipientsRecordsResultImplCopyWith<$Res> {
  __$$RecipientsRecordsResultImplCopyWithImpl(
      _$RecipientsRecordsResultImpl _value,
      $Res Function(_$RecipientsRecordsResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
    Object? pagesize = freezed,
  }) {
    return _then(_$RecipientsRecordsResultImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<RecipientsListElement>?,
      pagesize: freezed == pagesize
          ? _value.pagesize
          : pagesize // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipientsRecordsResultImpl implements _RecipientsRecordsResult {
  const _$RecipientsRecordsResultImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "list") final List<RecipientsListElement>? list,
      @JsonKey(name: "pagesize") this.pagesize})
      : _list = list;

  factory _$RecipientsRecordsResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipientsRecordsResultImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  final List<RecipientsListElement>? _list;
  @override
  @JsonKey(name: "list")
  List<RecipientsListElement>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "pagesize")
  final String? pagesize;

  @override
  String toString() {
    return 'RecipientsRecordsResult(status: $status, list: $list, pagesize: $pagesize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipientsRecordsResultImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.pagesize, pagesize) ||
                other.pagesize == pagesize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_list), pagesize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipientsRecordsResultImplCopyWith<_$RecipientsRecordsResultImpl>
      get copyWith => __$$RecipientsRecordsResultImplCopyWithImpl<
          _$RecipientsRecordsResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipientsRecordsResultImplToJson(
      this,
    );
  }
}

abstract class _RecipientsRecordsResult implements RecipientsRecordsResult {
  const factory _RecipientsRecordsResult(
          {@JsonKey(name: "status") final int? status,
          @JsonKey(name: "list") final List<RecipientsListElement>? list,
          @JsonKey(name: "pagesize") final String? pagesize}) =
      _$RecipientsRecordsResultImpl;

  factory _RecipientsRecordsResult.fromJson(Map<String, dynamic> json) =
      _$RecipientsRecordsResultImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "list")
  List<RecipientsListElement>? get list;
  @override
  @JsonKey(name: "pagesize")
  String? get pagesize;
  @override
  @JsonKey(ignore: true)
  _$$RecipientsRecordsResultImplCopyWith<_$RecipientsRecordsResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RecipientsListElement _$RecipientsListElementFromJson(
    Map<String, dynamic> json) {
  return _RecipientsListElement.fromJson(json);
}

/// @nodoc
mixin _$RecipientsListElement {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "account")
  String? get account => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipientsListElementCopyWith<RecipientsListElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipientsListElementCopyWith<$Res> {
  factory $RecipientsListElementCopyWith(RecipientsListElement value,
          $Res Function(RecipientsListElement) then) =
      _$RecipientsListElementCopyWithImpl<$Res, RecipientsListElement>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "account") String? account,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "created_at") String? createdAt});
}

/// @nodoc
class _$RecipientsListElementCopyWithImpl<$Res,
        $Val extends RecipientsListElement>
    implements $RecipientsListElementCopyWith<$Res> {
  _$RecipientsListElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? account = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipientsListElementImplCopyWith<$Res>
    implements $RecipientsListElementCopyWith<$Res> {
  factory _$$RecipientsListElementImplCopyWith(
          _$RecipientsListElementImpl value,
          $Res Function(_$RecipientsListElementImpl) then) =
      __$$RecipientsListElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "account") String? account,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "created_at") String? createdAt});
}

/// @nodoc
class __$$RecipientsListElementImplCopyWithImpl<$Res>
    extends _$RecipientsListElementCopyWithImpl<$Res,
        _$RecipientsListElementImpl>
    implements _$$RecipientsListElementImplCopyWith<$Res> {
  __$$RecipientsListElementImplCopyWithImpl(_$RecipientsListElementImpl _value,
      $Res Function(_$RecipientsListElementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? account = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$RecipientsListElementImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipientsListElementImpl implements _RecipientsListElement {
  const _$RecipientsListElementImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "account") this.account,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "created_at") this.createdAt});

  factory _$RecipientsListElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipientsListElementImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "account")
  final String? account;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;

  @override
  String toString() {
    return 'RecipientsListElement(id: $id, account: $account, name: $name, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipientsListElementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, account, name, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipientsListElementImplCopyWith<_$RecipientsListElementImpl>
      get copyWith => __$$RecipientsListElementImplCopyWithImpl<
          _$RecipientsListElementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipientsListElementImplToJson(
      this,
    );
  }
}

abstract class _RecipientsListElement implements RecipientsListElement {
  const factory _RecipientsListElement(
          {@JsonKey(name: "id") final int? id,
          @JsonKey(name: "account") final String? account,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "created_at") final String? createdAt}) =
      _$RecipientsListElementImpl;

  factory _RecipientsListElement.fromJson(Map<String, dynamic> json) =
      _$RecipientsListElementImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "account")
  String? get account;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$RecipientsListElementImplCopyWith<_$RecipientsListElementImpl>
      get copyWith => throw _privateConstructorUsedError;
}
