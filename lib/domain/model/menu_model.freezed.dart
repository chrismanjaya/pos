// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MenuModelTearOff {
  const _$MenuModelTearOff();

// ignore: unused_element
  _MenuModel call(
      {String id, int menuCode, String menuName, List<Action> listAction}) {
    return _MenuModel(
      id: id,
      menuCode: menuCode,
      menuName: menuName,
      listAction: listAction,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MenuModel = _$MenuModelTearOff();

/// @nodoc
mixin _$MenuModel {
  String get id;
  int get menuCode;
  String get menuName;
  List<Action> get listAction;

  @JsonKey(ignore: true)
  $MenuModelCopyWith<MenuModel> get copyWith;
}

/// @nodoc
abstract class $MenuModelCopyWith<$Res> {
  factory $MenuModelCopyWith(MenuModel value, $Res Function(MenuModel) then) =
      _$MenuModelCopyWithImpl<$Res>;
  $Res call(
      {String id, int menuCode, String menuName, List<Action> listAction});
}

/// @nodoc
class _$MenuModelCopyWithImpl<$Res> implements $MenuModelCopyWith<$Res> {
  _$MenuModelCopyWithImpl(this._value, this._then);

  final MenuModel _value;
  // ignore: unused_field
  final $Res Function(MenuModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object menuCode = freezed,
    Object menuName = freezed,
    Object listAction = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      menuCode: menuCode == freezed ? _value.menuCode : menuCode as int,
      menuName: menuName == freezed ? _value.menuName : menuName as String,
      listAction: listAction == freezed
          ? _value.listAction
          : listAction as List<Action>,
    ));
  }
}

/// @nodoc
abstract class _$MenuModelCopyWith<$Res> implements $MenuModelCopyWith<$Res> {
  factory _$MenuModelCopyWith(
          _MenuModel value, $Res Function(_MenuModel) then) =
      __$MenuModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, int menuCode, String menuName, List<Action> listAction});
}

/// @nodoc
class __$MenuModelCopyWithImpl<$Res> extends _$MenuModelCopyWithImpl<$Res>
    implements _$MenuModelCopyWith<$Res> {
  __$MenuModelCopyWithImpl(_MenuModel _value, $Res Function(_MenuModel) _then)
      : super(_value, (v) => _then(v as _MenuModel));

  @override
  _MenuModel get _value => super._value as _MenuModel;

  @override
  $Res call({
    Object id = freezed,
    Object menuCode = freezed,
    Object menuName = freezed,
    Object listAction = freezed,
  }) {
    return _then(_MenuModel(
      id: id == freezed ? _value.id : id as String,
      menuCode: menuCode == freezed ? _value.menuCode : menuCode as int,
      menuName: menuName == freezed ? _value.menuName : menuName as String,
      listAction: listAction == freezed
          ? _value.listAction
          : listAction as List<Action>,
    ));
  }
}

/// @nodoc
class _$_MenuModel implements _MenuModel {
  _$_MenuModel({this.id, this.menuCode, this.menuName, this.listAction});

  @override
  final String id;
  @override
  final int menuCode;
  @override
  final String menuName;
  @override
  final List<Action> listAction;

  @override
  String toString() {
    return 'MenuModel(id: $id, menuCode: $menuCode, menuName: $menuName, listAction: $listAction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MenuModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.menuCode, menuCode) ||
                const DeepCollectionEquality()
                    .equals(other.menuCode, menuCode)) &&
            (identical(other.menuName, menuName) ||
                const DeepCollectionEquality()
                    .equals(other.menuName, menuName)) &&
            (identical(other.listAction, listAction) ||
                const DeepCollectionEquality()
                    .equals(other.listAction, listAction)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(menuCode) ^
      const DeepCollectionEquality().hash(menuName) ^
      const DeepCollectionEquality().hash(listAction);

  @JsonKey(ignore: true)
  @override
  _$MenuModelCopyWith<_MenuModel> get copyWith =>
      __$MenuModelCopyWithImpl<_MenuModel>(this, _$identity);
}

abstract class _MenuModel implements MenuModel {
  factory _MenuModel(
      {String id,
      int menuCode,
      String menuName,
      List<Action> listAction}) = _$_MenuModel;

  @override
  String get id;
  @override
  int get menuCode;
  @override
  String get menuName;
  @override
  List<Action> get listAction;
  @override
  @JsonKey(ignore: true)
  _$MenuModelCopyWith<_MenuModel> get copyWith;
}
