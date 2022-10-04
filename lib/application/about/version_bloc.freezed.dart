// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'version_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VersionEventTearOff {
  const _$VersionEventTearOff();

// ignore: unused_element
  GetVersion getVersion() {
    return const GetVersion();
  }
}

/// @nodoc
// ignore: unused_element
const $VersionEvent = _$VersionEventTearOff();

/// @nodoc
mixin _$VersionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getVersion(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getVersion(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getVersion(GetVersion value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getVersion(GetVersion value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $VersionEventCopyWith<$Res> {
  factory $VersionEventCopyWith(
          VersionEvent value, $Res Function(VersionEvent) then) =
      _$VersionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$VersionEventCopyWithImpl<$Res> implements $VersionEventCopyWith<$Res> {
  _$VersionEventCopyWithImpl(this._value, this._then);

  final VersionEvent _value;
  // ignore: unused_field
  final $Res Function(VersionEvent) _then;
}

/// @nodoc
abstract class $GetVersionCopyWith<$Res> {
  factory $GetVersionCopyWith(
          GetVersion value, $Res Function(GetVersion) then) =
      _$GetVersionCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetVersionCopyWithImpl<$Res> extends _$VersionEventCopyWithImpl<$Res>
    implements $GetVersionCopyWith<$Res> {
  _$GetVersionCopyWithImpl(GetVersion _value, $Res Function(GetVersion) _then)
      : super(_value, (v) => _then(v as GetVersion));

  @override
  GetVersion get _value => super._value as GetVersion;
}

/// @nodoc
class _$GetVersion implements GetVersion {
  const _$GetVersion();

  @override
  String toString() {
    return 'VersionEvent.getVersion()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetVersion);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getVersion(),
  }) {
    assert(getVersion != null);
    return getVersion();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getVersion(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getVersion != null) {
      return getVersion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getVersion(GetVersion value),
  }) {
    assert(getVersion != null);
    return getVersion(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getVersion(GetVersion value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getVersion != null) {
      return getVersion(this);
    }
    return orElse();
  }
}

abstract class GetVersion implements VersionEvent {
  const factory GetVersion() = _$GetVersion;
}

/// @nodoc
class _$VersionStateTearOff {
  const _$VersionStateTearOff();

// ignore: unused_element
  _VersionState call({@required VersionModel versionModel}) {
    return _VersionState(
      versionModel: versionModel,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VersionState = _$VersionStateTearOff();

/// @nodoc
mixin _$VersionState {
  VersionModel get versionModel;

  @JsonKey(ignore: true)
  $VersionStateCopyWith<VersionState> get copyWith;
}

/// @nodoc
abstract class $VersionStateCopyWith<$Res> {
  factory $VersionStateCopyWith(
          VersionState value, $Res Function(VersionState) then) =
      _$VersionStateCopyWithImpl<$Res>;
  $Res call({VersionModel versionModel});

  $VersionModelCopyWith<$Res> get versionModel;
}

/// @nodoc
class _$VersionStateCopyWithImpl<$Res> implements $VersionStateCopyWith<$Res> {
  _$VersionStateCopyWithImpl(this._value, this._then);

  final VersionState _value;
  // ignore: unused_field
  final $Res Function(VersionState) _then;

  @override
  $Res call({
    Object versionModel = freezed,
  }) {
    return _then(_value.copyWith(
      versionModel: versionModel == freezed
          ? _value.versionModel
          : versionModel as VersionModel,
    ));
  }

  @override
  $VersionModelCopyWith<$Res> get versionModel {
    if (_value.versionModel == null) {
      return null;
    }
    return $VersionModelCopyWith<$Res>(_value.versionModel, (value) {
      return _then(_value.copyWith(versionModel: value));
    });
  }
}

/// @nodoc
abstract class _$VersionStateCopyWith<$Res>
    implements $VersionStateCopyWith<$Res> {
  factory _$VersionStateCopyWith(
          _VersionState value, $Res Function(_VersionState) then) =
      __$VersionStateCopyWithImpl<$Res>;
  @override
  $Res call({VersionModel versionModel});

  @override
  $VersionModelCopyWith<$Res> get versionModel;
}

/// @nodoc
class __$VersionStateCopyWithImpl<$Res> extends _$VersionStateCopyWithImpl<$Res>
    implements _$VersionStateCopyWith<$Res> {
  __$VersionStateCopyWithImpl(
      _VersionState _value, $Res Function(_VersionState) _then)
      : super(_value, (v) => _then(v as _VersionState));

  @override
  _VersionState get _value => super._value as _VersionState;

  @override
  $Res call({
    Object versionModel = freezed,
  }) {
    return _then(_VersionState(
      versionModel: versionModel == freezed
          ? _value.versionModel
          : versionModel as VersionModel,
    ));
  }
}

/// @nodoc
class _$_VersionState implements _VersionState {
  const _$_VersionState({@required this.versionModel})
      : assert(versionModel != null);

  @override
  final VersionModel versionModel;

  @override
  String toString() {
    return 'VersionState(versionModel: $versionModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VersionState &&
            (identical(other.versionModel, versionModel) ||
                const DeepCollectionEquality()
                    .equals(other.versionModel, versionModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(versionModel);

  @JsonKey(ignore: true)
  @override
  _$VersionStateCopyWith<_VersionState> get copyWith =>
      __$VersionStateCopyWithImpl<_VersionState>(this, _$identity);
}

abstract class _VersionState implements VersionState {
  const factory _VersionState({@required VersionModel versionModel}) =
      _$_VersionState;

  @override
  VersionModel get versionModel;
  @override
  @JsonKey(ignore: true)
  _$VersionStateCopyWith<_VersionState> get copyWith;
}
