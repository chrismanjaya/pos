// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'branch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BranchTearOff {
  const _$BranchTearOff();

// ignore: unused_element
  _Branch call(
      {String id, String branchName, String address, String phoneNumber}) {
    return _Branch(
      id: id,
      branchName: branchName,
      address: address,
      phoneNumber: phoneNumber,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Branch = _$BranchTearOff();

/// @nodoc
mixin _$Branch {
  String get id;
  String get branchName;
  String get address;
  String get phoneNumber;

  @JsonKey(ignore: true)
  $BranchCopyWith<Branch> get copyWith;
}

/// @nodoc
abstract class $BranchCopyWith<$Res> {
  factory $BranchCopyWith(Branch value, $Res Function(Branch) then) =
      _$BranchCopyWithImpl<$Res>;
  $Res call({String id, String branchName, String address, String phoneNumber});
}

/// @nodoc
class _$BranchCopyWithImpl<$Res> implements $BranchCopyWith<$Res> {
  _$BranchCopyWithImpl(this._value, this._then);

  final Branch _value;
  // ignore: unused_field
  final $Res Function(Branch) _then;

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
abstract class _$BranchCopyWith<$Res> implements $BranchCopyWith<$Res> {
  factory _$BranchCopyWith(_Branch value, $Res Function(_Branch) then) =
      __$BranchCopyWithImpl<$Res>;
  @override
  $Res call({String id, String branchName, String address, String phoneNumber});
}

/// @nodoc
class __$BranchCopyWithImpl<$Res> extends _$BranchCopyWithImpl<$Res>
    implements _$BranchCopyWith<$Res> {
  __$BranchCopyWithImpl(_Branch _value, $Res Function(_Branch) _then)
      : super(_value, (v) => _then(v as _Branch));

  @override
  _Branch get _value => super._value as _Branch;

  @override
  $Res call({
    Object id = freezed,
    Object branchName = freezed,
    Object address = freezed,
    Object phoneNumber = freezed,
  }) {
    return _then(_Branch(
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
class _$_Branch implements _Branch {
  _$_Branch({this.id, this.branchName, this.address, this.phoneNumber});

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
    return 'Branch(id: $id, branchName: $branchName, address: $address, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Branch &&
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
  _$BranchCopyWith<_Branch> get copyWith =>
      __$BranchCopyWithImpl<_Branch>(this, _$identity);
}

abstract class _Branch implements Branch {
  factory _Branch(
      {String id,
      String branchName,
      String address,
      String phoneNumber}) = _$_Branch;

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
  _$BranchCopyWith<_Branch> get copyWith;
}
