// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MenuTearOff {
  const _$MenuTearOff();

// ignore: unused_element
  _Menu call({String id, int menuCode, String menuName}) {
    return _Menu(
      id: id,
      menuCode: menuCode,
      menuName: menuName,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Menu = _$MenuTearOff();

/// @nodoc
mixin _$Menu {
  String get id;
  int get menuCode;
  String get menuName;

  @JsonKey(ignore: true)
  $MenuCopyWith<Menu> get copyWith;
}

/// @nodoc
abstract class $MenuCopyWith<$Res> {
  factory $MenuCopyWith(Menu value, $Res Function(Menu) then) =
      _$MenuCopyWithImpl<$Res>;
  $Res call({String id, int menuCode, String menuName});
}

/// @nodoc
class _$MenuCopyWithImpl<$Res> implements $MenuCopyWith<$Res> {
  _$MenuCopyWithImpl(this._value, this._then);

  final Menu _value;
  // ignore: unused_field
  final $Res Function(Menu) _then;

  @override
  $Res call({
    Object id = freezed,
    Object menuCode = freezed,
    Object menuName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      menuCode: menuCode == freezed ? _value.menuCode : menuCode as int,
      menuName: menuName == freezed ? _value.menuName : menuName as String,
    ));
  }
}

/// @nodoc
abstract class _$MenuCopyWith<$Res> implements $MenuCopyWith<$Res> {
  factory _$MenuCopyWith(_Menu value, $Res Function(_Menu) then) =
      __$MenuCopyWithImpl<$Res>;
  @override
  $Res call({String id, int menuCode, String menuName});
}

/// @nodoc
class __$MenuCopyWithImpl<$Res> extends _$MenuCopyWithImpl<$Res>
    implements _$MenuCopyWith<$Res> {
  __$MenuCopyWithImpl(_Menu _value, $Res Function(_Menu) _then)
      : super(_value, (v) => _then(v as _Menu));

  @override
  _Menu get _value => super._value as _Menu;

  @override
  $Res call({
    Object id = freezed,
    Object menuCode = freezed,
    Object menuName = freezed,
  }) {
    return _then(_Menu(
      id: id == freezed ? _value.id : id as String,
      menuCode: menuCode == freezed ? _value.menuCode : menuCode as int,
      menuName: menuName == freezed ? _value.menuName : menuName as String,
    ));
  }
}

/// @nodoc
class _$_Menu implements _Menu {
  _$_Menu({this.id, this.menuCode, this.menuName});

  @override
  final String id;
  @override
  final int menuCode;
  @override
  final String menuName;

  @override
  String toString() {
    return 'Menu(id: $id, menuCode: $menuCode, menuName: $menuName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Menu &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.menuCode, menuCode) ||
                const DeepCollectionEquality()
                    .equals(other.menuCode, menuCode)) &&
            (identical(other.menuName, menuName) ||
                const DeepCollectionEquality()
                    .equals(other.menuName, menuName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(menuCode) ^
      const DeepCollectionEquality().hash(menuName);

  @JsonKey(ignore: true)
  @override
  _$MenuCopyWith<_Menu> get copyWith =>
      __$MenuCopyWithImpl<_Menu>(this, _$identity);
}

abstract class _Menu implements Menu {
  factory _Menu({String id, int menuCode, String menuName}) = _$_Menu;

  @override
  String get id;
  @override
  int get menuCode;
  @override
  String get menuName;
  @override
  @JsonKey(ignore: true)
  _$MenuCopyWith<_Menu> get copyWith;
}
