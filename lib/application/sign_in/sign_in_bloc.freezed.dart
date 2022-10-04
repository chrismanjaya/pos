// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignInEventTearOff {
  const _$SignInEventTearOff();

// ignore: unused_element
  EmailChange emailChanged(String email) {
    return EmailChange(
      email,
    );
  }

// ignore: unused_element
  PasswordChange passwordChanged(String password) {
    return PasswordChange(
      password,
    );
  }

// ignore: unused_element
  ObscureTextChanged obscureTextChanged(bool isObscureText) {
    return ObscureTextChanged(
      isObscureText,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignInEvent = _$SignInEventTearOff();

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult obscureTextChanged(bool isObscureText),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult obscureTextChanged(bool isObscureText),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChange value),
    @required TResult passwordChanged(PasswordChange value),
    @required TResult obscureTextChanged(ObscureTextChanged value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChange value),
    TResult passwordChanged(PasswordChange value),
    TResult obscureTextChanged(ObscureTextChanged value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res> implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  final SignInEvent _value;
  // ignore: unused_field
  final $Res Function(SignInEvent) _then;
}

/// @nodoc
abstract class $EmailChangeCopyWith<$Res> {
  factory $EmailChangeCopyWith(
          EmailChange value, $Res Function(EmailChange) then) =
      _$EmailChangeCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangeCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements $EmailChangeCopyWith<$Res> {
  _$EmailChangeCopyWithImpl(
      EmailChange _value, $Res Function(EmailChange) _then)
      : super(_value, (v) => _then(v as EmailChange));

  @override
  EmailChange get _value => super._value as EmailChange;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(EmailChange(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$EmailChange implements EmailChange {
  const _$EmailChange(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'SignInEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChange &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  $EmailChangeCopyWith<EmailChange> get copyWith =>
      _$EmailChangeCopyWithImpl<EmailChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult obscureTextChanged(bool isObscureText),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(obscureTextChanged != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult obscureTextChanged(bool isObscureText),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChange value),
    @required TResult passwordChanged(PasswordChange value),
    @required TResult obscureTextChanged(ObscureTextChanged value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(obscureTextChanged != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChange value),
    TResult passwordChanged(PasswordChange value),
    TResult obscureTextChanged(ObscureTextChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChange implements SignInEvent {
  const factory EmailChange(String email) = _$EmailChange;

  String get email;
  @JsonKey(ignore: true)
  $EmailChangeCopyWith<EmailChange> get copyWith;
}

/// @nodoc
abstract class $PasswordChangeCopyWith<$Res> {
  factory $PasswordChangeCopyWith(
          PasswordChange value, $Res Function(PasswordChange) then) =
      _$PasswordChangeCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangeCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements $PasswordChangeCopyWith<$Res> {
  _$PasswordChangeCopyWithImpl(
      PasswordChange _value, $Res Function(PasswordChange) _then)
      : super(_value, (v) => _then(v as PasswordChange));

  @override
  PasswordChange get _value => super._value as PasswordChange;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(PasswordChange(
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$PasswordChange implements PasswordChange {
  const _$PasswordChange(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChange &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $PasswordChangeCopyWith<PasswordChange> get copyWith =>
      _$PasswordChangeCopyWithImpl<PasswordChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult obscureTextChanged(bool isObscureText),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(obscureTextChanged != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult obscureTextChanged(bool isObscureText),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChange value),
    @required TResult passwordChanged(PasswordChange value),
    @required TResult obscureTextChanged(ObscureTextChanged value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(obscureTextChanged != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChange value),
    TResult passwordChanged(PasswordChange value),
    TResult obscureTextChanged(ObscureTextChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChange implements SignInEvent {
  const factory PasswordChange(String password) = _$PasswordChange;

  String get password;
  @JsonKey(ignore: true)
  $PasswordChangeCopyWith<PasswordChange> get copyWith;
}

/// @nodoc
abstract class $ObscureTextChangedCopyWith<$Res> {
  factory $ObscureTextChangedCopyWith(
          ObscureTextChanged value, $Res Function(ObscureTextChanged) then) =
      _$ObscureTextChangedCopyWithImpl<$Res>;
  $Res call({bool isObscureText});
}

/// @nodoc
class _$ObscureTextChangedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $ObscureTextChangedCopyWith<$Res> {
  _$ObscureTextChangedCopyWithImpl(
      ObscureTextChanged _value, $Res Function(ObscureTextChanged) _then)
      : super(_value, (v) => _then(v as ObscureTextChanged));

  @override
  ObscureTextChanged get _value => super._value as ObscureTextChanged;

  @override
  $Res call({
    Object isObscureText = freezed,
  }) {
    return _then(ObscureTextChanged(
      isObscureText == freezed ? _value.isObscureText : isObscureText as bool,
    ));
  }
}

/// @nodoc
class _$ObscureTextChanged implements ObscureTextChanged {
  const _$ObscureTextChanged(this.isObscureText)
      : assert(isObscureText != null);

  @override
  final bool isObscureText;

  @override
  String toString() {
    return 'SignInEvent.obscureTextChanged(isObscureText: $isObscureText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ObscureTextChanged &&
            (identical(other.isObscureText, isObscureText) ||
                const DeepCollectionEquality()
                    .equals(other.isObscureText, isObscureText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isObscureText);

  @JsonKey(ignore: true)
  @override
  $ObscureTextChangedCopyWith<ObscureTextChanged> get copyWith =>
      _$ObscureTextChangedCopyWithImpl<ObscureTextChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult emailChanged(String email),
    @required TResult passwordChanged(String password),
    @required TResult obscureTextChanged(bool isObscureText),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(obscureTextChanged != null);
    return obscureTextChanged(isObscureText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult emailChanged(String email),
    TResult passwordChanged(String password),
    TResult obscureTextChanged(bool isObscureText),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (obscureTextChanged != null) {
      return obscureTextChanged(isObscureText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult emailChanged(EmailChange value),
    @required TResult passwordChanged(PasswordChange value),
    @required TResult obscureTextChanged(ObscureTextChanged value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(obscureTextChanged != null);
    return obscureTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult emailChanged(EmailChange value),
    TResult passwordChanged(PasswordChange value),
    TResult obscureTextChanged(ObscureTextChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (obscureTextChanged != null) {
      return obscureTextChanged(this);
    }
    return orElse();
  }
}

abstract class ObscureTextChanged implements SignInEvent {
  const factory ObscureTextChanged(bool isObscureText) = _$ObscureTextChanged;

  bool get isObscureText;
  @JsonKey(ignore: true)
  $ObscureTextChangedCopyWith<ObscureTextChanged> get copyWith;
}

/// @nodoc
class _$SignInStateTearOff {
  const _$SignInStateTearOff();

// ignore: unused_element
  _SignInState call(
      {@required String email,
      @required String password,
      @required String errorEmailMessage,
      @required String errorPasswordMessage,
      @required bool isObscureText}) {
    return _SignInState(
      email: email,
      password: password,
      errorEmailMessage: errorEmailMessage,
      errorPasswordMessage: errorPasswordMessage,
      isObscureText: isObscureText,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignInState = _$SignInStateTearOff();

/// @nodoc
mixin _$SignInState {
  String get email;
  String get password;
  String get errorEmailMessage;
  String get errorPasswordMessage;
  bool get isObscureText;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String password,
      String errorEmailMessage,
      String errorPasswordMessage,
      bool isObscureText});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object errorEmailMessage = freezed,
    Object errorPasswordMessage = freezed,
    Object isObscureText = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      errorEmailMessage: errorEmailMessage == freezed
          ? _value.errorEmailMessage
          : errorEmailMessage as String,
      errorPasswordMessage: errorPasswordMessage == freezed
          ? _value.errorPasswordMessage
          : errorPasswordMessage as String,
      isObscureText: isObscureText == freezed
          ? _value.isObscureText
          : isObscureText as bool,
    ));
  }
}

/// @nodoc
abstract class _$SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$SignInStateCopyWith(
          _SignInState value, $Res Function(_SignInState) then) =
      __$SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String password,
      String errorEmailMessage,
      String errorPasswordMessage,
      bool isObscureText});
}

/// @nodoc
class __$SignInStateCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$SignInStateCopyWith<$Res> {
  __$SignInStateCopyWithImpl(
      _SignInState _value, $Res Function(_SignInState) _then)
      : super(_value, (v) => _then(v as _SignInState));

  @override
  _SignInState get _value => super._value as _SignInState;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
    Object errorEmailMessage = freezed,
    Object errorPasswordMessage = freezed,
    Object isObscureText = freezed,
  }) {
    return _then(_SignInState(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
      errorEmailMessage: errorEmailMessage == freezed
          ? _value.errorEmailMessage
          : errorEmailMessage as String,
      errorPasswordMessage: errorPasswordMessage == freezed
          ? _value.errorPasswordMessage
          : errorPasswordMessage as String,
      isObscureText: isObscureText == freezed
          ? _value.isObscureText
          : isObscureText as bool,
    ));
  }
}

/// @nodoc
class _$_SignInState implements _SignInState {
  const _$_SignInState(
      {@required this.email,
      @required this.password,
      @required this.errorEmailMessage,
      @required this.errorPasswordMessage,
      @required this.isObscureText})
      : assert(email != null),
        assert(password != null),
        assert(errorEmailMessage != null),
        assert(errorPasswordMessage != null),
        assert(isObscureText != null);

  @override
  final String email;
  @override
  final String password;
  @override
  final String errorEmailMessage;
  @override
  final String errorPasswordMessage;
  @override
  final bool isObscureText;

  @override
  String toString() {
    return 'SignInState(email: $email, password: $password, errorEmailMessage: $errorEmailMessage, errorPasswordMessage: $errorPasswordMessage, isObscureText: $isObscureText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.errorEmailMessage, errorEmailMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorEmailMessage, errorEmailMessage)) &&
            (identical(other.errorPasswordMessage, errorPasswordMessage) ||
                const DeepCollectionEquality().equals(
                    other.errorPasswordMessage, errorPasswordMessage)) &&
            (identical(other.isObscureText, isObscureText) ||
                const DeepCollectionEquality()
                    .equals(other.isObscureText, isObscureText)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(errorEmailMessage) ^
      const DeepCollectionEquality().hash(errorPasswordMessage) ^
      const DeepCollectionEquality().hash(isObscureText);

  @JsonKey(ignore: true)
  @override
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {@required String email,
      @required String password,
      @required String errorEmailMessage,
      @required String errorPasswordMessage,
      @required bool isObscureText}) = _$_SignInState;

  @override
  String get email;
  @override
  String get password;
  @override
  String get errorEmailMessage;
  @override
  String get errorPasswordMessage;
  @override
  bool get isObscureText;
  @override
  @JsonKey(ignore: true)
  _$SignInStateCopyWith<_SignInState> get copyWith;
}
