// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'group_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GroupEventTearOff {
  const _$GroupEventTearOff();

// ignore: unused_element
  GetAllGroup getAllGroup() {
    return const GetAllGroup();
  }

// ignore: unused_element
  AddGroup addGroup() {
    return const AddGroup();
  }

// ignore: unused_element
  UpdateGroup updateGroup() {
    return const UpdateGroup();
  }

// ignore: unused_element
  DeleteGroup deleteGroup() {
    return const DeleteGroup();
  }

// ignore: unused_element
  SearchChanged searchChanged(String text) {
    return SearchChanged(
      text,
    );
  }

// ignore: unused_element
  SetSelectedGroup setSelectedGroup(GroupModel groupModel) {
    return SetSelectedGroup(
      groupModel,
    );
  }

// ignore: unused_element
  ClearSelectedGroup clearSelectedGroup() {
    return const ClearSelectedGroup();
  }

// ignore: unused_element
  ChangeGroupName changeGroupName(String groupname) {
    return ChangeGroupName(
      groupname,
    );
  }

// ignore: unused_element
  ChangeListPrivilege changeListPrivilege(
      List<PrivilegeModel> listPrivilegeModel) {
    return ChangeListPrivilege(
      listPrivilegeModel,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GroupEvent = _$GroupEventTearOff();

/// @nodoc
mixin _$GroupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllGroup(),
    @required TResult addGroup(),
    @required TResult updateGroup(),
    @required TResult deleteGroup(),
    @required TResult searchChanged(String text),
    @required TResult setSelectedGroup(GroupModel groupModel),
    @required TResult clearSelectedGroup(),
    @required TResult changeGroupName(String groupname),
    @required
        TResult changeListPrivilege(List<PrivilegeModel> listPrivilegeModel),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllGroup(),
    TResult addGroup(),
    TResult updateGroup(),
    TResult deleteGroup(),
    TResult searchChanged(String text),
    TResult setSelectedGroup(GroupModel groupModel),
    TResult clearSelectedGroup(),
    TResult changeGroupName(String groupname),
    TResult changeListPrivilege(List<PrivilegeModel> listPrivilegeModel),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllGroup(GetAllGroup value),
    @required TResult addGroup(AddGroup value),
    @required TResult updateGroup(UpdateGroup value),
    @required TResult deleteGroup(DeleteGroup value),
    @required TResult searchChanged(SearchChanged value),
    @required TResult setSelectedGroup(SetSelectedGroup value),
    @required TResult clearSelectedGroup(ClearSelectedGroup value),
    @required TResult changeGroupName(ChangeGroupName value),
    @required TResult changeListPrivilege(ChangeListPrivilege value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllGroup(GetAllGroup value),
    TResult addGroup(AddGroup value),
    TResult updateGroup(UpdateGroup value),
    TResult deleteGroup(DeleteGroup value),
    TResult searchChanged(SearchChanged value),
    TResult setSelectedGroup(SetSelectedGroup value),
    TResult clearSelectedGroup(ClearSelectedGroup value),
    TResult changeGroupName(ChangeGroupName value),
    TResult changeListPrivilege(ChangeListPrivilege value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $GroupEventCopyWith<$Res> {
  factory $GroupEventCopyWith(
          GroupEvent value, $Res Function(GroupEvent) then) =
      _$GroupEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GroupEventCopyWithImpl<$Res> implements $GroupEventCopyWith<$Res> {
  _$GroupEventCopyWithImpl(this._value, this._then);

  final GroupEvent _value;
  // ignore: unused_field
  final $Res Function(GroupEvent) _then;
}

/// @nodoc
abstract class $GetAllGroupCopyWith<$Res> {
  factory $GetAllGroupCopyWith(
          GetAllGroup value, $Res Function(GetAllGroup) then) =
      _$GetAllGroupCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAllGroupCopyWithImpl<$Res> extends _$GroupEventCopyWithImpl<$Res>
    implements $GetAllGroupCopyWith<$Res> {
  _$GetAllGroupCopyWithImpl(
      GetAllGroup _value, $Res Function(GetAllGroup) _then)
      : super(_value, (v) => _then(v as GetAllGroup));

  @override
  GetAllGroup get _value => super._value as GetAllGroup;
}

/// @nodoc
class _$GetAllGroup implements GetAllGroup {
  const _$GetAllGroup();

  @override
  String toString() {
    return 'GroupEvent.getAllGroup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetAllGroup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllGroup(),
    @required TResult addGroup(),
    @required TResult updateGroup(),
    @required TResult deleteGroup(),
    @required TResult searchChanged(String text),
    @required TResult setSelectedGroup(GroupModel groupModel),
    @required TResult clearSelectedGroup(),
    @required TResult changeGroupName(String groupname),
    @required
        TResult changeListPrivilege(List<PrivilegeModel> listPrivilegeModel),
  }) {
    assert(getAllGroup != null);
    assert(addGroup != null);
    assert(updateGroup != null);
    assert(deleteGroup != null);
    assert(searchChanged != null);
    assert(setSelectedGroup != null);
    assert(clearSelectedGroup != null);
    assert(changeGroupName != null);
    assert(changeListPrivilege != null);
    return getAllGroup();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllGroup(),
    TResult addGroup(),
    TResult updateGroup(),
    TResult deleteGroup(),
    TResult searchChanged(String text),
    TResult setSelectedGroup(GroupModel groupModel),
    TResult clearSelectedGroup(),
    TResult changeGroupName(String groupname),
    TResult changeListPrivilege(List<PrivilegeModel> listPrivilegeModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllGroup != null) {
      return getAllGroup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllGroup(GetAllGroup value),
    @required TResult addGroup(AddGroup value),
    @required TResult updateGroup(UpdateGroup value),
    @required TResult deleteGroup(DeleteGroup value),
    @required TResult searchChanged(SearchChanged value),
    @required TResult setSelectedGroup(SetSelectedGroup value),
    @required TResult clearSelectedGroup(ClearSelectedGroup value),
    @required TResult changeGroupName(ChangeGroupName value),
    @required TResult changeListPrivilege(ChangeListPrivilege value),
  }) {
    assert(getAllGroup != null);
    assert(addGroup != null);
    assert(updateGroup != null);
    assert(deleteGroup != null);
    assert(searchChanged != null);
    assert(setSelectedGroup != null);
    assert(clearSelectedGroup != null);
    assert(changeGroupName != null);
    assert(changeListPrivilege != null);
    return getAllGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllGroup(GetAllGroup value),
    TResult addGroup(AddGroup value),
    TResult updateGroup(UpdateGroup value),
    TResult deleteGroup(DeleteGroup value),
    TResult searchChanged(SearchChanged value),
    TResult setSelectedGroup(SetSelectedGroup value),
    TResult clearSelectedGroup(ClearSelectedGroup value),
    TResult changeGroupName(ChangeGroupName value),
    TResult changeListPrivilege(ChangeListPrivilege value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllGroup != null) {
      return getAllGroup(this);
    }
    return orElse();
  }
}

abstract class GetAllGroup implements GroupEvent {
  const factory GetAllGroup() = _$GetAllGroup;
}

/// @nodoc
abstract class $AddGroupCopyWith<$Res> {
  factory $AddGroupCopyWith(AddGroup value, $Res Function(AddGroup) then) =
      _$AddGroupCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddGroupCopyWithImpl<$Res> extends _$GroupEventCopyWithImpl<$Res>
    implements $AddGroupCopyWith<$Res> {
  _$AddGroupCopyWithImpl(AddGroup _value, $Res Function(AddGroup) _then)
      : super(_value, (v) => _then(v as AddGroup));

  @override
  AddGroup get _value => super._value as AddGroup;
}

/// @nodoc
class _$AddGroup implements AddGroup {
  const _$AddGroup();

  @override
  String toString() {
    return 'GroupEvent.addGroup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddGroup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllGroup(),
    @required TResult addGroup(),
    @required TResult updateGroup(),
    @required TResult deleteGroup(),
    @required TResult searchChanged(String text),
    @required TResult setSelectedGroup(GroupModel groupModel),
    @required TResult clearSelectedGroup(),
    @required TResult changeGroupName(String groupname),
    @required
        TResult changeListPrivilege(List<PrivilegeModel> listPrivilegeModel),
  }) {
    assert(getAllGroup != null);
    assert(addGroup != null);
    assert(updateGroup != null);
    assert(deleteGroup != null);
    assert(searchChanged != null);
    assert(setSelectedGroup != null);
    assert(clearSelectedGroup != null);
    assert(changeGroupName != null);
    assert(changeListPrivilege != null);
    return addGroup();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllGroup(),
    TResult addGroup(),
    TResult updateGroup(),
    TResult deleteGroup(),
    TResult searchChanged(String text),
    TResult setSelectedGroup(GroupModel groupModel),
    TResult clearSelectedGroup(),
    TResult changeGroupName(String groupname),
    TResult changeListPrivilege(List<PrivilegeModel> listPrivilegeModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addGroup != null) {
      return addGroup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllGroup(GetAllGroup value),
    @required TResult addGroup(AddGroup value),
    @required TResult updateGroup(UpdateGroup value),
    @required TResult deleteGroup(DeleteGroup value),
    @required TResult searchChanged(SearchChanged value),
    @required TResult setSelectedGroup(SetSelectedGroup value),
    @required TResult clearSelectedGroup(ClearSelectedGroup value),
    @required TResult changeGroupName(ChangeGroupName value),
    @required TResult changeListPrivilege(ChangeListPrivilege value),
  }) {
    assert(getAllGroup != null);
    assert(addGroup != null);
    assert(updateGroup != null);
    assert(deleteGroup != null);
    assert(searchChanged != null);
    assert(setSelectedGroup != null);
    assert(clearSelectedGroup != null);
    assert(changeGroupName != null);
    assert(changeListPrivilege != null);
    return addGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllGroup(GetAllGroup value),
    TResult addGroup(AddGroup value),
    TResult updateGroup(UpdateGroup value),
    TResult deleteGroup(DeleteGroup value),
    TResult searchChanged(SearchChanged value),
    TResult setSelectedGroup(SetSelectedGroup value),
    TResult clearSelectedGroup(ClearSelectedGroup value),
    TResult changeGroupName(ChangeGroupName value),
    TResult changeListPrivilege(ChangeListPrivilege value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addGroup != null) {
      return addGroup(this);
    }
    return orElse();
  }
}

abstract class AddGroup implements GroupEvent {
  const factory AddGroup() = _$AddGroup;
}

/// @nodoc
abstract class $UpdateGroupCopyWith<$Res> {
  factory $UpdateGroupCopyWith(
          UpdateGroup value, $Res Function(UpdateGroup) then) =
      _$UpdateGroupCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateGroupCopyWithImpl<$Res> extends _$GroupEventCopyWithImpl<$Res>
    implements $UpdateGroupCopyWith<$Res> {
  _$UpdateGroupCopyWithImpl(
      UpdateGroup _value, $Res Function(UpdateGroup) _then)
      : super(_value, (v) => _then(v as UpdateGroup));

  @override
  UpdateGroup get _value => super._value as UpdateGroup;
}

/// @nodoc
class _$UpdateGroup implements UpdateGroup {
  const _$UpdateGroup();

  @override
  String toString() {
    return 'GroupEvent.updateGroup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateGroup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllGroup(),
    @required TResult addGroup(),
    @required TResult updateGroup(),
    @required TResult deleteGroup(),
    @required TResult searchChanged(String text),
    @required TResult setSelectedGroup(GroupModel groupModel),
    @required TResult clearSelectedGroup(),
    @required TResult changeGroupName(String groupname),
    @required
        TResult changeListPrivilege(List<PrivilegeModel> listPrivilegeModel),
  }) {
    assert(getAllGroup != null);
    assert(addGroup != null);
    assert(updateGroup != null);
    assert(deleteGroup != null);
    assert(searchChanged != null);
    assert(setSelectedGroup != null);
    assert(clearSelectedGroup != null);
    assert(changeGroupName != null);
    assert(changeListPrivilege != null);
    return updateGroup();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllGroup(),
    TResult addGroup(),
    TResult updateGroup(),
    TResult deleteGroup(),
    TResult searchChanged(String text),
    TResult setSelectedGroup(GroupModel groupModel),
    TResult clearSelectedGroup(),
    TResult changeGroupName(String groupname),
    TResult changeListPrivilege(List<PrivilegeModel> listPrivilegeModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateGroup != null) {
      return updateGroup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllGroup(GetAllGroup value),
    @required TResult addGroup(AddGroup value),
    @required TResult updateGroup(UpdateGroup value),
    @required TResult deleteGroup(DeleteGroup value),
    @required TResult searchChanged(SearchChanged value),
    @required TResult setSelectedGroup(SetSelectedGroup value),
    @required TResult clearSelectedGroup(ClearSelectedGroup value),
    @required TResult changeGroupName(ChangeGroupName value),
    @required TResult changeListPrivilege(ChangeListPrivilege value),
  }) {
    assert(getAllGroup != null);
    assert(addGroup != null);
    assert(updateGroup != null);
    assert(deleteGroup != null);
    assert(searchChanged != null);
    assert(setSelectedGroup != null);
    assert(clearSelectedGroup != null);
    assert(changeGroupName != null);
    assert(changeListPrivilege != null);
    return updateGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllGroup(GetAllGroup value),
    TResult addGroup(AddGroup value),
    TResult updateGroup(UpdateGroup value),
    TResult deleteGroup(DeleteGroup value),
    TResult searchChanged(SearchChanged value),
    TResult setSelectedGroup(SetSelectedGroup value),
    TResult clearSelectedGroup(ClearSelectedGroup value),
    TResult changeGroupName(ChangeGroupName value),
    TResult changeListPrivilege(ChangeListPrivilege value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateGroup != null) {
      return updateGroup(this);
    }
    return orElse();
  }
}

abstract class UpdateGroup implements GroupEvent {
  const factory UpdateGroup() = _$UpdateGroup;
}

/// @nodoc
abstract class $DeleteGroupCopyWith<$Res> {
  factory $DeleteGroupCopyWith(
          DeleteGroup value, $Res Function(DeleteGroup) then) =
      _$DeleteGroupCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteGroupCopyWithImpl<$Res> extends _$GroupEventCopyWithImpl<$Res>
    implements $DeleteGroupCopyWith<$Res> {
  _$DeleteGroupCopyWithImpl(
      DeleteGroup _value, $Res Function(DeleteGroup) _then)
      : super(_value, (v) => _then(v as DeleteGroup));

  @override
  DeleteGroup get _value => super._value as DeleteGroup;
}

/// @nodoc
class _$DeleteGroup implements DeleteGroup {
  const _$DeleteGroup();

  @override
  String toString() {
    return 'GroupEvent.deleteGroup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteGroup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllGroup(),
    @required TResult addGroup(),
    @required TResult updateGroup(),
    @required TResult deleteGroup(),
    @required TResult searchChanged(String text),
    @required TResult setSelectedGroup(GroupModel groupModel),
    @required TResult clearSelectedGroup(),
    @required TResult changeGroupName(String groupname),
    @required
        TResult changeListPrivilege(List<PrivilegeModel> listPrivilegeModel),
  }) {
    assert(getAllGroup != null);
    assert(addGroup != null);
    assert(updateGroup != null);
    assert(deleteGroup != null);
    assert(searchChanged != null);
    assert(setSelectedGroup != null);
    assert(clearSelectedGroup != null);
    assert(changeGroupName != null);
    assert(changeListPrivilege != null);
    return deleteGroup();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllGroup(),
    TResult addGroup(),
    TResult updateGroup(),
    TResult deleteGroup(),
    TResult searchChanged(String text),
    TResult setSelectedGroup(GroupModel groupModel),
    TResult clearSelectedGroup(),
    TResult changeGroupName(String groupname),
    TResult changeListPrivilege(List<PrivilegeModel> listPrivilegeModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteGroup != null) {
      return deleteGroup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllGroup(GetAllGroup value),
    @required TResult addGroup(AddGroup value),
    @required TResult updateGroup(UpdateGroup value),
    @required TResult deleteGroup(DeleteGroup value),
    @required TResult searchChanged(SearchChanged value),
    @required TResult setSelectedGroup(SetSelectedGroup value),
    @required TResult clearSelectedGroup(ClearSelectedGroup value),
    @required TResult changeGroupName(ChangeGroupName value),
    @required TResult changeListPrivilege(ChangeListPrivilege value),
  }) {
    assert(getAllGroup != null);
    assert(addGroup != null);
    assert(updateGroup != null);
    assert(deleteGroup != null);
    assert(searchChanged != null);
    assert(setSelectedGroup != null);
    assert(clearSelectedGroup != null);
    assert(changeGroupName != null);
    assert(changeListPrivilege != null);
    return deleteGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllGroup(GetAllGroup value),
    TResult addGroup(AddGroup value),
    TResult updateGroup(UpdateGroup value),
    TResult deleteGroup(DeleteGroup value),
    TResult searchChanged(SearchChanged value),
    TResult setSelectedGroup(SetSelectedGroup value),
    TResult clearSelectedGroup(ClearSelectedGroup value),
    TResult changeGroupName(ChangeGroupName value),
    TResult changeListPrivilege(ChangeListPrivilege value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (deleteGroup != null) {
      return deleteGroup(this);
    }
    return orElse();
  }
}

abstract class DeleteGroup implements GroupEvent {
  const factory DeleteGroup() = _$DeleteGroup;
}

/// @nodoc
abstract class $SearchChangedCopyWith<$Res> {
  factory $SearchChangedCopyWith(
          SearchChanged value, $Res Function(SearchChanged) then) =
      _$SearchChangedCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$SearchChangedCopyWithImpl<$Res> extends _$GroupEventCopyWithImpl<$Res>
    implements $SearchChangedCopyWith<$Res> {
  _$SearchChangedCopyWithImpl(
      SearchChanged _value, $Res Function(SearchChanged) _then)
      : super(_value, (v) => _then(v as SearchChanged));

  @override
  SearchChanged get _value => super._value as SearchChanged;

  @override
  $Res call({
    Object text = freezed,
  }) {
    return _then(SearchChanged(
      text == freezed ? _value.text : text as String,
    ));
  }
}

/// @nodoc
class _$SearchChanged implements SearchChanged {
  const _$SearchChanged(this.text) : assert(text != null);

  @override
  final String text;

  @override
  String toString() {
    return 'GroupEvent.searchChanged(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchChanged &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @JsonKey(ignore: true)
  @override
  $SearchChangedCopyWith<SearchChanged> get copyWith =>
      _$SearchChangedCopyWithImpl<SearchChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllGroup(),
    @required TResult addGroup(),
    @required TResult updateGroup(),
    @required TResult deleteGroup(),
    @required TResult searchChanged(String text),
    @required TResult setSelectedGroup(GroupModel groupModel),
    @required TResult clearSelectedGroup(),
    @required TResult changeGroupName(String groupname),
    @required
        TResult changeListPrivilege(List<PrivilegeModel> listPrivilegeModel),
  }) {
    assert(getAllGroup != null);
    assert(addGroup != null);
    assert(updateGroup != null);
    assert(deleteGroup != null);
    assert(searchChanged != null);
    assert(setSelectedGroup != null);
    assert(clearSelectedGroup != null);
    assert(changeGroupName != null);
    assert(changeListPrivilege != null);
    return searchChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllGroup(),
    TResult addGroup(),
    TResult updateGroup(),
    TResult deleteGroup(),
    TResult searchChanged(String text),
    TResult setSelectedGroup(GroupModel groupModel),
    TResult clearSelectedGroup(),
    TResult changeGroupName(String groupname),
    TResult changeListPrivilege(List<PrivilegeModel> listPrivilegeModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchChanged != null) {
      return searchChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllGroup(GetAllGroup value),
    @required TResult addGroup(AddGroup value),
    @required TResult updateGroup(UpdateGroup value),
    @required TResult deleteGroup(DeleteGroup value),
    @required TResult searchChanged(SearchChanged value),
    @required TResult setSelectedGroup(SetSelectedGroup value),
    @required TResult clearSelectedGroup(ClearSelectedGroup value),
    @required TResult changeGroupName(ChangeGroupName value),
    @required TResult changeListPrivilege(ChangeListPrivilege value),
  }) {
    assert(getAllGroup != null);
    assert(addGroup != null);
    assert(updateGroup != null);
    assert(deleteGroup != null);
    assert(searchChanged != null);
    assert(setSelectedGroup != null);
    assert(clearSelectedGroup != null);
    assert(changeGroupName != null);
    assert(changeListPrivilege != null);
    return searchChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllGroup(GetAllGroup value),
    TResult addGroup(AddGroup value),
    TResult updateGroup(UpdateGroup value),
    TResult deleteGroup(DeleteGroup value),
    TResult searchChanged(SearchChanged value),
    TResult setSelectedGroup(SetSelectedGroup value),
    TResult clearSelectedGroup(ClearSelectedGroup value),
    TResult changeGroupName(ChangeGroupName value),
    TResult changeListPrivilege(ChangeListPrivilege value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchChanged != null) {
      return searchChanged(this);
    }
    return orElse();
  }
}

abstract class SearchChanged implements GroupEvent {
  const factory SearchChanged(String text) = _$SearchChanged;

  String get text;
  @JsonKey(ignore: true)
  $SearchChangedCopyWith<SearchChanged> get copyWith;
}

/// @nodoc
abstract class $SetSelectedGroupCopyWith<$Res> {
  factory $SetSelectedGroupCopyWith(
          SetSelectedGroup value, $Res Function(SetSelectedGroup) then) =
      _$SetSelectedGroupCopyWithImpl<$Res>;
  $Res call({GroupModel groupModel});

  $GroupModelCopyWith<$Res> get groupModel;
}

/// @nodoc
class _$SetSelectedGroupCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res>
    implements $SetSelectedGroupCopyWith<$Res> {
  _$SetSelectedGroupCopyWithImpl(
      SetSelectedGroup _value, $Res Function(SetSelectedGroup) _then)
      : super(_value, (v) => _then(v as SetSelectedGroup));

  @override
  SetSelectedGroup get _value => super._value as SetSelectedGroup;

  @override
  $Res call({
    Object groupModel = freezed,
  }) {
    return _then(SetSelectedGroup(
      groupModel == freezed ? _value.groupModel : groupModel as GroupModel,
    ));
  }

  @override
  $GroupModelCopyWith<$Res> get groupModel {
    if (_value.groupModel == null) {
      return null;
    }
    return $GroupModelCopyWith<$Res>(_value.groupModel, (value) {
      return _then(_value.copyWith(groupModel: value));
    });
  }
}

/// @nodoc
class _$SetSelectedGroup implements SetSelectedGroup {
  const _$SetSelectedGroup(this.groupModel) : assert(groupModel != null);

  @override
  final GroupModel groupModel;

  @override
  String toString() {
    return 'GroupEvent.setSelectedGroup(groupModel: $groupModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetSelectedGroup &&
            (identical(other.groupModel, groupModel) ||
                const DeepCollectionEquality()
                    .equals(other.groupModel, groupModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(groupModel);

  @JsonKey(ignore: true)
  @override
  $SetSelectedGroupCopyWith<SetSelectedGroup> get copyWith =>
      _$SetSelectedGroupCopyWithImpl<SetSelectedGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllGroup(),
    @required TResult addGroup(),
    @required TResult updateGroup(),
    @required TResult deleteGroup(),
    @required TResult searchChanged(String text),
    @required TResult setSelectedGroup(GroupModel groupModel),
    @required TResult clearSelectedGroup(),
    @required TResult changeGroupName(String groupname),
    @required
        TResult changeListPrivilege(List<PrivilegeModel> listPrivilegeModel),
  }) {
    assert(getAllGroup != null);
    assert(addGroup != null);
    assert(updateGroup != null);
    assert(deleteGroup != null);
    assert(searchChanged != null);
    assert(setSelectedGroup != null);
    assert(clearSelectedGroup != null);
    assert(changeGroupName != null);
    assert(changeListPrivilege != null);
    return setSelectedGroup(groupModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllGroup(),
    TResult addGroup(),
    TResult updateGroup(),
    TResult deleteGroup(),
    TResult searchChanged(String text),
    TResult setSelectedGroup(GroupModel groupModel),
    TResult clearSelectedGroup(),
    TResult changeGroupName(String groupname),
    TResult changeListPrivilege(List<PrivilegeModel> listPrivilegeModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setSelectedGroup != null) {
      return setSelectedGroup(groupModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllGroup(GetAllGroup value),
    @required TResult addGroup(AddGroup value),
    @required TResult updateGroup(UpdateGroup value),
    @required TResult deleteGroup(DeleteGroup value),
    @required TResult searchChanged(SearchChanged value),
    @required TResult setSelectedGroup(SetSelectedGroup value),
    @required TResult clearSelectedGroup(ClearSelectedGroup value),
    @required TResult changeGroupName(ChangeGroupName value),
    @required TResult changeListPrivilege(ChangeListPrivilege value),
  }) {
    assert(getAllGroup != null);
    assert(addGroup != null);
    assert(updateGroup != null);
    assert(deleteGroup != null);
    assert(searchChanged != null);
    assert(setSelectedGroup != null);
    assert(clearSelectedGroup != null);
    assert(changeGroupName != null);
    assert(changeListPrivilege != null);
    return setSelectedGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllGroup(GetAllGroup value),
    TResult addGroup(AddGroup value),
    TResult updateGroup(UpdateGroup value),
    TResult deleteGroup(DeleteGroup value),
    TResult searchChanged(SearchChanged value),
    TResult setSelectedGroup(SetSelectedGroup value),
    TResult clearSelectedGroup(ClearSelectedGroup value),
    TResult changeGroupName(ChangeGroupName value),
    TResult changeListPrivilege(ChangeListPrivilege value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setSelectedGroup != null) {
      return setSelectedGroup(this);
    }
    return orElse();
  }
}

abstract class SetSelectedGroup implements GroupEvent {
  const factory SetSelectedGroup(GroupModel groupModel) = _$SetSelectedGroup;

  GroupModel get groupModel;
  @JsonKey(ignore: true)
  $SetSelectedGroupCopyWith<SetSelectedGroup> get copyWith;
}

/// @nodoc
abstract class $ClearSelectedGroupCopyWith<$Res> {
  factory $ClearSelectedGroupCopyWith(
          ClearSelectedGroup value, $Res Function(ClearSelectedGroup) then) =
      _$ClearSelectedGroupCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClearSelectedGroupCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res>
    implements $ClearSelectedGroupCopyWith<$Res> {
  _$ClearSelectedGroupCopyWithImpl(
      ClearSelectedGroup _value, $Res Function(ClearSelectedGroup) _then)
      : super(_value, (v) => _then(v as ClearSelectedGroup));

  @override
  ClearSelectedGroup get _value => super._value as ClearSelectedGroup;
}

/// @nodoc
class _$ClearSelectedGroup implements ClearSelectedGroup {
  const _$ClearSelectedGroup();

  @override
  String toString() {
    return 'GroupEvent.clearSelectedGroup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ClearSelectedGroup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllGroup(),
    @required TResult addGroup(),
    @required TResult updateGroup(),
    @required TResult deleteGroup(),
    @required TResult searchChanged(String text),
    @required TResult setSelectedGroup(GroupModel groupModel),
    @required TResult clearSelectedGroup(),
    @required TResult changeGroupName(String groupname),
    @required
        TResult changeListPrivilege(List<PrivilegeModel> listPrivilegeModel),
  }) {
    assert(getAllGroup != null);
    assert(addGroup != null);
    assert(updateGroup != null);
    assert(deleteGroup != null);
    assert(searchChanged != null);
    assert(setSelectedGroup != null);
    assert(clearSelectedGroup != null);
    assert(changeGroupName != null);
    assert(changeListPrivilege != null);
    return clearSelectedGroup();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllGroup(),
    TResult addGroup(),
    TResult updateGroup(),
    TResult deleteGroup(),
    TResult searchChanged(String text),
    TResult setSelectedGroup(GroupModel groupModel),
    TResult clearSelectedGroup(),
    TResult changeGroupName(String groupname),
    TResult changeListPrivilege(List<PrivilegeModel> listPrivilegeModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (clearSelectedGroup != null) {
      return clearSelectedGroup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllGroup(GetAllGroup value),
    @required TResult addGroup(AddGroup value),
    @required TResult updateGroup(UpdateGroup value),
    @required TResult deleteGroup(DeleteGroup value),
    @required TResult searchChanged(SearchChanged value),
    @required TResult setSelectedGroup(SetSelectedGroup value),
    @required TResult clearSelectedGroup(ClearSelectedGroup value),
    @required TResult changeGroupName(ChangeGroupName value),
    @required TResult changeListPrivilege(ChangeListPrivilege value),
  }) {
    assert(getAllGroup != null);
    assert(addGroup != null);
    assert(updateGroup != null);
    assert(deleteGroup != null);
    assert(searchChanged != null);
    assert(setSelectedGroup != null);
    assert(clearSelectedGroup != null);
    assert(changeGroupName != null);
    assert(changeListPrivilege != null);
    return clearSelectedGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllGroup(GetAllGroup value),
    TResult addGroup(AddGroup value),
    TResult updateGroup(UpdateGroup value),
    TResult deleteGroup(DeleteGroup value),
    TResult searchChanged(SearchChanged value),
    TResult setSelectedGroup(SetSelectedGroup value),
    TResult clearSelectedGroup(ClearSelectedGroup value),
    TResult changeGroupName(ChangeGroupName value),
    TResult changeListPrivilege(ChangeListPrivilege value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (clearSelectedGroup != null) {
      return clearSelectedGroup(this);
    }
    return orElse();
  }
}

abstract class ClearSelectedGroup implements GroupEvent {
  const factory ClearSelectedGroup() = _$ClearSelectedGroup;
}

/// @nodoc
abstract class $ChangeGroupNameCopyWith<$Res> {
  factory $ChangeGroupNameCopyWith(
          ChangeGroupName value, $Res Function(ChangeGroupName) then) =
      _$ChangeGroupNameCopyWithImpl<$Res>;
  $Res call({String groupname});
}

/// @nodoc
class _$ChangeGroupNameCopyWithImpl<$Res> extends _$GroupEventCopyWithImpl<$Res>
    implements $ChangeGroupNameCopyWith<$Res> {
  _$ChangeGroupNameCopyWithImpl(
      ChangeGroupName _value, $Res Function(ChangeGroupName) _then)
      : super(_value, (v) => _then(v as ChangeGroupName));

  @override
  ChangeGroupName get _value => super._value as ChangeGroupName;

  @override
  $Res call({
    Object groupname = freezed,
  }) {
    return _then(ChangeGroupName(
      groupname == freezed ? _value.groupname : groupname as String,
    ));
  }
}

/// @nodoc
class _$ChangeGroupName implements ChangeGroupName {
  const _$ChangeGroupName(this.groupname) : assert(groupname != null);

  @override
  final String groupname;

  @override
  String toString() {
    return 'GroupEvent.changeGroupName(groupname: $groupname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeGroupName &&
            (identical(other.groupname, groupname) ||
                const DeepCollectionEquality()
                    .equals(other.groupname, groupname)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(groupname);

  @JsonKey(ignore: true)
  @override
  $ChangeGroupNameCopyWith<ChangeGroupName> get copyWith =>
      _$ChangeGroupNameCopyWithImpl<ChangeGroupName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllGroup(),
    @required TResult addGroup(),
    @required TResult updateGroup(),
    @required TResult deleteGroup(),
    @required TResult searchChanged(String text),
    @required TResult setSelectedGroup(GroupModel groupModel),
    @required TResult clearSelectedGroup(),
    @required TResult changeGroupName(String groupname),
    @required
        TResult changeListPrivilege(List<PrivilegeModel> listPrivilegeModel),
  }) {
    assert(getAllGroup != null);
    assert(addGroup != null);
    assert(updateGroup != null);
    assert(deleteGroup != null);
    assert(searchChanged != null);
    assert(setSelectedGroup != null);
    assert(clearSelectedGroup != null);
    assert(changeGroupName != null);
    assert(changeListPrivilege != null);
    return changeGroupName(groupname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllGroup(),
    TResult addGroup(),
    TResult updateGroup(),
    TResult deleteGroup(),
    TResult searchChanged(String text),
    TResult setSelectedGroup(GroupModel groupModel),
    TResult clearSelectedGroup(),
    TResult changeGroupName(String groupname),
    TResult changeListPrivilege(List<PrivilegeModel> listPrivilegeModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeGroupName != null) {
      return changeGroupName(groupname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllGroup(GetAllGroup value),
    @required TResult addGroup(AddGroup value),
    @required TResult updateGroup(UpdateGroup value),
    @required TResult deleteGroup(DeleteGroup value),
    @required TResult searchChanged(SearchChanged value),
    @required TResult setSelectedGroup(SetSelectedGroup value),
    @required TResult clearSelectedGroup(ClearSelectedGroup value),
    @required TResult changeGroupName(ChangeGroupName value),
    @required TResult changeListPrivilege(ChangeListPrivilege value),
  }) {
    assert(getAllGroup != null);
    assert(addGroup != null);
    assert(updateGroup != null);
    assert(deleteGroup != null);
    assert(searchChanged != null);
    assert(setSelectedGroup != null);
    assert(clearSelectedGroup != null);
    assert(changeGroupName != null);
    assert(changeListPrivilege != null);
    return changeGroupName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllGroup(GetAllGroup value),
    TResult addGroup(AddGroup value),
    TResult updateGroup(UpdateGroup value),
    TResult deleteGroup(DeleteGroup value),
    TResult searchChanged(SearchChanged value),
    TResult setSelectedGroup(SetSelectedGroup value),
    TResult clearSelectedGroup(ClearSelectedGroup value),
    TResult changeGroupName(ChangeGroupName value),
    TResult changeListPrivilege(ChangeListPrivilege value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeGroupName != null) {
      return changeGroupName(this);
    }
    return orElse();
  }
}

abstract class ChangeGroupName implements GroupEvent {
  const factory ChangeGroupName(String groupname) = _$ChangeGroupName;

  String get groupname;
  @JsonKey(ignore: true)
  $ChangeGroupNameCopyWith<ChangeGroupName> get copyWith;
}

/// @nodoc
abstract class $ChangeListPrivilegeCopyWith<$Res> {
  factory $ChangeListPrivilegeCopyWith(
          ChangeListPrivilege value, $Res Function(ChangeListPrivilege) then) =
      _$ChangeListPrivilegeCopyWithImpl<$Res>;
  $Res call({List<PrivilegeModel> listPrivilegeModel});
}

/// @nodoc
class _$ChangeListPrivilegeCopyWithImpl<$Res>
    extends _$GroupEventCopyWithImpl<$Res>
    implements $ChangeListPrivilegeCopyWith<$Res> {
  _$ChangeListPrivilegeCopyWithImpl(
      ChangeListPrivilege _value, $Res Function(ChangeListPrivilege) _then)
      : super(_value, (v) => _then(v as ChangeListPrivilege));

  @override
  ChangeListPrivilege get _value => super._value as ChangeListPrivilege;

  @override
  $Res call({
    Object listPrivilegeModel = freezed,
  }) {
    return _then(ChangeListPrivilege(
      listPrivilegeModel == freezed
          ? _value.listPrivilegeModel
          : listPrivilegeModel as List<PrivilegeModel>,
    ));
  }
}

/// @nodoc
class _$ChangeListPrivilege implements ChangeListPrivilege {
  const _$ChangeListPrivilege(this.listPrivilegeModel)
      : assert(listPrivilegeModel != null);

  @override
  final List<PrivilegeModel> listPrivilegeModel;

  @override
  String toString() {
    return 'GroupEvent.changeListPrivilege(listPrivilegeModel: $listPrivilegeModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeListPrivilege &&
            (identical(other.listPrivilegeModel, listPrivilegeModel) ||
                const DeepCollectionEquality()
                    .equals(other.listPrivilegeModel, listPrivilegeModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listPrivilegeModel);

  @JsonKey(ignore: true)
  @override
  $ChangeListPrivilegeCopyWith<ChangeListPrivilege> get copyWith =>
      _$ChangeListPrivilegeCopyWithImpl<ChangeListPrivilege>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllGroup(),
    @required TResult addGroup(),
    @required TResult updateGroup(),
    @required TResult deleteGroup(),
    @required TResult searchChanged(String text),
    @required TResult setSelectedGroup(GroupModel groupModel),
    @required TResult clearSelectedGroup(),
    @required TResult changeGroupName(String groupname),
    @required
        TResult changeListPrivilege(List<PrivilegeModel> listPrivilegeModel),
  }) {
    assert(getAllGroup != null);
    assert(addGroup != null);
    assert(updateGroup != null);
    assert(deleteGroup != null);
    assert(searchChanged != null);
    assert(setSelectedGroup != null);
    assert(clearSelectedGroup != null);
    assert(changeGroupName != null);
    assert(changeListPrivilege != null);
    return changeListPrivilege(listPrivilegeModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllGroup(),
    TResult addGroup(),
    TResult updateGroup(),
    TResult deleteGroup(),
    TResult searchChanged(String text),
    TResult setSelectedGroup(GroupModel groupModel),
    TResult clearSelectedGroup(),
    TResult changeGroupName(String groupname),
    TResult changeListPrivilege(List<PrivilegeModel> listPrivilegeModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeListPrivilege != null) {
      return changeListPrivilege(listPrivilegeModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllGroup(GetAllGroup value),
    @required TResult addGroup(AddGroup value),
    @required TResult updateGroup(UpdateGroup value),
    @required TResult deleteGroup(DeleteGroup value),
    @required TResult searchChanged(SearchChanged value),
    @required TResult setSelectedGroup(SetSelectedGroup value),
    @required TResult clearSelectedGroup(ClearSelectedGroup value),
    @required TResult changeGroupName(ChangeGroupName value),
    @required TResult changeListPrivilege(ChangeListPrivilege value),
  }) {
    assert(getAllGroup != null);
    assert(addGroup != null);
    assert(updateGroup != null);
    assert(deleteGroup != null);
    assert(searchChanged != null);
    assert(setSelectedGroup != null);
    assert(clearSelectedGroup != null);
    assert(changeGroupName != null);
    assert(changeListPrivilege != null);
    return changeListPrivilege(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllGroup(GetAllGroup value),
    TResult addGroup(AddGroup value),
    TResult updateGroup(UpdateGroup value),
    TResult deleteGroup(DeleteGroup value),
    TResult searchChanged(SearchChanged value),
    TResult setSelectedGroup(SetSelectedGroup value),
    TResult clearSelectedGroup(ClearSelectedGroup value),
    TResult changeGroupName(ChangeGroupName value),
    TResult changeListPrivilege(ChangeListPrivilege value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeListPrivilege != null) {
      return changeListPrivilege(this);
    }
    return orElse();
  }
}

abstract class ChangeListPrivilege implements GroupEvent {
  const factory ChangeListPrivilege(List<PrivilegeModel> listPrivilegeModel) =
      _$ChangeListPrivilege;

  List<PrivilegeModel> get listPrivilegeModel;
  @JsonKey(ignore: true)
  $ChangeListPrivilegeCopyWith<ChangeListPrivilege> get copyWith;
}

/// @nodoc
class _$GroupStateTearOff {
  const _$GroupStateTearOff();

// ignore: unused_element
  _GroupState call(
      {@required List<GroupModel> listGroupModel,
      @required List<GroupModel> listGroupModelFiltered,
      @required GroupModel selectedGroup,
      @required bool isLoading,
      @required bool isLoaded,
      @required bool isValid,
      @required bool isError,
      @required String message}) {
    return _GroupState(
      listGroupModel: listGroupModel,
      listGroupModelFiltered: listGroupModelFiltered,
      selectedGroup: selectedGroup,
      isLoading: isLoading,
      isLoaded: isLoaded,
      isValid: isValid,
      isError: isError,
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GroupState = _$GroupStateTearOff();

/// @nodoc
mixin _$GroupState {
  List<GroupModel> get listGroupModel;
  List<GroupModel> get listGroupModelFiltered;
  GroupModel get selectedGroup;
  bool get isLoading;
  bool get isLoaded;
  bool get isValid;
  bool get isError;
  String get message;

  @JsonKey(ignore: true)
  $GroupStateCopyWith<GroupState> get copyWith;
}

/// @nodoc
abstract class $GroupStateCopyWith<$Res> {
  factory $GroupStateCopyWith(
          GroupState value, $Res Function(GroupState) then) =
      _$GroupStateCopyWithImpl<$Res>;
  $Res call(
      {List<GroupModel> listGroupModel,
      List<GroupModel> listGroupModelFiltered,
      GroupModel selectedGroup,
      bool isLoading,
      bool isLoaded,
      bool isValid,
      bool isError,
      String message});

  $GroupModelCopyWith<$Res> get selectedGroup;
}

/// @nodoc
class _$GroupStateCopyWithImpl<$Res> implements $GroupStateCopyWith<$Res> {
  _$GroupStateCopyWithImpl(this._value, this._then);

  final GroupState _value;
  // ignore: unused_field
  final $Res Function(GroupState) _then;

  @override
  $Res call({
    Object listGroupModel = freezed,
    Object listGroupModelFiltered = freezed,
    Object selectedGroup = freezed,
    Object isLoading = freezed,
    Object isLoaded = freezed,
    Object isValid = freezed,
    Object isError = freezed,
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      listGroupModel: listGroupModel == freezed
          ? _value.listGroupModel
          : listGroupModel as List<GroupModel>,
      listGroupModelFiltered: listGroupModelFiltered == freezed
          ? _value.listGroupModelFiltered
          : listGroupModelFiltered as List<GroupModel>,
      selectedGroup: selectedGroup == freezed
          ? _value.selectedGroup
          : selectedGroup as GroupModel,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isLoaded: isLoaded == freezed ? _value.isLoaded : isLoaded as bool,
      isValid: isValid == freezed ? _value.isValid : isValid as bool,
      isError: isError == freezed ? _value.isError : isError as bool,
      message: message == freezed ? _value.message : message as String,
    ));
  }

  @override
  $GroupModelCopyWith<$Res> get selectedGroup {
    if (_value.selectedGroup == null) {
      return null;
    }
    return $GroupModelCopyWith<$Res>(_value.selectedGroup, (value) {
      return _then(_value.copyWith(selectedGroup: value));
    });
  }
}

/// @nodoc
abstract class _$GroupStateCopyWith<$Res> implements $GroupStateCopyWith<$Res> {
  factory _$GroupStateCopyWith(
          _GroupState value, $Res Function(_GroupState) then) =
      __$GroupStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<GroupModel> listGroupModel,
      List<GroupModel> listGroupModelFiltered,
      GroupModel selectedGroup,
      bool isLoading,
      bool isLoaded,
      bool isValid,
      bool isError,
      String message});

  @override
  $GroupModelCopyWith<$Res> get selectedGroup;
}

/// @nodoc
class __$GroupStateCopyWithImpl<$Res> extends _$GroupStateCopyWithImpl<$Res>
    implements _$GroupStateCopyWith<$Res> {
  __$GroupStateCopyWithImpl(
      _GroupState _value, $Res Function(_GroupState) _then)
      : super(_value, (v) => _then(v as _GroupState));

  @override
  _GroupState get _value => super._value as _GroupState;

  @override
  $Res call({
    Object listGroupModel = freezed,
    Object listGroupModelFiltered = freezed,
    Object selectedGroup = freezed,
    Object isLoading = freezed,
    Object isLoaded = freezed,
    Object isValid = freezed,
    Object isError = freezed,
    Object message = freezed,
  }) {
    return _then(_GroupState(
      listGroupModel: listGroupModel == freezed
          ? _value.listGroupModel
          : listGroupModel as List<GroupModel>,
      listGroupModelFiltered: listGroupModelFiltered == freezed
          ? _value.listGroupModelFiltered
          : listGroupModelFiltered as List<GroupModel>,
      selectedGroup: selectedGroup == freezed
          ? _value.selectedGroup
          : selectedGroup as GroupModel,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isLoaded: isLoaded == freezed ? _value.isLoaded : isLoaded as bool,
      isValid: isValid == freezed ? _value.isValid : isValid as bool,
      isError: isError == freezed ? _value.isError : isError as bool,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_GroupState implements _GroupState {
  const _$_GroupState(
      {@required this.listGroupModel,
      @required this.listGroupModelFiltered,
      @required this.selectedGroup,
      @required this.isLoading,
      @required this.isLoaded,
      @required this.isValid,
      @required this.isError,
      @required this.message})
      : assert(listGroupModel != null),
        assert(listGroupModelFiltered != null),
        assert(selectedGroup != null),
        assert(isLoading != null),
        assert(isLoaded != null),
        assert(isValid != null),
        assert(isError != null),
        assert(message != null);

  @override
  final List<GroupModel> listGroupModel;
  @override
  final List<GroupModel> listGroupModelFiltered;
  @override
  final GroupModel selectedGroup;
  @override
  final bool isLoading;
  @override
  final bool isLoaded;
  @override
  final bool isValid;
  @override
  final bool isError;
  @override
  final String message;

  @override
  String toString() {
    return 'GroupState(listGroupModel: $listGroupModel, listGroupModelFiltered: $listGroupModelFiltered, selectedGroup: $selectedGroup, isLoading: $isLoading, isLoaded: $isLoaded, isValid: $isValid, isError: $isError, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupState &&
            (identical(other.listGroupModel, listGroupModel) ||
                const DeepCollectionEquality()
                    .equals(other.listGroupModel, listGroupModel)) &&
            (identical(other.listGroupModelFiltered, listGroupModelFiltered) ||
                const DeepCollectionEquality().equals(
                    other.listGroupModelFiltered, listGroupModelFiltered)) &&
            (identical(other.selectedGroup, selectedGroup) ||
                const DeepCollectionEquality()
                    .equals(other.selectedGroup, selectedGroup)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isLoaded, isLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.isLoaded, isLoaded)) &&
            (identical(other.isValid, isValid) ||
                const DeepCollectionEquality()
                    .equals(other.isValid, isValid)) &&
            (identical(other.isError, isError) ||
                const DeepCollectionEquality()
                    .equals(other.isError, isError)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listGroupModel) ^
      const DeepCollectionEquality().hash(listGroupModelFiltered) ^
      const DeepCollectionEquality().hash(selectedGroup) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isLoaded) ^
      const DeepCollectionEquality().hash(isValid) ^
      const DeepCollectionEquality().hash(isError) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$GroupStateCopyWith<_GroupState> get copyWith =>
      __$GroupStateCopyWithImpl<_GroupState>(this, _$identity);
}

abstract class _GroupState implements GroupState {
  const factory _GroupState(
      {@required List<GroupModel> listGroupModel,
      @required List<GroupModel> listGroupModelFiltered,
      @required GroupModel selectedGroup,
      @required bool isLoading,
      @required bool isLoaded,
      @required bool isValid,
      @required bool isError,
      @required String message}) = _$_GroupState;

  @override
  List<GroupModel> get listGroupModel;
  @override
  List<GroupModel> get listGroupModelFiltered;
  @override
  GroupModel get selectedGroup;
  @override
  bool get isLoading;
  @override
  bool get isLoaded;
  @override
  bool get isValid;
  @override
  bool get isError;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$GroupStateCopyWith<_GroupState> get copyWith;
}
