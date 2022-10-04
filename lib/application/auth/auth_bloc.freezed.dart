// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  SignIn signIn(String email, String password) {
    return SignIn(
      email,
      password,
    );
  }

// ignore: unused_element
  SignOut signOut() {
    return const SignOut();
  }

// ignore: unused_element
  AuthCheck authCheck() {
    return const AuthCheck();
  }

// ignore: unused_element
  GetUserInfo getUserInfo() {
    return const GetUserInfo();
  }

// ignore: unused_element
  BranchChanged branchChanged(BranchModel branchModel) {
    return BranchChanged(
      branchModel,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult signIn(String email, String password),
    @required TResult signOut(),
    @required TResult authCheck(),
    @required TResult getUserInfo(),
    @required TResult branchChanged(BranchModel branchModel),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult signIn(String email, String password),
    TResult signOut(),
    TResult authCheck(),
    TResult getUserInfo(),
    TResult branchChanged(BranchModel branchModel),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult signIn(SignIn value),
    @required TResult signOut(SignOut value),
    @required TResult authCheck(AuthCheck value),
    @required TResult getUserInfo(GetUserInfo value),
    @required TResult branchChanged(BranchChanged value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult signIn(SignIn value),
    TResult signOut(SignOut value),
    TResult authCheck(AuthCheck value),
    TResult getUserInfo(GetUserInfo value),
    TResult branchChanged(BranchChanged value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $SignInCopyWith<$Res> {
  factory $SignInCopyWith(SignIn value, $Res Function(SignIn) then) =
      _$SignInCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignInCopyWith<$Res> {
  _$SignInCopyWithImpl(SignIn _value, $Res Function(SignIn) _then)
      : super(_value, (v) => _then(v as SignIn));

  @override
  SignIn get _value => super._value as SignIn;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(SignIn(
      email == freezed ? _value.email : email as String,
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$SignIn implements SignIn {
  const _$SignIn(this.email, this.password)
      : assert(email != null),
        assert(password != null);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignIn &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $SignInCopyWith<SignIn> get copyWith =>
      _$SignInCopyWithImpl<SignIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult signIn(String email, String password),
    @required TResult signOut(),
    @required TResult authCheck(),
    @required TResult getUserInfo(),
    @required TResult branchChanged(BranchModel branchModel),
  }) {
    assert(signIn != null);
    assert(signOut != null);
    assert(authCheck != null);
    assert(getUserInfo != null);
    assert(branchChanged != null);
    return signIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult signIn(String email, String password),
    TResult signOut(),
    TResult authCheck(),
    TResult getUserInfo(),
    TResult branchChanged(BranchModel branchModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signIn != null) {
      return signIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult signIn(SignIn value),
    @required TResult signOut(SignOut value),
    @required TResult authCheck(AuthCheck value),
    @required TResult getUserInfo(GetUserInfo value),
    @required TResult branchChanged(BranchChanged value),
  }) {
    assert(signIn != null);
    assert(signOut != null);
    assert(authCheck != null);
    assert(getUserInfo != null);
    assert(branchChanged != null);
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult signIn(SignIn value),
    TResult signOut(SignOut value),
    TResult authCheck(AuthCheck value),
    TResult getUserInfo(GetUserInfo value),
    TResult branchChanged(BranchChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignIn implements AuthEvent {
  const factory SignIn(String email, String password) = _$SignIn;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  $SignInCopyWith<SignIn> get copyWith;
}

/// @nodoc
abstract class $SignOutCopyWith<$Res> {
  factory $SignOutCopyWith(SignOut value, $Res Function(SignOut) then) =
      _$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignOutCopyWith<$Res> {
  _$SignOutCopyWithImpl(SignOut _value, $Res Function(SignOut) _then)
      : super(_value, (v) => _then(v as SignOut));

  @override
  SignOut get _value => super._value as SignOut;
}

/// @nodoc
class _$SignOut implements SignOut {
  const _$SignOut();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult signIn(String email, String password),
    @required TResult signOut(),
    @required TResult authCheck(),
    @required TResult getUserInfo(),
    @required TResult branchChanged(BranchModel branchModel),
  }) {
    assert(signIn != null);
    assert(signOut != null);
    assert(authCheck != null);
    assert(getUserInfo != null);
    assert(branchChanged != null);
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult signIn(String email, String password),
    TResult signOut(),
    TResult authCheck(),
    TResult getUserInfo(),
    TResult branchChanged(BranchModel branchModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult signIn(SignIn value),
    @required TResult signOut(SignOut value),
    @required TResult authCheck(AuthCheck value),
    @required TResult getUserInfo(GetUserInfo value),
    @required TResult branchChanged(BranchChanged value),
  }) {
    assert(signIn != null);
    assert(signOut != null);
    assert(authCheck != null);
    assert(getUserInfo != null);
    assert(branchChanged != null);
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult signIn(SignIn value),
    TResult signOut(SignOut value),
    TResult authCheck(AuthCheck value),
    TResult getUserInfo(GetUserInfo value),
    TResult branchChanged(BranchChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements AuthEvent {
  const factory SignOut() = _$SignOut;
}

/// @nodoc
abstract class $AuthCheckCopyWith<$Res> {
  factory $AuthCheckCopyWith(AuthCheck value, $Res Function(AuthCheck) then) =
      _$AuthCheckCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthCheckCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthCheckCopyWith<$Res> {
  _$AuthCheckCopyWithImpl(AuthCheck _value, $Res Function(AuthCheck) _then)
      : super(_value, (v) => _then(v as AuthCheck));

  @override
  AuthCheck get _value => super._value as AuthCheck;
}

/// @nodoc
class _$AuthCheck implements AuthCheck {
  const _$AuthCheck();

  @override
  String toString() {
    return 'AuthEvent.authCheck()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthCheck);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult signIn(String email, String password),
    @required TResult signOut(),
    @required TResult authCheck(),
    @required TResult getUserInfo(),
    @required TResult branchChanged(BranchModel branchModel),
  }) {
    assert(signIn != null);
    assert(signOut != null);
    assert(authCheck != null);
    assert(getUserInfo != null);
    assert(branchChanged != null);
    return authCheck();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult signIn(String email, String password),
    TResult signOut(),
    TResult authCheck(),
    TResult getUserInfo(),
    TResult branchChanged(BranchModel branchModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authCheck != null) {
      return authCheck();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult signIn(SignIn value),
    @required TResult signOut(SignOut value),
    @required TResult authCheck(AuthCheck value),
    @required TResult getUserInfo(GetUserInfo value),
    @required TResult branchChanged(BranchChanged value),
  }) {
    assert(signIn != null);
    assert(signOut != null);
    assert(authCheck != null);
    assert(getUserInfo != null);
    assert(branchChanged != null);
    return authCheck(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult signIn(SignIn value),
    TResult signOut(SignOut value),
    TResult authCheck(AuthCheck value),
    TResult getUserInfo(GetUserInfo value),
    TResult branchChanged(BranchChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authCheck != null) {
      return authCheck(this);
    }
    return orElse();
  }
}

abstract class AuthCheck implements AuthEvent {
  const factory AuthCheck() = _$AuthCheck;
}

/// @nodoc
abstract class $GetUserInfoCopyWith<$Res> {
  factory $GetUserInfoCopyWith(
          GetUserInfo value, $Res Function(GetUserInfo) then) =
      _$GetUserInfoCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetUserInfoCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $GetUserInfoCopyWith<$Res> {
  _$GetUserInfoCopyWithImpl(
      GetUserInfo _value, $Res Function(GetUserInfo) _then)
      : super(_value, (v) => _then(v as GetUserInfo));

  @override
  GetUserInfo get _value => super._value as GetUserInfo;
}

/// @nodoc
class _$GetUserInfo implements GetUserInfo {
  const _$GetUserInfo();

  @override
  String toString() {
    return 'AuthEvent.getUserInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetUserInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult signIn(String email, String password),
    @required TResult signOut(),
    @required TResult authCheck(),
    @required TResult getUserInfo(),
    @required TResult branchChanged(BranchModel branchModel),
  }) {
    assert(signIn != null);
    assert(signOut != null);
    assert(authCheck != null);
    assert(getUserInfo != null);
    assert(branchChanged != null);
    return getUserInfo();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult signIn(String email, String password),
    TResult signOut(),
    TResult authCheck(),
    TResult getUserInfo(),
    TResult branchChanged(BranchModel branchModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getUserInfo != null) {
      return getUserInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult signIn(SignIn value),
    @required TResult signOut(SignOut value),
    @required TResult authCheck(AuthCheck value),
    @required TResult getUserInfo(GetUserInfo value),
    @required TResult branchChanged(BranchChanged value),
  }) {
    assert(signIn != null);
    assert(signOut != null);
    assert(authCheck != null);
    assert(getUserInfo != null);
    assert(branchChanged != null);
    return getUserInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult signIn(SignIn value),
    TResult signOut(SignOut value),
    TResult authCheck(AuthCheck value),
    TResult getUserInfo(GetUserInfo value),
    TResult branchChanged(BranchChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getUserInfo != null) {
      return getUserInfo(this);
    }
    return orElse();
  }
}

abstract class GetUserInfo implements AuthEvent {
  const factory GetUserInfo() = _$GetUserInfo;
}

/// @nodoc
abstract class $BranchChangedCopyWith<$Res> {
  factory $BranchChangedCopyWith(
          BranchChanged value, $Res Function(BranchChanged) then) =
      _$BranchChangedCopyWithImpl<$Res>;
  $Res call({BranchModel branchModel});

  $BranchModelCopyWith<$Res> get branchModel;
}

/// @nodoc
class _$BranchChangedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $BranchChangedCopyWith<$Res> {
  _$BranchChangedCopyWithImpl(
      BranchChanged _value, $Res Function(BranchChanged) _then)
      : super(_value, (v) => _then(v as BranchChanged));

  @override
  BranchChanged get _value => super._value as BranchChanged;

  @override
  $Res call({
    Object branchModel = freezed,
  }) {
    return _then(BranchChanged(
      branchModel == freezed ? _value.branchModel : branchModel as BranchModel,
    ));
  }

  @override
  $BranchModelCopyWith<$Res> get branchModel {
    if (_value.branchModel == null) {
      return null;
    }
    return $BranchModelCopyWith<$Res>(_value.branchModel, (value) {
      return _then(_value.copyWith(branchModel: value));
    });
  }
}

/// @nodoc
class _$BranchChanged implements BranchChanged {
  const _$BranchChanged(this.branchModel) : assert(branchModel != null);

  @override
  final BranchModel branchModel;

  @override
  String toString() {
    return 'AuthEvent.branchChanged(branchModel: $branchModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BranchChanged &&
            (identical(other.branchModel, branchModel) ||
                const DeepCollectionEquality()
                    .equals(other.branchModel, branchModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(branchModel);

  @JsonKey(ignore: true)
  @override
  $BranchChangedCopyWith<BranchChanged> get copyWith =>
      _$BranchChangedCopyWithImpl<BranchChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult signIn(String email, String password),
    @required TResult signOut(),
    @required TResult authCheck(),
    @required TResult getUserInfo(),
    @required TResult branchChanged(BranchModel branchModel),
  }) {
    assert(signIn != null);
    assert(signOut != null);
    assert(authCheck != null);
    assert(getUserInfo != null);
    assert(branchChanged != null);
    return branchChanged(branchModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult signIn(String email, String password),
    TResult signOut(),
    TResult authCheck(),
    TResult getUserInfo(),
    TResult branchChanged(BranchModel branchModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (branchChanged != null) {
      return branchChanged(branchModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult signIn(SignIn value),
    @required TResult signOut(SignOut value),
    @required TResult authCheck(AuthCheck value),
    @required TResult getUserInfo(GetUserInfo value),
    @required TResult branchChanged(BranchChanged value),
  }) {
    assert(signIn != null);
    assert(signOut != null);
    assert(authCheck != null);
    assert(getUserInfo != null);
    assert(branchChanged != null);
    return branchChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult signIn(SignIn value),
    TResult signOut(SignOut value),
    TResult authCheck(AuthCheck value),
    TResult getUserInfo(GetUserInfo value),
    TResult branchChanged(BranchChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (branchChanged != null) {
      return branchChanged(this);
    }
    return orElse();
  }
}

abstract class BranchChanged implements AuthEvent {
  const factory BranchChanged(BranchModel branchModel) = _$BranchChanged;

  BranchModel get branchModel;
  @JsonKey(ignore: true)
  $BranchChangedCopyWith<BranchChanged> get copyWith;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  _AuthState call(
      {@required UserModel userModel,
      @required bool isLoading,
      @required bool isLoaded,
      @required bool isAuthenticate,
      @required String errorMessage}) {
    return _AuthState(
      userModel: userModel,
      isLoading: isLoading,
      isLoaded: isLoaded,
      isAuthenticate: isAuthenticate,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  UserModel get userModel;
  bool get isLoading;
  bool get isLoaded;
  bool get isAuthenticate;
  String get errorMessage;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {UserModel userModel,
      bool isLoading,
      bool isLoaded,
      bool isAuthenticate,
      String errorMessage});

  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object userModel = freezed,
    Object isLoading = freezed,
    Object isLoaded = freezed,
    Object isAuthenticate = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      userModel:
          userModel == freezed ? _value.userModel : userModel as UserModel,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isLoaded: isLoaded == freezed ? _value.isLoaded : isLoaded as bool,
      isAuthenticate: isAuthenticate == freezed
          ? _value.isAuthenticate
          : isAuthenticate as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get userModel {
    if (_value.userModel == null) {
      return null;
    }
    return $UserModelCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value));
    });
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserModel userModel,
      bool isLoading,
      bool isLoaded,
      bool isAuthenticate,
      String errorMessage});

  @override
  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object userModel = freezed,
    Object isLoading = freezed,
    Object isLoaded = freezed,
    Object isAuthenticate = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_AuthState(
      userModel:
          userModel == freezed ? _value.userModel : userModel as UserModel,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isLoaded: isLoaded == freezed ? _value.isLoaded : isLoaded as bool,
      isAuthenticate: isAuthenticate == freezed
          ? _value.isAuthenticate
          : isAuthenticate as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {@required this.userModel,
      @required this.isLoading,
      @required this.isLoaded,
      @required this.isAuthenticate,
      @required this.errorMessage})
      : assert(userModel != null),
        assert(isLoading != null),
        assert(isLoaded != null),
        assert(isAuthenticate != null),
        assert(errorMessage != null);

  @override
  final UserModel userModel;
  @override
  final bool isLoading;
  @override
  final bool isLoaded;
  @override
  final bool isAuthenticate;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AuthState(userModel: $userModel, isLoading: $isLoading, isLoaded: $isLoaded, isAuthenticate: $isAuthenticate, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthState &&
            (identical(other.userModel, userModel) ||
                const DeepCollectionEquality()
                    .equals(other.userModel, userModel)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isLoaded, isLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.isLoaded, isLoaded)) &&
            (identical(other.isAuthenticate, isAuthenticate) ||
                const DeepCollectionEquality()
                    .equals(other.isAuthenticate, isAuthenticate)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userModel) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isLoaded) ^
      const DeepCollectionEquality().hash(isAuthenticate) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {@required UserModel userModel,
      @required bool isLoading,
      @required bool isLoaded,
      @required bool isAuthenticate,
      @required String errorMessage}) = _$_AuthState;

  @override
  UserModel get userModel;
  @override
  bool get isLoading;
  @override
  bool get isLoaded;
  @override
  bool get isAuthenticate;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith;
}
