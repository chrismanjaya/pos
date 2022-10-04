// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'group_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GroupModelTearOff {
  const _$GroupModelTearOff();

// ignore: unused_element
  _GroupModel call(
      {String id, String groupName, List<PrivilegeModel> listPrivilege}) {
    return _GroupModel(
      id: id,
      groupName: groupName,
      listPrivilege: listPrivilege,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GroupModel = _$GroupModelTearOff();

/// @nodoc
mixin _$GroupModel {
  String get id;
  String get groupName;
  List<PrivilegeModel> get listPrivilege;

  @JsonKey(ignore: true)
  $GroupModelCopyWith<GroupModel> get copyWith;
}

/// @nodoc
abstract class $GroupModelCopyWith<$Res> {
  factory $GroupModelCopyWith(
          GroupModel value, $Res Function(GroupModel) then) =
      _$GroupModelCopyWithImpl<$Res>;
  $Res call({String id, String groupName, List<PrivilegeModel> listPrivilege});
}

/// @nodoc
class _$GroupModelCopyWithImpl<$Res> implements $GroupModelCopyWith<$Res> {
  _$GroupModelCopyWithImpl(this._value, this._then);

  final GroupModel _value;
  // ignore: unused_field
  final $Res Function(GroupModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object groupName = freezed,
    Object listPrivilege = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      groupName: groupName == freezed ? _value.groupName : groupName as String,
      listPrivilege: listPrivilege == freezed
          ? _value.listPrivilege
          : listPrivilege as List<PrivilegeModel>,
    ));
  }
}

/// @nodoc
abstract class _$GroupModelCopyWith<$Res> implements $GroupModelCopyWith<$Res> {
  factory _$GroupModelCopyWith(
          _GroupModel value, $Res Function(_GroupModel) then) =
      __$GroupModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String groupName, List<PrivilegeModel> listPrivilege});
}

/// @nodoc
class __$GroupModelCopyWithImpl<$Res> extends _$GroupModelCopyWithImpl<$Res>
    implements _$GroupModelCopyWith<$Res> {
  __$GroupModelCopyWithImpl(
      _GroupModel _value, $Res Function(_GroupModel) _then)
      : super(_value, (v) => _then(v as _GroupModel));

  @override
  _GroupModel get _value => super._value as _GroupModel;

  @override
  $Res call({
    Object id = freezed,
    Object groupName = freezed,
    Object listPrivilege = freezed,
  }) {
    return _then(_GroupModel(
      id: id == freezed ? _value.id : id as String,
      groupName: groupName == freezed ? _value.groupName : groupName as String,
      listPrivilege: listPrivilege == freezed
          ? _value.listPrivilege
          : listPrivilege as List<PrivilegeModel>,
    ));
  }
}

/// @nodoc
class _$_GroupModel implements _GroupModel {
  _$_GroupModel({this.id, this.groupName, this.listPrivilege});

  @override
  final String id;
  @override
  final String groupName;
  @override
  final List<PrivilegeModel> listPrivilege;

  @override
  String toString() {
    return 'GroupModel(id: $id, groupName: $groupName, listPrivilege: $listPrivilege)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.groupName, groupName) ||
                const DeepCollectionEquality()
                    .equals(other.groupName, groupName)) &&
            (identical(other.listPrivilege, listPrivilege) ||
                const DeepCollectionEquality()
                    .equals(other.listPrivilege, listPrivilege)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(groupName) ^
      const DeepCollectionEquality().hash(listPrivilege);

  @JsonKey(ignore: true)
  @override
  _$GroupModelCopyWith<_GroupModel> get copyWith =>
      __$GroupModelCopyWithImpl<_GroupModel>(this, _$identity);
}

abstract class _GroupModel implements GroupModel {
  factory _GroupModel(
      {String id,
      String groupName,
      List<PrivilegeModel> listPrivilege}) = _$_GroupModel;

  @override
  String get id;
  @override
  String get groupName;
  @override
  List<PrivilegeModel> get listPrivilege;
  @override
  @JsonKey(ignore: true)
  _$GroupModelCopyWith<_GroupModel> get copyWith;
}
