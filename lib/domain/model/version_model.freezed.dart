// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'version_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VersionModelTearOff {
  const _$VersionModelTearOff();

// ignore: unused_element
  _VersionModel call(
      {String appName,
      String packageName,
      String version,
      String buildNumber}) {
    return _VersionModel(
      appName: appName,
      packageName: packageName,
      version: version,
      buildNumber: buildNumber,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VersionModel = _$VersionModelTearOff();

/// @nodoc
mixin _$VersionModel {
  String get appName;
  String get packageName;
  String get version;
  String get buildNumber;

  @JsonKey(ignore: true)
  $VersionModelCopyWith<VersionModel> get copyWith;
}

/// @nodoc
abstract class $VersionModelCopyWith<$Res> {
  factory $VersionModelCopyWith(
          VersionModel value, $Res Function(VersionModel) then) =
      _$VersionModelCopyWithImpl<$Res>;
  $Res call(
      {String appName, String packageName, String version, String buildNumber});
}

/// @nodoc
class _$VersionModelCopyWithImpl<$Res> implements $VersionModelCopyWith<$Res> {
  _$VersionModelCopyWithImpl(this._value, this._then);

  final VersionModel _value;
  // ignore: unused_field
  final $Res Function(VersionModel) _then;

  @override
  $Res call({
    Object appName = freezed,
    Object packageName = freezed,
    Object version = freezed,
    Object buildNumber = freezed,
  }) {
    return _then(_value.copyWith(
      appName: appName == freezed ? _value.appName : appName as String,
      packageName:
          packageName == freezed ? _value.packageName : packageName as String,
      version: version == freezed ? _value.version : version as String,
      buildNumber:
          buildNumber == freezed ? _value.buildNumber : buildNumber as String,
    ));
  }
}

/// @nodoc
abstract class _$VersionModelCopyWith<$Res>
    implements $VersionModelCopyWith<$Res> {
  factory _$VersionModelCopyWith(
          _VersionModel value, $Res Function(_VersionModel) then) =
      __$VersionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String appName, String packageName, String version, String buildNumber});
}

/// @nodoc
class __$VersionModelCopyWithImpl<$Res> extends _$VersionModelCopyWithImpl<$Res>
    implements _$VersionModelCopyWith<$Res> {
  __$VersionModelCopyWithImpl(
      _VersionModel _value, $Res Function(_VersionModel) _then)
      : super(_value, (v) => _then(v as _VersionModel));

  @override
  _VersionModel get _value => super._value as _VersionModel;

  @override
  $Res call({
    Object appName = freezed,
    Object packageName = freezed,
    Object version = freezed,
    Object buildNumber = freezed,
  }) {
    return _then(_VersionModel(
      appName: appName == freezed ? _value.appName : appName as String,
      packageName:
          packageName == freezed ? _value.packageName : packageName as String,
      version: version == freezed ? _value.version : version as String,
      buildNumber:
          buildNumber == freezed ? _value.buildNumber : buildNumber as String,
    ));
  }
}

/// @nodoc
class _$_VersionModel implements _VersionModel {
  _$_VersionModel(
      {this.appName, this.packageName, this.version, this.buildNumber});

  @override
  final String appName;
  @override
  final String packageName;
  @override
  final String version;
  @override
  final String buildNumber;

  @override
  String toString() {
    return 'VersionModel(appName: $appName, packageName: $packageName, version: $version, buildNumber: $buildNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VersionModel &&
            (identical(other.appName, appName) ||
                const DeepCollectionEquality()
                    .equals(other.appName, appName)) &&
            (identical(other.packageName, packageName) ||
                const DeepCollectionEquality()
                    .equals(other.packageName, packageName)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.buildNumber, buildNumber) ||
                const DeepCollectionEquality()
                    .equals(other.buildNumber, buildNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appName) ^
      const DeepCollectionEquality().hash(packageName) ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(buildNumber);

  @JsonKey(ignore: true)
  @override
  _$VersionModelCopyWith<_VersionModel> get copyWith =>
      __$VersionModelCopyWithImpl<_VersionModel>(this, _$identity);
}

abstract class _VersionModel implements VersionModel {
  factory _VersionModel(
      {String appName,
      String packageName,
      String version,
      String buildNumber}) = _$_VersionModel;

  @override
  String get appName;
  @override
  String get packageName;
  @override
  String get version;
  @override
  String get buildNumber;
  @override
  @JsonKey(ignore: true)
  _$VersionModelCopyWith<_VersionModel> get copyWith;
}
