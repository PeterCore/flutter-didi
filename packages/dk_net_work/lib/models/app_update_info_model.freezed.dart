// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_update_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppUpdateInfoModel _$AppUpdateInfoModelFromJson(Map<String, dynamic> json) {
  return _AppUpdateInfoModel.fromJson(json);
}

/// @nodoc
mixin _$AppUpdateInfoModel {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "app")
  App? get app => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  List<ListElement>? get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUpdateInfoModelCopyWith<AppUpdateInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUpdateInfoModelCopyWith<$Res> {
  factory $AppUpdateInfoModelCopyWith(
          AppUpdateInfoModel value, $Res Function(AppUpdateInfoModel) then) =
      _$AppUpdateInfoModelCopyWithImpl<$Res, AppUpdateInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "app") App? app,
      @JsonKey(name: "list") List<ListElement>? list});

  $AppCopyWith<$Res>? get app;
}

/// @nodoc
class _$AppUpdateInfoModelCopyWithImpl<$Res, $Val extends AppUpdateInfoModel>
    implements $AppUpdateInfoModelCopyWith<$Res> {
  _$AppUpdateInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? app = freezed,
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      app: freezed == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as App?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ListElement>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppCopyWith<$Res>? get app {
    if (_value.app == null) {
      return null;
    }

    return $AppCopyWith<$Res>(_value.app!, (value) {
      return _then(_value.copyWith(app: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppUpdateInfoModelImplCopyWith<$Res>
    implements $AppUpdateInfoModelCopyWith<$Res> {
  factory _$$AppUpdateInfoModelImplCopyWith(_$AppUpdateInfoModelImpl value,
          $Res Function(_$AppUpdateInfoModelImpl) then) =
      __$$AppUpdateInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "app") App? app,
      @JsonKey(name: "list") List<ListElement>? list});

  @override
  $AppCopyWith<$Res>? get app;
}

/// @nodoc
class __$$AppUpdateInfoModelImplCopyWithImpl<$Res>
    extends _$AppUpdateInfoModelCopyWithImpl<$Res, _$AppUpdateInfoModelImpl>
    implements _$$AppUpdateInfoModelImplCopyWith<$Res> {
  __$$AppUpdateInfoModelImplCopyWithImpl(_$AppUpdateInfoModelImpl _value,
      $Res Function(_$AppUpdateInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? app = freezed,
    Object? list = freezed,
  }) {
    return _then(_$AppUpdateInfoModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      app: freezed == app
          ? _value.app
          : app // ignore: cast_nullable_to_non_nullable
              as App?,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ListElement>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppUpdateInfoModelImpl implements _AppUpdateInfoModel {
  const _$AppUpdateInfoModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "app") this.app,
      @JsonKey(name: "list") final List<ListElement>? list})
      : _list = list;

  factory _$AppUpdateInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppUpdateInfoModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "app")
  final App? app;
  final List<ListElement>? _list;
  @override
  @JsonKey(name: "list")
  List<ListElement>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AppUpdateInfoModel(status: $status, app: $app, list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUpdateInfoModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.app, app) || other.app == app) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, app, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUpdateInfoModelImplCopyWith<_$AppUpdateInfoModelImpl> get copyWith =>
      __$$AppUpdateInfoModelImplCopyWithImpl<_$AppUpdateInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUpdateInfoModelImplToJson(
      this,
    );
  }
}

abstract class _AppUpdateInfoModel implements AppUpdateInfoModel {
  const factory _AppUpdateInfoModel(
          {@JsonKey(name: "status") final int? status,
          @JsonKey(name: "app") final App? app,
          @JsonKey(name: "list") final List<ListElement>? list}) =
      _$AppUpdateInfoModelImpl;

  factory _AppUpdateInfoModel.fromJson(Map<String, dynamic> json) =
      _$AppUpdateInfoModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "app")
  App? get app;
  @override
  @JsonKey(name: "list")
  List<ListElement>? get list;
  @override
  @JsonKey(ignore: true)
  _$$AppUpdateInfoModelImplCopyWith<_$AppUpdateInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

App _$AppFromJson(Map<String, dynamic> json) {
  return _App.fromJson(json);
}

/// @nodoc
mixin _$App {
  @JsonKey(name: "app_new_down_url")
  String? get appNewDownUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "app_new_version")
  String? get appNewVersion => throw _privateConstructorUsedError;
  @JsonKey(name: "hot_up_domain")
  String? get hotUpDomain => throw _privateConstructorUsedError;
  @JsonKey(name: "forceUpdate")
  int? get forceUpdate => throw _privateConstructorUsedError;
  @JsonKey(name: "hot_up_content")
  String? get hotUpContent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppCopyWith<App> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppCopyWith<$Res> {
  factory $AppCopyWith(App value, $Res Function(App) then) =
      _$AppCopyWithImpl<$Res, App>;
  @useResult
  $Res call(
      {@JsonKey(name: "app_new_down_url") String? appNewDownUrl,
      @JsonKey(name: "app_new_version") String? appNewVersion,
      @JsonKey(name: "hot_up_domain") String? hotUpDomain,
      @JsonKey(name: "forceUpdate") int? forceUpdate,
      @JsonKey(name: "hot_up_content") String? hotUpContent});
}

/// @nodoc
class _$AppCopyWithImpl<$Res, $Val extends App> implements $AppCopyWith<$Res> {
  _$AppCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appNewDownUrl = freezed,
    Object? appNewVersion = freezed,
    Object? hotUpDomain = freezed,
    Object? forceUpdate = freezed,
    Object? hotUpContent = freezed,
  }) {
    return _then(_value.copyWith(
      appNewDownUrl: freezed == appNewDownUrl
          ? _value.appNewDownUrl
          : appNewDownUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      appNewVersion: freezed == appNewVersion
          ? _value.appNewVersion
          : appNewVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      hotUpDomain: freezed == hotUpDomain
          ? _value.hotUpDomain
          : hotUpDomain // ignore: cast_nullable_to_non_nullable
              as String?,
      forceUpdate: freezed == forceUpdate
          ? _value.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as int?,
      hotUpContent: freezed == hotUpContent
          ? _value.hotUpContent
          : hotUpContent // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppImplCopyWith<$Res> implements $AppCopyWith<$Res> {
  factory _$$AppImplCopyWith(_$AppImpl value, $Res Function(_$AppImpl) then) =
      __$$AppImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "app_new_down_url") String? appNewDownUrl,
      @JsonKey(name: "app_new_version") String? appNewVersion,
      @JsonKey(name: "hot_up_domain") String? hotUpDomain,
      @JsonKey(name: "forceUpdate") int? forceUpdate,
      @JsonKey(name: "hot_up_content") String? hotUpContent});
}

/// @nodoc
class __$$AppImplCopyWithImpl<$Res> extends _$AppCopyWithImpl<$Res, _$AppImpl>
    implements _$$AppImplCopyWith<$Res> {
  __$$AppImplCopyWithImpl(_$AppImpl _value, $Res Function(_$AppImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appNewDownUrl = freezed,
    Object? appNewVersion = freezed,
    Object? hotUpDomain = freezed,
    Object? forceUpdate = freezed,
    Object? hotUpContent = freezed,
  }) {
    return _then(_$AppImpl(
      appNewDownUrl: freezed == appNewDownUrl
          ? _value.appNewDownUrl
          : appNewDownUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      appNewVersion: freezed == appNewVersion
          ? _value.appNewVersion
          : appNewVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      hotUpDomain: freezed == hotUpDomain
          ? _value.hotUpDomain
          : hotUpDomain // ignore: cast_nullable_to_non_nullable
              as String?,
      forceUpdate: freezed == forceUpdate
          ? _value.forceUpdate
          : forceUpdate // ignore: cast_nullable_to_non_nullable
              as int?,
      hotUpContent: freezed == hotUpContent
          ? _value.hotUpContent
          : hotUpContent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppImpl implements _App {
  const _$AppImpl(
      {@JsonKey(name: "app_new_down_url") this.appNewDownUrl,
      @JsonKey(name: "app_new_version") this.appNewVersion,
      @JsonKey(name: "hot_up_domain") this.hotUpDomain,
      @JsonKey(name: "forceUpdate") this.forceUpdate,
      @JsonKey(name: "hot_up_content") this.hotUpContent});

  factory _$AppImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppImplFromJson(json);

  @override
  @JsonKey(name: "app_new_down_url")
  final String? appNewDownUrl;
  @override
  @JsonKey(name: "app_new_version")
  final String? appNewVersion;
  @override
  @JsonKey(name: "hot_up_domain")
  final String? hotUpDomain;
  @override
  @JsonKey(name: "forceUpdate")
  final int? forceUpdate;
  @override
  @JsonKey(name: "hot_up_content")
  final String? hotUpContent;

  @override
  String toString() {
    return 'App(appNewDownUrl: $appNewDownUrl, appNewVersion: $appNewVersion, hotUpDomain: $hotUpDomain, forceUpdate: $forceUpdate, hotUpContent: $hotUpContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppImpl &&
            (identical(other.appNewDownUrl, appNewDownUrl) ||
                other.appNewDownUrl == appNewDownUrl) &&
            (identical(other.appNewVersion, appNewVersion) ||
                other.appNewVersion == appNewVersion) &&
            (identical(other.hotUpDomain, hotUpDomain) ||
                other.hotUpDomain == hotUpDomain) &&
            (identical(other.forceUpdate, forceUpdate) ||
                other.forceUpdate == forceUpdate) &&
            (identical(other.hotUpContent, hotUpContent) ||
                other.hotUpContent == hotUpContent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, appNewDownUrl, appNewVersion,
      hotUpDomain, forceUpdate, hotUpContent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppImplCopyWith<_$AppImpl> get copyWith =>
      __$$AppImplCopyWithImpl<_$AppImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppImplToJson(
      this,
    );
  }
}

abstract class _App implements App {
  const factory _App(
      {@JsonKey(name: "app_new_down_url") final String? appNewDownUrl,
      @JsonKey(name: "app_new_version") final String? appNewVersion,
      @JsonKey(name: "hot_up_domain") final String? hotUpDomain,
      @JsonKey(name: "forceUpdate") final int? forceUpdate,
      @JsonKey(name: "hot_up_content") final String? hotUpContent}) = _$AppImpl;

  factory _App.fromJson(Map<String, dynamic> json) = _$AppImpl.fromJson;

  @override
  @JsonKey(name: "app_new_down_url")
  String? get appNewDownUrl;
  @override
  @JsonKey(name: "app_new_version")
  String? get appNewVersion;
  @override
  @JsonKey(name: "hot_up_domain")
  String? get hotUpDomain;
  @override
  @JsonKey(name: "forceUpdate")
  int? get forceUpdate;
  @override
  @JsonKey(name: "hot_up_content")
  String? get hotUpContent;
  @override
  @JsonKey(ignore: true)
  _$$AppImplCopyWith<_$AppImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListElement _$ListElementFromJson(Map<String, dynamic> json) {
  return _ListElement.fromJson(json);
}

/// @nodoc
mixin _$ListElement {
  @JsonKey(name: "os")
  String? get os => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListElementCopyWith<ListElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListElementCopyWith<$Res> {
  factory $ListElementCopyWith(
          ListElement value, $Res Function(ListElement) then) =
      _$ListElementCopyWithImpl<$Res, ListElement>;
  @useResult
  $Res call(
      {@JsonKey(name: "os") String? os, @JsonKey(name: "url") String? url});
}

/// @nodoc
class _$ListElementCopyWithImpl<$Res, $Val extends ListElement>
    implements $ListElementCopyWith<$Res> {
  _$ListElementCopyWithImpl(this._value, this._then);

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
abstract class _$$ListElementImplCopyWith<$Res>
    implements $ListElementCopyWith<$Res> {
  factory _$$ListElementImplCopyWith(
          _$ListElementImpl value, $Res Function(_$ListElementImpl) then) =
      __$$ListElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "os") String? os, @JsonKey(name: "url") String? url});
}

/// @nodoc
class __$$ListElementImplCopyWithImpl<$Res>
    extends _$ListElementCopyWithImpl<$Res, _$ListElementImpl>
    implements _$$ListElementImplCopyWith<$Res> {
  __$$ListElementImplCopyWithImpl(
      _$ListElementImpl _value, $Res Function(_$ListElementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? os = freezed,
    Object? url = freezed,
  }) {
    return _then(_$ListElementImpl(
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
class _$ListElementImpl implements _ListElement {
  const _$ListElementImpl(
      {@JsonKey(name: "os") this.os, @JsonKey(name: "url") this.url});

  factory _$ListElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListElementImplFromJson(json);

  @override
  @JsonKey(name: "os")
  final String? os;
  @override
  @JsonKey(name: "url")
  final String? url;

  @override
  String toString() {
    return 'ListElement(os: $os, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListElementImpl &&
            (identical(other.os, os) || other.os == os) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, os, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListElementImplCopyWith<_$ListElementImpl> get copyWith =>
      __$$ListElementImplCopyWithImpl<_$ListElementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListElementImplToJson(
      this,
    );
  }
}

abstract class _ListElement implements ListElement {
  const factory _ListElement(
      {@JsonKey(name: "os") final String? os,
      @JsonKey(name: "url") final String? url}) = _$ListElementImpl;

  factory _ListElement.fromJson(Map<String, dynamic> json) =
      _$ListElementImpl.fromJson;

  @override
  @JsonKey(name: "os")
  String? get os;
  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$ListElementImplCopyWith<_$ListElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
