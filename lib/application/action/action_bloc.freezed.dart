// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'action_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ActionEventTearOff {
  const _$ActionEventTearOff();

// ignore: unused_element
  SetAction setAction(String action) {
    return SetAction(
      action,
    );
  }

// ignore: unused_element
  ActionClicked actionClicked() {
    return const ActionClicked();
  }
}

/// @nodoc
// ignore: unused_element
const $ActionEvent = _$ActionEventTearOff();

/// @nodoc
mixin _$ActionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setAction(String action),
    @required TResult actionClicked(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setAction(String action),
    TResult actionClicked(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setAction(SetAction value),
    @required TResult actionClicked(ActionClicked value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setAction(SetAction value),
    TResult actionClicked(ActionClicked value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ActionEventCopyWith<$Res> {
  factory $ActionEventCopyWith(
          ActionEvent value, $Res Function(ActionEvent) then) =
      _$ActionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActionEventCopyWithImpl<$Res> implements $ActionEventCopyWith<$Res> {
  _$ActionEventCopyWithImpl(this._value, this._then);

  final ActionEvent _value;
  // ignore: unused_field
  final $Res Function(ActionEvent) _then;
}

/// @nodoc
abstract class $SetActionCopyWith<$Res> {
  factory $SetActionCopyWith(SetAction value, $Res Function(SetAction) then) =
      _$SetActionCopyWithImpl<$Res>;
  $Res call({String action});
}

/// @nodoc
class _$SetActionCopyWithImpl<$Res> extends _$ActionEventCopyWithImpl<$Res>
    implements $SetActionCopyWith<$Res> {
  _$SetActionCopyWithImpl(SetAction _value, $Res Function(SetAction) _then)
      : super(_value, (v) => _then(v as SetAction));

  @override
  SetAction get _value => super._value as SetAction;

  @override
  $Res call({
    Object action = freezed,
  }) {
    return _then(SetAction(
      action == freezed ? _value.action : action as String,
    ));
  }
}

/// @nodoc
class _$SetAction implements SetAction {
  const _$SetAction(this.action) : assert(action != null);

  @override
  final String action;

  @override
  String toString() {
    return 'ActionEvent.setAction(action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetAction &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(action);

  @JsonKey(ignore: true)
  @override
  $SetActionCopyWith<SetAction> get copyWith =>
      _$SetActionCopyWithImpl<SetAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setAction(String action),
    @required TResult actionClicked(),
  }) {
    assert(setAction != null);
    assert(actionClicked != null);
    return setAction(action);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setAction(String action),
    TResult actionClicked(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setAction != null) {
      return setAction(action);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setAction(SetAction value),
    @required TResult actionClicked(ActionClicked value),
  }) {
    assert(setAction != null);
    assert(actionClicked != null);
    return setAction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setAction(SetAction value),
    TResult actionClicked(ActionClicked value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setAction != null) {
      return setAction(this);
    }
    return orElse();
  }
}

abstract class SetAction implements ActionEvent {
  const factory SetAction(String action) = _$SetAction;

  String get action;
  @JsonKey(ignore: true)
  $SetActionCopyWith<SetAction> get copyWith;
}

/// @nodoc
abstract class $ActionClickedCopyWith<$Res> {
  factory $ActionClickedCopyWith(
          ActionClicked value, $Res Function(ActionClicked) then) =
      _$ActionClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActionClickedCopyWithImpl<$Res> extends _$ActionEventCopyWithImpl<$Res>
    implements $ActionClickedCopyWith<$Res> {
  _$ActionClickedCopyWithImpl(
      ActionClicked _value, $Res Function(ActionClicked) _then)
      : super(_value, (v) => _then(v as ActionClicked));

  @override
  ActionClicked get _value => super._value as ActionClicked;
}

/// @nodoc
class _$ActionClicked implements ActionClicked {
  const _$ActionClicked();

  @override
  String toString() {
    return 'ActionEvent.actionClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ActionClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult setAction(String action),
    @required TResult actionClicked(),
  }) {
    assert(setAction != null);
    assert(actionClicked != null);
    return actionClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult setAction(String action),
    TResult actionClicked(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionClicked != null) {
      return actionClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult setAction(SetAction value),
    @required TResult actionClicked(ActionClicked value),
  }) {
    assert(setAction != null);
    assert(actionClicked != null);
    return actionClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult setAction(SetAction value),
    TResult actionClicked(ActionClicked value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionClicked != null) {
      return actionClicked(this);
    }
    return orElse();
  }
}

abstract class ActionClicked implements ActionEvent {
  const factory ActionClicked() = _$ActionClicked;
}

/// @nodoc
class _$ActionStateTearOff {
  const _$ActionStateTearOff();

// ignore: unused_element
  _ActionState call({@required String action, @required bool isSelected}) {
    return _ActionState(
      action: action,
      isSelected: isSelected,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ActionState = _$ActionStateTearOff();

/// @nodoc
mixin _$ActionState {
  String get action;
  bool get isSelected;

  @JsonKey(ignore: true)
  $ActionStateCopyWith<ActionState> get copyWith;
}

/// @nodoc
abstract class $ActionStateCopyWith<$Res> {
  factory $ActionStateCopyWith(
          ActionState value, $Res Function(ActionState) then) =
      _$ActionStateCopyWithImpl<$Res>;
  $Res call({String action, bool isSelected});
}

/// @nodoc
class _$ActionStateCopyWithImpl<$Res> implements $ActionStateCopyWith<$Res> {
  _$ActionStateCopyWithImpl(this._value, this._then);

  final ActionState _value;
  // ignore: unused_field
  final $Res Function(ActionState) _then;

  @override
  $Res call({
    Object action = freezed,
    Object isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed ? _value.action : action as String,
      isSelected:
          isSelected == freezed ? _value.isSelected : isSelected as bool,
    ));
  }
}

/// @nodoc
abstract class _$ActionStateCopyWith<$Res>
    implements $ActionStateCopyWith<$Res> {
  factory _$ActionStateCopyWith(
          _ActionState value, $Res Function(_ActionState) then) =
      __$ActionStateCopyWithImpl<$Res>;
  @override
  $Res call({String action, bool isSelected});
}

/// @nodoc
class __$ActionStateCopyWithImpl<$Res> extends _$ActionStateCopyWithImpl<$Res>
    implements _$ActionStateCopyWith<$Res> {
  __$ActionStateCopyWithImpl(
      _ActionState _value, $Res Function(_ActionState) _then)
      : super(_value, (v) => _then(v as _ActionState));

  @override
  _ActionState get _value => super._value as _ActionState;

  @override
  $Res call({
    Object action = freezed,
    Object isSelected = freezed,
  }) {
    return _then(_ActionState(
      action: action == freezed ? _value.action : action as String,
      isSelected:
          isSelected == freezed ? _value.isSelected : isSelected as bool,
    ));
  }
}

/// @nodoc
class _$_ActionState implements _ActionState {
  const _$_ActionState({@required this.action, @required this.isSelected})
      : assert(action != null),
        assert(isSelected != null);

  @override
  final String action;
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'ActionState(action: $action, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActionState &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.isSelected, isSelected) ||
                const DeepCollectionEquality()
                    .equals(other.isSelected, isSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(isSelected);

  @JsonKey(ignore: true)
  @override
  _$ActionStateCopyWith<_ActionState> get copyWith =>
      __$ActionStateCopyWithImpl<_ActionState>(this, _$identity);
}

abstract class _ActionState implements ActionState {
  const factory _ActionState(
      {@required String action, @required bool isSelected}) = _$_ActionState;

  @override
  String get action;
  @override
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$ActionStateCopyWith<_ActionState> get copyWith;
}
