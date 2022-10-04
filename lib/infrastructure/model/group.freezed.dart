// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GroupTearOff {
  const _$GroupTearOff();

// ignore: unused_element
  _Group call({String id, String groupName}) {
    return _Group(
      id: id,
      groupName: groupName,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Group = _$GroupTearOff();

/// @nodoc
mixin _$Group {
  String get id;
  String get groupName;

  @JsonKey(ignore: true)
  $GroupCopyWith<Group> get copyWith;
}

/// @nodoc
abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res>;
  $Res call({String id, String groupName});
}

/// @nodoc
class _$GroupCopyWithImpl<$Res> implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

  final Group _value;
  // ignore: unused_field
  final $Res Function(Group) _then;

  @override
  $Res call({
    Object id = freezed,
    Object groupName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      groupName: groupName == freezed ? _value.groupName : groupName as String,
    ));
  }
}

/// @nodoc
abstract class _$GroupCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$GroupCopyWith(_Group value, $Res Function(_Group) then) =
      __$GroupCopyWithImpl<$Res>;
  @override
  $Res call({String id, String groupName});
}

/// @nodoc
class __$GroupCopyWithImpl<$Res> extends _$GroupCopyWithImpl<$Res>
    implements _$GroupCopyWith<$Res> {
  __$GroupCopyWithImpl(_Group _value, $Res Function(_Group) _then)
      : super(_value, (v) => _then(v as _Group));

  @override
  _Group get _value => super._value as _Group;

  @override
  $Res call({
    Object id = freezed,
    Object groupName = freezed,
  }) {
    return _then(_Group(
      id: id == freezed ? _value.id : id as String,
      groupName: groupName == freezed ? _value.groupName : groupName as String,
    ));
  }
}

/// @nodoc
class _$_Group implements _Group {
  _$_Group({this.id, this.groupName});

  @override
  final String id;
  @override
  final String groupName;

  @override
  String toString() {
    return 'Group(id: $id, groupName: $groupName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Group &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(groupName);

  @JsonKey(ignore: true)
  @override
  _$GroupCopyWith<_Group> get copyWith =>
      __$GroupCopyWithImpl<_Group>(this, _$identity);
}

abstract class _Group implements Group {
  factory _Group({String id, String groupName}) = _$_Group;

  @override
  String get id;
  @override
  String get groupName;
  @override
  @JsonKey(ignore: true)
  _$GroupCopyWith<_Group> get copyWith;
}
