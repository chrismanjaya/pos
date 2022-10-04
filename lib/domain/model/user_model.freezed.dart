// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserModelTearOff {
  const _$UserModelTearOff();

// ignore: unused_element
  _UserModel call(
      {String uid,
      String username,
      String email,
      BranchModel branch,
      GroupModel group,
      List<BranchModel> listBranch}) {
    return _UserModel(
      uid: uid,
      username: username,
      email: email,
      branch: branch,
      group: group,
      listBranch: listBranch,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserModel = _$UserModelTearOff();

/// @nodoc
mixin _$UserModel {
  String get uid;
  String get username;
  String get email;
  BranchModel get branch;
  GroupModel get group;
  List<BranchModel> get listBranch;

  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      String username,
      String email,
      BranchModel branch,
      GroupModel group,
      List<BranchModel> listBranch});

  $BranchModelCopyWith<$Res> get branch;
  $GroupModelCopyWith<$Res> get group;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

  @override
  $Res call({
    Object uid = freezed,
    Object username = freezed,
    Object email = freezed,
    Object branch = freezed,
    Object group = freezed,
    Object listBranch = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed ? _value.uid : uid as String,
      username: username == freezed ? _value.username : username as String,
      email: email == freezed ? _value.email : email as String,
      branch: branch == freezed ? _value.branch : branch as BranchModel,
      group: group == freezed ? _value.group : group as GroupModel,
      listBranch: listBranch == freezed
          ? _value.listBranch
          : listBranch as List<BranchModel>,
    ));
  }

  @override
  $BranchModelCopyWith<$Res> get branch {
    if (_value.branch == null) {
      return null;
    }
    return $BranchModelCopyWith<$Res>(_value.branch, (value) {
      return _then(_value.copyWith(branch: value));
    });
  }

  @override
  $GroupModelCopyWith<$Res> get group {
    if (_value.group == null) {
      return null;
    }
    return $GroupModelCopyWith<$Res>(_value.group, (value) {
      return _then(_value.copyWith(group: value));
    });
  }
}

/// @nodoc
abstract class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) then) =
      __$UserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      String username,
      String email,
      BranchModel branch,
      GroupModel group,
      List<BranchModel> listBranch});

  @override
  $BranchModelCopyWith<$Res> get branch;
  @override
  $GroupModelCopyWith<$Res> get group;
}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(_UserModel _value, $Res Function(_UserModel) _then)
      : super(_value, (v) => _then(v as _UserModel));

  @override
  _UserModel get _value => super._value as _UserModel;

  @override
  $Res call({
    Object uid = freezed,
    Object username = freezed,
    Object email = freezed,
    Object branch = freezed,
    Object group = freezed,
    Object listBranch = freezed,
  }) {
    return _then(_UserModel(
      uid: uid == freezed ? _value.uid : uid as String,
      username: username == freezed ? _value.username : username as String,
      email: email == freezed ? _value.email : email as String,
      branch: branch == freezed ? _value.branch : branch as BranchModel,
      group: group == freezed ? _value.group : group as GroupModel,
      listBranch: listBranch == freezed
          ? _value.listBranch
          : listBranch as List<BranchModel>,
    ));
  }
}

/// @nodoc
class _$_UserModel implements _UserModel {
  _$_UserModel(
      {this.uid,
      this.username,
      this.email,
      this.branch,
      this.group,
      this.listBranch});

  @override
  final String uid;
  @override
  final String username;
  @override
  final String email;
  @override
  final BranchModel branch;
  @override
  final GroupModel group;
  @override
  final List<BranchModel> listBranch;

  @override
  String toString() {
    return 'UserModel(uid: $uid, username: $username, email: $email, branch: $branch, group: $group, listBranch: $listBranch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserModel &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.branch, branch) ||
                const DeepCollectionEquality().equals(other.branch, branch)) &&
            (identical(other.group, group) ||
                const DeepCollectionEquality().equals(other.group, group)) &&
            (identical(other.listBranch, listBranch) ||
                const DeepCollectionEquality()
                    .equals(other.listBranch, listBranch)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(branch) ^
      const DeepCollectionEquality().hash(group) ^
      const DeepCollectionEquality().hash(listBranch);

  @JsonKey(ignore: true)
  @override
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {String uid,
      String username,
      String email,
      BranchModel branch,
      GroupModel group,
      List<BranchModel> listBranch}) = _$_UserModel;

  @override
  String get uid;
  @override
  String get username;
  @override
  String get email;
  @override
  BranchModel get branch;
  @override
  GroupModel get group;
  @override
  List<BranchModel> get listBranch;
  @override
  @JsonKey(ignore: true)
  _$UserModelCopyWith<_UserModel> get copyWith;
}
