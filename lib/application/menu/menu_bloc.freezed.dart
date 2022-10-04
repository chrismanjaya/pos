// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'menu_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MenuEventTearOff {
  const _$MenuEventTearOff();

// ignore: unused_element
  GetAllMenu getAllMenu() {
    return const GetAllMenu();
  }

// ignore: unused_element
  SetSelectedMenu setSelectedMenu(List<MenuModel> listMenuModel) {
    return SetSelectedMenu(
      listMenuModel,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MenuEvent = _$MenuEventTearOff();

/// @nodoc
mixin _$MenuEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllMenu(),
    @required TResult setSelectedMenu(List<MenuModel> listMenuModel),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllMenu(),
    TResult setSelectedMenu(List<MenuModel> listMenuModel),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllMenu(GetAllMenu value),
    @required TResult setSelectedMenu(SetSelectedMenu value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllMenu(GetAllMenu value),
    TResult setSelectedMenu(SetSelectedMenu value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $MenuEventCopyWith<$Res> {
  factory $MenuEventCopyWith(MenuEvent value, $Res Function(MenuEvent) then) =
      _$MenuEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MenuEventCopyWithImpl<$Res> implements $MenuEventCopyWith<$Res> {
  _$MenuEventCopyWithImpl(this._value, this._then);

  final MenuEvent _value;
  // ignore: unused_field
  final $Res Function(MenuEvent) _then;
}

/// @nodoc
abstract class $GetAllMenuCopyWith<$Res> {
  factory $GetAllMenuCopyWith(
          GetAllMenu value, $Res Function(GetAllMenu) then) =
      _$GetAllMenuCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAllMenuCopyWithImpl<$Res> extends _$MenuEventCopyWithImpl<$Res>
    implements $GetAllMenuCopyWith<$Res> {
  _$GetAllMenuCopyWithImpl(GetAllMenu _value, $Res Function(GetAllMenu) _then)
      : super(_value, (v) => _then(v as GetAllMenu));

  @override
  GetAllMenu get _value => super._value as GetAllMenu;
}

/// @nodoc
class _$GetAllMenu implements GetAllMenu {
  const _$GetAllMenu();

  @override
  String toString() {
    return 'MenuEvent.getAllMenu()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetAllMenu);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllMenu(),
    @required TResult setSelectedMenu(List<MenuModel> listMenuModel),
  }) {
    assert(getAllMenu != null);
    assert(setSelectedMenu != null);
    return getAllMenu();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllMenu(),
    TResult setSelectedMenu(List<MenuModel> listMenuModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllMenu != null) {
      return getAllMenu();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllMenu(GetAllMenu value),
    @required TResult setSelectedMenu(SetSelectedMenu value),
  }) {
    assert(getAllMenu != null);
    assert(setSelectedMenu != null);
    return getAllMenu(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllMenu(GetAllMenu value),
    TResult setSelectedMenu(SetSelectedMenu value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllMenu != null) {
      return getAllMenu(this);
    }
    return orElse();
  }
}

abstract class GetAllMenu implements MenuEvent {
  const factory GetAllMenu() = _$GetAllMenu;
}

/// @nodoc
abstract class $SetSelectedMenuCopyWith<$Res> {
  factory $SetSelectedMenuCopyWith(
          SetSelectedMenu value, $Res Function(SetSelectedMenu) then) =
      _$SetSelectedMenuCopyWithImpl<$Res>;
  $Res call({List<MenuModel> listMenuModel});
}

/// @nodoc
class _$SetSelectedMenuCopyWithImpl<$Res> extends _$MenuEventCopyWithImpl<$Res>
    implements $SetSelectedMenuCopyWith<$Res> {
  _$SetSelectedMenuCopyWithImpl(
      SetSelectedMenu _value, $Res Function(SetSelectedMenu) _then)
      : super(_value, (v) => _then(v as SetSelectedMenu));

  @override
  SetSelectedMenu get _value => super._value as SetSelectedMenu;

  @override
  $Res call({
    Object listMenuModel = freezed,
  }) {
    return _then(SetSelectedMenu(
      listMenuModel == freezed
          ? _value.listMenuModel
          : listMenuModel as List<MenuModel>,
    ));
  }
}

/// @nodoc
class _$SetSelectedMenu implements SetSelectedMenu {
  const _$SetSelectedMenu(this.listMenuModel) : assert(listMenuModel != null);

  @override
  final List<MenuModel> listMenuModel;

  @override
  String toString() {
    return 'MenuEvent.setSelectedMenu(listMenuModel: $listMenuModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetSelectedMenu &&
            (identical(other.listMenuModel, listMenuModel) ||
                const DeepCollectionEquality()
                    .equals(other.listMenuModel, listMenuModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listMenuModel);

  @JsonKey(ignore: true)
  @override
  $SetSelectedMenuCopyWith<SetSelectedMenu> get copyWith =>
      _$SetSelectedMenuCopyWithImpl<SetSelectedMenu>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllMenu(),
    @required TResult setSelectedMenu(List<MenuModel> listMenuModel),
  }) {
    assert(getAllMenu != null);
    assert(setSelectedMenu != null);
    return setSelectedMenu(listMenuModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllMenu(),
    TResult setSelectedMenu(List<MenuModel> listMenuModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setSelectedMenu != null) {
      return setSelectedMenu(listMenuModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllMenu(GetAllMenu value),
    @required TResult setSelectedMenu(SetSelectedMenu value),
  }) {
    assert(getAllMenu != null);
    assert(setSelectedMenu != null);
    return setSelectedMenu(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllMenu(GetAllMenu value),
    TResult setSelectedMenu(SetSelectedMenu value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setSelectedMenu != null) {
      return setSelectedMenu(this);
    }
    return orElse();
  }
}

abstract class SetSelectedMenu implements MenuEvent {
  const factory SetSelectedMenu(List<MenuModel> listMenuModel) =
      _$SetSelectedMenu;

  List<MenuModel> get listMenuModel;
  @JsonKey(ignore: true)
  $SetSelectedMenuCopyWith<SetSelectedMenu> get copyWith;
}

/// @nodoc
class _$MenuStateTearOff {
  const _$MenuStateTearOff();

// ignore: unused_element
  _MenuState call(
      {@required List<MenuModel> listMenu,
      @required List<MenuModel> listMenuSelectedMenu,
      @required int selectedMenu,
      @required bool isLoading,
      @required bool isLoaded,
      @required String errorMessage}) {
    return _MenuState(
      listMenu: listMenu,
      listMenuSelectedMenu: listMenuSelectedMenu,
      selectedMenu: selectedMenu,
      isLoading: isLoading,
      isLoaded: isLoaded,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MenuState = _$MenuStateTearOff();

/// @nodoc
mixin _$MenuState {
  List<MenuModel> get listMenu;
  List<MenuModel> get listMenuSelectedMenu;
  int get selectedMenu;
  bool get isLoading;
  bool get isLoaded;
  String get errorMessage;

  @JsonKey(ignore: true)
  $MenuStateCopyWith<MenuState> get copyWith;
}

/// @nodoc
abstract class $MenuStateCopyWith<$Res> {
  factory $MenuStateCopyWith(MenuState value, $Res Function(MenuState) then) =
      _$MenuStateCopyWithImpl<$Res>;
  $Res call(
      {List<MenuModel> listMenu,
      List<MenuModel> listMenuSelectedMenu,
      int selectedMenu,
      bool isLoading,
      bool isLoaded,
      String errorMessage});
}

/// @nodoc
class _$MenuStateCopyWithImpl<$Res> implements $MenuStateCopyWith<$Res> {
  _$MenuStateCopyWithImpl(this._value, this._then);

  final MenuState _value;
  // ignore: unused_field
  final $Res Function(MenuState) _then;

  @override
  $Res call({
    Object listMenu = freezed,
    Object listMenuSelectedMenu = freezed,
    Object selectedMenu = freezed,
    Object isLoading = freezed,
    Object isLoaded = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      listMenu:
          listMenu == freezed ? _value.listMenu : listMenu as List<MenuModel>,
      listMenuSelectedMenu: listMenuSelectedMenu == freezed
          ? _value.listMenuSelectedMenu
          : listMenuSelectedMenu as List<MenuModel>,
      selectedMenu:
          selectedMenu == freezed ? _value.selectedMenu : selectedMenu as int,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isLoaded: isLoaded == freezed ? _value.isLoaded : isLoaded as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
abstract class _$MenuStateCopyWith<$Res> implements $MenuStateCopyWith<$Res> {
  factory _$MenuStateCopyWith(
          _MenuState value, $Res Function(_MenuState) then) =
      __$MenuStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<MenuModel> listMenu,
      List<MenuModel> listMenuSelectedMenu,
      int selectedMenu,
      bool isLoading,
      bool isLoaded,
      String errorMessage});
}

/// @nodoc
class __$MenuStateCopyWithImpl<$Res> extends _$MenuStateCopyWithImpl<$Res>
    implements _$MenuStateCopyWith<$Res> {
  __$MenuStateCopyWithImpl(_MenuState _value, $Res Function(_MenuState) _then)
      : super(_value, (v) => _then(v as _MenuState));

  @override
  _MenuState get _value => super._value as _MenuState;

  @override
  $Res call({
    Object listMenu = freezed,
    Object listMenuSelectedMenu = freezed,
    Object selectedMenu = freezed,
    Object isLoading = freezed,
    Object isLoaded = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_MenuState(
      listMenu:
          listMenu == freezed ? _value.listMenu : listMenu as List<MenuModel>,
      listMenuSelectedMenu: listMenuSelectedMenu == freezed
          ? _value.listMenuSelectedMenu
          : listMenuSelectedMenu as List<MenuModel>,
      selectedMenu:
          selectedMenu == freezed ? _value.selectedMenu : selectedMenu as int,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isLoaded: isLoaded == freezed ? _value.isLoaded : isLoaded as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$_MenuState implements _MenuState {
  const _$_MenuState(
      {@required this.listMenu,
      @required this.listMenuSelectedMenu,
      @required this.selectedMenu,
      @required this.isLoading,
      @required this.isLoaded,
      @required this.errorMessage})
      : assert(listMenu != null),
        assert(listMenuSelectedMenu != null),
        assert(selectedMenu != null),
        assert(isLoading != null),
        assert(isLoaded != null),
        assert(errorMessage != null);

  @override
  final List<MenuModel> listMenu;
  @override
  final List<MenuModel> listMenuSelectedMenu;
  @override
  final int selectedMenu;
  @override
  final bool isLoading;
  @override
  final bool isLoaded;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'MenuState(listMenu: $listMenu, listMenuSelectedMenu: $listMenuSelectedMenu, selectedMenu: $selectedMenu, isLoading: $isLoading, isLoaded: $isLoaded, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MenuState &&
            (identical(other.listMenu, listMenu) ||
                const DeepCollectionEquality()
                    .equals(other.listMenu, listMenu)) &&
            (identical(other.listMenuSelectedMenu, listMenuSelectedMenu) ||
                const DeepCollectionEquality().equals(
                    other.listMenuSelectedMenu, listMenuSelectedMenu)) &&
            (identical(other.selectedMenu, selectedMenu) ||
                const DeepCollectionEquality()
                    .equals(other.selectedMenu, selectedMenu)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isLoaded, isLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.isLoaded, isLoaded)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listMenu) ^
      const DeepCollectionEquality().hash(listMenuSelectedMenu) ^
      const DeepCollectionEquality().hash(selectedMenu) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isLoaded) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$MenuStateCopyWith<_MenuState> get copyWith =>
      __$MenuStateCopyWithImpl<_MenuState>(this, _$identity);
}

abstract class _MenuState implements MenuState {
  const factory _MenuState(
      {@required List<MenuModel> listMenu,
      @required List<MenuModel> listMenuSelectedMenu,
      @required int selectedMenu,
      @required bool isLoading,
      @required bool isLoaded,
      @required String errorMessage}) = _$_MenuState;

  @override
  List<MenuModel> get listMenu;
  @override
  List<MenuModel> get listMenuSelectedMenu;
  @override
  int get selectedMenu;
  @override
  bool get isLoading;
  @override
  bool get isLoaded;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$MenuStateCopyWith<_MenuState> get copyWith;
}
