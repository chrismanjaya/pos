// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ActionTearOff {
  const _$ActionTearOff();

// ignore: unused_element
  _Action call({String id, String menuId, String action}) {
    return _Action(
      id: id,
      menuId: menuId,
      action: action,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Action = _$ActionTearOff();

/// @nodoc
mixin _$Action {
  String get id;
  String get menuId;
  String get action;

  @JsonKey(ignore: true)
  $ActionCopyWith<Action> get copyWith;
}

/// @nodoc
abstract class $ActionCopyWith<$Res> {
  factory $ActionCopyWith(Action value, $Res Function(Action) then) =
      _$ActionCopyWithImpl<$Res>;
  $Res call({String id, String menuId, String action});
}

/// @nodoc
class _$ActionCopyWithImpl<$Res> implements $ActionCopyWith<$Res> {
  _$ActionCopyWithImpl(this._value, this._then);

  final Action _value;
  // ignore: unused_field
  final $Res Function(Action) _then;

  @override
  $Res call({
    Object id = freezed,
    Object menuId = freezed,
    Object action = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      menuId: menuId == freezed ? _value.menuId : menuId as String,
      action: action == freezed ? _value.action : action as String,
    ));
  }
}

/// @nodoc
abstract class _$ActionCopyWith<$Res> implements $ActionCopyWith<$Res> {
  factory _$ActionCopyWith(_Action value, $Res Function(_Action) then) =
      __$ActionCopyWithImpl<$Res>;
  @override
  $Res call({String id, String menuId, String action});
}

/// @nodoc
class __$ActionCopyWithImpl<$Res> extends _$ActionCopyWithImpl<$Res>
    implements _$ActionCopyWith<$Res> {
  __$ActionCopyWithImpl(_Action _value, $Res Function(_Action) _then)
      : super(_value, (v) => _then(v as _Action));

  @override
  _Action get _value => super._value as _Action;

  @override
  $Res call({
    Object id = freezed,
    Object menuId = freezed,
    Object action = freezed,
  }) {
    return _then(_Action(
      id: id == freezed ? _value.id : id as String,
      menuId: menuId == freezed ? _value.menuId : menuId as String,
      action: action == freezed ? _value.action : action as String,
    ));
  }
}

/// @nodoc
class _$_Action implements _Action {
  _$_Action({this.id, this.menuId, this.action});

  @override
  final String id;
  @override
  final String menuId;
  @override
  final String action;

  @override
  String toString() {
    return 'Action(id: $id, menuId: $menuId, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Action &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.menuId, menuId) ||
                const DeepCollectionEquality().equals(other.menuId, menuId)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(menuId) ^
      const DeepCollectionEquality().hash(action);

  @JsonKey(ignore: true)
  @override
  _$ActionCopyWith<_Action> get copyWith =>
      __$ActionCopyWithImpl<_Action>(this, _$identity);
}

abstract class _Action implements Action {
  factory _Action({String id, String menuId, String action}) = _$_Action;

  @override
  String get id;
  @override
  String get menuId;
  @override
  String get action;
  @override
  @JsonKey(ignore: true)
  _$ActionCopyWith<_Action> get copyWith;
}
