// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_branches.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserBranchesTearOff {
  const _$UserBranchesTearOff();

// ignore: unused_element
  _UserBranches call({String id, String userId, String branchId}) {
    return _UserBranches(
      id: id,
      userId: userId,
      branchId: branchId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserBranches = _$UserBranchesTearOff();

/// @nodoc
mixin _$UserBranches {
  String get id;
  String get userId;
  String get branchId;

  @JsonKey(ignore: true)
  $UserBranchesCopyWith<UserBranches> get copyWith;
}

/// @nodoc
abstract class $UserBranchesCopyWith<$Res> {
  factory $UserBranchesCopyWith(
          UserBranches value, $Res Function(UserBranches) then) =
      _$UserBranchesCopyWithImpl<$Res>;
  $Res call({String id, String userId, String branchId});
}

/// @nodoc
class _$UserBranchesCopyWithImpl<$Res> implements $UserBranchesCopyWith<$Res> {
  _$UserBranchesCopyWithImpl(this._value, this._then);

  final UserBranches _value;
  // ignore: unused_field
  final $Res Function(UserBranches) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object branchId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      branchId: branchId == freezed ? _value.branchId : branchId as String,
    ));
  }
}

/// @nodoc
abstract class _$UserBranchesCopyWith<$Res>
    implements $UserBranchesCopyWith<$Res> {
  factory _$UserBranchesCopyWith(
          _UserBranches value, $Res Function(_UserBranches) then) =
      __$UserBranchesCopyWithImpl<$Res>;
  @override
  $Res call({String id, String userId, String branchId});
}

/// @nodoc
class __$UserBranchesCopyWithImpl<$Res> extends _$UserBranchesCopyWithImpl<$Res>
    implements _$UserBranchesCopyWith<$Res> {
  __$UserBranchesCopyWithImpl(
      _UserBranches _value, $Res Function(_UserBranches) _then)
      : super(_value, (v) => _then(v as _UserBranches));

  @override
  _UserBranches get _value => super._value as _UserBranches;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object branchId = freezed,
  }) {
    return _then(_UserBranches(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      branchId: branchId == freezed ? _value.branchId : branchId as String,
    ));
  }
}

/// @nodoc
class _$_UserBranches implements _UserBranches {
  _$_UserBranches({this.id, this.userId, this.branchId});

  @override
  final String id;
  @override
  final String userId;
  @override
  final String branchId;

  @override
  String toString() {
    return 'UserBranches(id: $id, userId: $userId, branchId: $branchId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserBranches &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.branchId, branchId) ||
                const DeepCollectionEquality()
                    .equals(other.branchId, branchId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(branchId);

  @JsonKey(ignore: true)
  @override
  _$UserBranchesCopyWith<_UserBranches> get copyWith =>
      __$UserBranchesCopyWithImpl<_UserBranches>(this, _$identity);
}

abstract class _UserBranches implements UserBranches {
  factory _UserBranches({String id, String userId, String branchId}) =
      _$_UserBranches;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get branchId;
  @override
  @JsonKey(ignore: true)
  _$UserBranchesCopyWith<_UserBranches> get copyWith;
}
