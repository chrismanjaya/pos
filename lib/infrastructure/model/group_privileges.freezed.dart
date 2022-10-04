// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'group_privileges.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GroupPrivilegesTearOff {
  const _$GroupPrivilegesTearOff();

// ignore: unused_element
  _GroupPrivileges call(
      {String id,
      String groupId,
      String actionId,
      String menuName,
      int menuCode,
      String action}) {
    return _GroupPrivileges(
      id: id,
      groupId: groupId,
      actionId: actionId,
      menuName: menuName,
      menuCode: menuCode,
      action: action,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GroupPrivileges = _$GroupPrivilegesTearOff();

/// @nodoc
mixin _$GroupPrivileges {
  String get id;
  String get groupId;
  String get actionId;
  String get menuName;
  int get menuCode;
  String get action;

  @JsonKey(ignore: true)
  $GroupPrivilegesCopyWith<GroupPrivileges> get copyWith;
}

/// @nodoc
abstract class $GroupPrivilegesCopyWith<$Res> {
  factory $GroupPrivilegesCopyWith(
          GroupPrivileges value, $Res Function(GroupPrivileges) then) =
      _$GroupPrivilegesCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String groupId,
      String actionId,
      String menuName,
      int menuCode,
      String action});
}

/// @nodoc
class _$GroupPrivilegesCopyWithImpl<$Res>
    implements $GroupPrivilegesCopyWith<$Res> {
  _$GroupPrivilegesCopyWithImpl(this._value, this._then);

  final GroupPrivileges _value;
  // ignore: unused_field
  final $Res Function(GroupPrivileges) _then;

  @override
  $Res call({
    Object id = freezed,
    Object groupId = freezed,
    Object actionId = freezed,
    Object menuName = freezed,
    Object menuCode = freezed,
    Object action = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      groupId: groupId == freezed ? _value.groupId : groupId as String,
      actionId: actionId == freezed ? _value.actionId : actionId as String,
      menuName: menuName == freezed ? _value.menuName : menuName as String,
      menuCode: menuCode == freezed ? _value.menuCode : menuCode as int,
      action: action == freezed ? _value.action : action as String,
    ));
  }
}

/// @nodoc
abstract class _$GroupPrivilegesCopyWith<$Res>
    implements $GroupPrivilegesCopyWith<$Res> {
  factory _$GroupPrivilegesCopyWith(
          _GroupPrivileges value, $Res Function(_GroupPrivileges) then) =
      __$GroupPrivilegesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String groupId,
      String actionId,
      String menuName,
      int menuCode,
      String action});
}

/// @nodoc
class __$GroupPrivilegesCopyWithImpl<$Res>
    extends _$GroupPrivilegesCopyWithImpl<$Res>
    implements _$GroupPrivilegesCopyWith<$Res> {
  __$GroupPrivilegesCopyWithImpl(
      _GroupPrivileges _value, $Res Function(_GroupPrivileges) _then)
      : super(_value, (v) => _then(v as _GroupPrivileges));

  @override
  _GroupPrivileges get _value => super._value as _GroupPrivileges;

  @override
  $Res call({
    Object id = freezed,
    Object groupId = freezed,
    Object actionId = freezed,
    Object menuName = freezed,
    Object menuCode = freezed,
    Object action = freezed,
  }) {
    return _then(_GroupPrivileges(
      id: id == freezed ? _value.id : id as String,
      groupId: groupId == freezed ? _value.groupId : groupId as String,
      actionId: actionId == freezed ? _value.actionId : actionId as String,
      menuName: menuName == freezed ? _value.menuName : menuName as String,
      menuCode: menuCode == freezed ? _value.menuCode : menuCode as int,
      action: action == freezed ? _value.action : action as String,
    ));
  }
}

/// @nodoc
class _$_GroupPrivileges implements _GroupPrivileges {
  _$_GroupPrivileges(
      {this.id,
      this.groupId,
      this.actionId,
      this.menuName,
      this.menuCode,
      this.action});

  @override
  final String id;
  @override
  final String groupId;
  @override
  final String actionId;
  @override
  final String menuName;
  @override
  final int menuCode;
  @override
  final String action;

  @override
  String toString() {
    return 'GroupPrivileges(id: $id, groupId: $groupId, actionId: $actionId, menuName: $menuName, menuCode: $menuCode, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupPrivileges &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality()
                    .equals(other.groupId, groupId)) &&
            (identical(other.actionId, actionId) ||
                const DeepCollectionEquality()
                    .equals(other.actionId, actionId)) &&
            (identical(other.menuName, menuName) ||
                const DeepCollectionEquality()
                    .equals(other.menuName, menuName)) &&
            (identical(other.menuCode, menuCode) ||
                const DeepCollectionEquality()
                    .equals(other.menuCode, menuCode)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(actionId) ^
      const DeepCollectionEquality().hash(menuName) ^
      const DeepCollectionEquality().hash(menuCode) ^
      const DeepCollectionEquality().hash(action);

  @JsonKey(ignore: true)
  @override
  _$GroupPrivilegesCopyWith<_GroupPrivileges> get copyWith =>
      __$GroupPrivilegesCopyWithImpl<_GroupPrivileges>(this, _$identity);
}

abstract class _GroupPrivileges implements GroupPrivileges {
  factory _GroupPrivileges(
      {String id,
      String groupId,
      String actionId,
      String menuName,
      int menuCode,
      String action}) = _$_GroupPrivileges;

  @override
  String get id;
  @override
  String get groupId;
  @override
  String get actionId;
  @override
  String get menuName;
  @override
  int get menuCode;
  @override
  String get action;
  @override
  @JsonKey(ignore: true)
  _$GroupPrivilegesCopyWith<_GroupPrivileges> get copyWith;
}
