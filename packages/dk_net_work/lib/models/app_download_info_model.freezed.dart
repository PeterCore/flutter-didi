// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_download_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppDownloadInfoModel _$AppDownloadInfoModelFromJson(Map<String, dynamic> json) {
  return _AppDownloadInfoModel.fromJson(json);
}

/// @nodoc
mixin _$AppDownloadInfoModel {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  List<String>? get list => throw _privateConstructorUsedError;
  @JsonKey(name: "list2")
  List<List2>? get list2 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppDownloadInfoModelCopyWith<AppDownloadInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppDownloadInfoModelCopyWith<$Res> {
  factory $AppDownloadInfoModelCopyWith(AppDownloadInfoModel value,
          $Res Function(AppDownloadInfoModel) then) =
      _$AppDownloadInfoModelCopyWithImpl<$Res, AppDownloadInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "list") List<String>? list,
      @JsonKey(name: "list2") List<List2>? list2});
}

/// @nodoc
class _$AppDownloadInfoModelCopyWithImpl<$Res,
        $Val extends AppDownloadInfoModel>
    implements $AppDownloadInfoModelCopyWith<$Res> {
  _$AppDownloadInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
    Object? list2 = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      list2: freezed == list2
          ? _value.list2
          : list2 // ignore: cast_nullable_to_non_nullable
              as List<List2>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppDownloadInfoModelImplCopyWith<$Res>
    implements $AppDownloadInfoModelCopyWith<$Res> {
  factory _$$AppDownloadInfoModelImplCopyWith(_$AppDownloadInfoModelImpl value,
          $Res Function(_$AppDownloadInfoModelImpl) then) =
      __$$AppDownloadInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "list") List<String>? list,
      @JsonKey(name: "list2") List<List2>? list2});
}

/// @nodoc
class __$$AppDownloadInfoModelImplCopyWithImpl<$Res>
    extends _$AppDownloadInfoModelCopyWithImpl<$Res, _$AppDownloadInfoModelImpl>
    implements _$$AppDownloadInfoModelImplCopyWith<$Res> {
  __$$AppDownloadInfoModelImplCopyWithImpl(_$AppDownloadInfoModelImpl _value,
      $Res Function(_$AppDownloadInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
    Object? list2 = freezed,
  }) {
    return _then(_$AppDownloadInfoModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      list2: freezed == list2
          ? _value._list2
          : list2 // ignore: cast_nullable_to_non_nullable
              as List<List2>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppDownloadInfoModelImpl implements _AppDownloadInfoModel {
  const _$AppDownloadInfoModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "list") final List<String>? list,
      @JsonKey(name: "list2") final List<List2>? list2})
      : _list = list,
        _list2 = list2;

  factory _$AppDownloadInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppDownloadInfoModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  final List<String>? _list;
  @override
  @JsonKey(name: "list")
  List<String>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<List2>? _list2;
  @override
  @JsonKey(name: "list2")
  List<List2>? get list2 {
    final value = _list2;
    if (value == null) return null;
    if (_list2 is EqualUnmodifiableListView) return _list2;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AppDownloadInfoModel(status: $status, list: $list, list2: $list2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppDownloadInfoModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            const DeepCollectionEquality().equals(other._list2, _list2));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_list),
      const DeepCollectionEquality().hash(_list2));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppDownloadInfoModelImplCopyWith<_$AppDownloadInfoModelImpl>
      get copyWith =>
          __$$AppDownloadInfoModelImplCopyWithImpl<_$AppDownloadInfoModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppDownloadInfoModelImplToJson(
      this,
    );
  }
}

abstract class _AppDownloadInfoModel implements AppDownloadInfoModel {
  const factory _AppDownloadInfoModel(
          {@JsonKey(name: "status") final int? status,
          @JsonKey(name: "list") final List<String>? list,
          @JsonKey(name: "list2") final List<List2>? list2}) =
      _$AppDownloadInfoModelImpl;

  factory _AppDownloadInfoModel.fromJson(Map<String, dynamic> json) =
      _$AppDownloadInfoModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "list")
  List<String>? get list;
  @override
  @JsonKey(name: "list2")
  List<List2>? get list2;
  @override
  @JsonKey(ignore: true)
  _$$AppDownloadInfoModelImplCopyWith<_$AppDownloadInfoModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

List2 _$List2FromJson(Map<String, dynamic> json) {
  return _List2.fromJson(json);
}

/// @nodoc
mixin _$List2 {
  @JsonKey(name: "os")
  String? get os => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $List2CopyWith<List2> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $List2CopyWith<$Res> {
  factory $List2CopyWith(List2 value, $Res Function(List2) then) =
      _$List2CopyWithImpl<$Res, List2>;
  @useResult
  $Res call(
      {@JsonKey(name: "os") String? os, @JsonKey(name: "url") String? url});
}

/// @nodoc
class _$List2CopyWithImpl<$Res, $Val extends List2>
    implements $List2CopyWith<$Res> {
  _$List2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? os = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      os: freezed == os
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$List2ImplCopyWith<$Res> implements $List2CopyWith<$Res> {
  factory _$$List2ImplCopyWith(
          _$List2Impl value, $Res Function(_$List2Impl) then) =
      __$$List2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "os") String? os, @JsonKey(name: "url") String? url});
}

/// @nodoc
class __$$List2ImplCopyWithImpl<$Res>
    extends _$List2CopyWithImpl<$Res, _$List2Impl>
    implements _$$List2ImplCopyWith<$Res> {
  __$$List2ImplCopyWithImpl(
      _$List2Impl _value, $Res Function(_$List2Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? os = freezed,
    Object? url = freezed,
  }) {
    return _then(_$List2Impl(
      os: freezed == os
          ? _value.os
          : os // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$List2Impl implements _List2 {
  const _$List2Impl(
      {@JsonKey(name: "os") this.os, @JsonKey(name: "url") this.url});

  factory _$List2Impl.fromJson(Map<String, dynamic> json) =>
      _$$List2ImplFromJson(json);

  @override
  @JsonKey(name: "os")
  final String? os;
  @override
  @JsonKey(name: "url")
  final String? url;

  @override
  String toString() {
    return 'List2(os: $os, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$List2Impl &&
            (identical(other.os, os) || other.os == os) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, os, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$List2ImplCopyWith<_$List2Impl> get copyWith =>
      __$$List2ImplCopyWithImpl<_$List2Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$List2ImplToJson(
      this,
    );
  }
}

abstract class _List2 implements List2 {
  const factory _List2(
      {@JsonKey(name: "os") final String? os,
      @JsonKey(name: "url") final String? url}) = _$List2Impl;

  factory _List2.fromJson(Map<String, dynamic> json) = _$List2Impl.fromJson;

  @override
  @JsonKey(name: "os")
  String? get os;
  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$List2ImplCopyWith<_$List2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
