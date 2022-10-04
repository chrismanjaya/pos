// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserDataTearOff {
  const _$UserDataTearOff();

// ignore: unused_element
  _UserData call({String id, String username, String email, String groupId}) {
    return _UserData(
      id: id,
      username: username,
      email: email,
      groupId: groupId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserData = _$UserDataTearOff();

/// @nodoc
mixin _$UserData {
  String get id;
  String get username;
  String get email;
  String get groupId;

  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call({String id, String username, String email, String groupId});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res> implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  final UserData _value;
  // ignore: unused_field
  final $Res Function(UserData) _then;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object email = freezed,
    Object groupId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      username: username == freezed ? _value.username : username as String,
      email: email == freezed ? _value.email : email as String,
      groupId: groupId == freezed ? _value.groupId : groupId as String,
    ));
  }
}

/// @nodoc
abstract class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) then) =
      __$UserDataCopyWithImpl<$Res>;
  @override
  $Res call({String id, String username, String email, String groupId});
}

/// @nodoc
class __$UserDataCopyWithImpl<$Res> extends _$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(_UserData _value, $Res Function(_UserData) _then)
      : super(_value, (v) => _then(v as _UserData));

  @override
  _UserData get _value => super._value as _UserData;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object email = freezed,
    Object groupId = freezed,
  }) {
    return _then(_UserData(
      id: id == freezed ? _value.id : id as String,
      username: username == freezed ? _value.username : username as String,
      email: email == freezed ? _value.email : email as String,
      groupId: groupId == freezed ? _value.groupId : groupId as String,
    ));
  }
}

/// @nodoc
class _$_UserData implements _UserData {
  _$_UserData({this.id, this.username, this.email, this.groupId});

  @override
  final String id;
  @override
  final String username;
  @override
  final String email;
  @override
  final String groupId;

  @override
  String toString() {
    return 'UserData(id: $id, username: $username, email: $email, groupId: $groupId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality().equals(other.groupId, groupId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(groupId);

  @JsonKey(ignore: true)
  @override
  _$UserDataCopyWith<_UserData> get copyWith =>
      __$UserDataCopyWithImpl<_UserData>(this, _$identity);
}

abstract class _UserData implements UserData {
  factory _UserData(
      {String id, String username, String email, String groupId}) = _$_UserData;

  @override
  String get id;
  @override
  String get username;
  @override
  String get email;
  @override
  String get groupId;
  @override
  @JsonKey(ignore: true)
  _$UserDataCopyWith<_UserData> get copyWith;
}
