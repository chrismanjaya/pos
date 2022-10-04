// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'privilege_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PrivilegeModelTearOff {
  const _$PrivilegeModelTearOff();

// ignore: unused_element
  _PrivilegeModel call(
      {String id,
      String actionId,
      String menuName,
      int menuCode,
      String action}) {
    return _PrivilegeModel(
      id: id,
      actionId: actionId,
      menuName: menuName,
      menuCode: menuCode,
      action: action,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PrivilegeModel = _$PrivilegeModelTearOff();

/// @nodoc
mixin _$PrivilegeModel {
  String get id;
  String get actionId;
  String get menuName;
  int get menuCode;
  String get action;

  @JsonKey(ignore: true)
  $PrivilegeModelCopyWith<PrivilegeModel> get copyWith;
}

/// @nodoc
abstract class $PrivilegeModelCopyWith<$Res> {
  factory $PrivilegeModelCopyWith(
          PrivilegeModel value, $Res Function(PrivilegeModel) then) =
      _$PrivilegeModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String actionId,
      String menuName,
      int menuCode,
      String action});
}

/// @nodoc
class _$PrivilegeModelCopyWithImpl<$Res>
    implements $PrivilegeModelCopyWith<$Res> {
  _$PrivilegeModelCopyWithImpl(this._value, this._then);

  final PrivilegeModel _value;
  // ignore: unused_field
  final $Res Function(PrivilegeModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object actionId = freezed,
    Object menuName = freezed,
    Object menuCode = freezed,
    Object action = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      actionId: actionId == freezed ? _value.actionId : actionId as String,
      menuName: menuName == freezed ? _value.menuName : menuName as String,
      menuCode: menuCode == freezed ? _value.menuCode : menuCode as int,
      action: action == freezed ? _value.action : action as String,
    ));
  }
}

/// @nodoc
abstract class _$PrivilegeModelCopyWith<$Res>
    implements $PrivilegeModelCopyWith<$Res> {
  factory _$PrivilegeModelCopyWith(
          _PrivilegeModel value, $Res Function(_PrivilegeModel) then) =
      __$PrivilegeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String actionId,
      String menuName,
      int menuCode,
      String action});
}

/// @nodoc
class __$PrivilegeModelCopyWithImpl<$Res>
    extends _$PrivilegeModelCopyWithImpl<$Res>
    implements _$PrivilegeModelCopyWith<$Res> {
  __$PrivilegeModelCopyWithImpl(
      _PrivilegeModel _value, $Res Function(_PrivilegeModel) _then)
      : super(_value, (v) => _then(v as _PrivilegeModel));

  @override
  _PrivilegeModel get _value => super._value as _PrivilegeModel;

  @override
  $Res call({
    Object id = freezed,
    Object actionId = freezed,
    Object menuName = freezed,
    Object menuCode = freezed,
    Object action = freezed,
  }) {
    return _then(_PrivilegeModel(
      id: id == freezed ? _value.id : id as String,
      actionId: actionId == freezed ? _value.actionId : actionId as String,
      menuName: menuName == freezed ? _value.menuName : menuName as String,
      menuCode: menuCode == freezed ? _value.menuCode : menuCode as int,
      action: action == freezed ? _value.action : action as String,
    ));
  }
}

/// @nodoc
class _$_PrivilegeModel implements _PrivilegeModel {
  _$_PrivilegeModel(
      {this.id, this.actionId, this.menuName, this.menuCode, this.action});

  @override
  final String id;
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
    return 'PrivilegeModel(id: $id, actionId: $actionId, menuName: $menuName, menuCode: $menuCode, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PrivilegeModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
      const DeepCollectionEquality().hash(actionId) ^
      const DeepCollectionEquality().hash(menuName) ^
      const DeepCollectionEquality().hash(menuCode) ^
      const DeepCollectionEquality().hash(action);

  @JsonKey(ignore: true)
  @override
  _$PrivilegeModelCopyWith<_PrivilegeModel> get copyWith =>
      __$PrivilegeModelCopyWithImpl<_PrivilegeModel>(this, _$identity);
}

abstract class _PrivilegeModel implements PrivilegeModel {
  factory _PrivilegeModel(
      {String id,
      String actionId,
      String menuName,
      int menuCode,
      String action}) = _$_PrivilegeModel;

  @override
  String get id;
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
  _$PrivilegeModelCopyWith<_PrivilegeModel> get copyWith;
}
