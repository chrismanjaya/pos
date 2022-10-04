// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'branch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BranchModelTearOff {
  const _$BranchModelTearOff();

// ignore: unused_element
  _BranchModel call(
      {String id, String branchName, String address, String phoneNumber}) {
    return _BranchModel(
      id: id,
      branchName: branchName,
      address: address,
      phoneNumber: phoneNumber,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BranchModel = _$BranchModelTearOff();

/// @nodoc
mixin _$BranchModel {
  String get id;
  String get branchName;
  String get address;
  String get phoneNumber;

  @JsonKey(ignore: true)
  $BranchModelCopyWith<BranchModel> get copyWith;
}

/// @nodoc
abstract class $BranchModelCopyWith<$Res> {
  factory $BranchModelCopyWith(
          BranchModel value, $Res Function(BranchModel) then) =
      _$BranchModelCopyWithImpl<$Res>;
  $Res call({String id, String branchName, String address, String phoneNumber});
}

/// @nodoc
class _$BranchModelCopyWithImpl<$Res> implements $BranchModelCopyWith<$Res> {
  _$BranchModelCopyWithImpl(this._value, this._then);

  final BranchModel _value;
  // ignore: unused_field
  final $Res Function(BranchModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object branchName = freezed,
    Object address = freezed,
    Object phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      branchName:
          branchName == freezed ? _value.branchName : branchName as String,
      address: address == freezed ? _value.address : address as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
    ));
  }
}

/// @nodoc
abstract class _$BranchModelCopyWith<$Res>
    implements $BranchModelCopyWith<$Res> {
  factory _$BranchModelCopyWith(
          _BranchModel value, $Res Function(_BranchModel) then) =
      __$BranchModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String branchName, String address, String phoneNumber});
}

/// @nodoc
class __$BranchModelCopyWithImpl<$Res> extends _$BranchModelCopyWithImpl<$Res>
    implements _$BranchModelCopyWith<$Res> {
  __$BranchModelCopyWithImpl(
      _BranchModel _value, $Res Function(_BranchModel) _then)
      : super(_value, (v) => _then(v as _BranchModel));

  @override
  _BranchModel get _value => super._value as _BranchModel;

  @override
  $Res call({
    Object id = freezed,
    Object branchName = freezed,
    Object address = freezed,
    Object phoneNumber = freezed,
  }) {
    return _then(_BranchModel(
      id: id == freezed ? _value.id : id as String,
      branchName:
          branchName == freezed ? _value.branchName : branchName as String,
      address: address == freezed ? _value.address : address as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
    ));
  }
}

/// @nodoc
class _$_BranchModel implements _BranchModel {
  _$_BranchModel({this.id, this.branchName, this.address, this.phoneNumber});

  @override
  final String id;
  @override
  final String branchName;
  @override
  final String address;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'BranchModel(id: $id, branchName: $branchName, address: $address, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BranchModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.branchName, branchName) ||
                const DeepCollectionEquality()
                    .equals(other.branchName, branchName)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(branchName) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(phoneNumber);

  @JsonKey(ignore: true)
  @override
  _$BranchModelCopyWith<_BranchModel> get copyWith =>
      __$BranchModelCopyWithImpl<_BranchModel>(this, _$identity);
}

abstract class _BranchModel implements BranchModel {
  factory _BranchModel(
      {String id,
      String branchName,
      String address,
      String phoneNumber}) = _$_BranchModel;

  @override
  String get id;
  @override
  String get branchName;
  @override
  String get address;
  @override
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$BranchModelCopyWith<_BranchModel> get copyWith;
}
