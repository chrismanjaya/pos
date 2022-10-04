// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'activity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ActivityEventTearOff {
  const _$ActivityEventTearOff();

// ignore: unused_element
  GetAllTransaction getAllTransaction(BranchModel branchModel) {
    return GetAllTransaction(
      branchModel,
    );
  }

// ignore: unused_element
  GetFiltredTransaction getFiltredTransaction() {
    return const GetFiltredTransaction();
  }

// ignore: unused_element
  GetTransaction getTransaction(String transactionId) {
    return GetTransaction(
      transactionId,
    );
  }

// ignore: unused_element
  AddActivityFilter addActivityFilter(
      TransactionFilterModel activityFilterModel) {
    return AddActivityFilter(
      activityFilterModel,
    );
  }

// ignore: unused_element
  VoidTransaction voidTransaction(
      TransactionHeaderModel transactionHeaderModel) {
    return VoidTransaction(
      transactionHeaderModel,
    );
  }

// ignore: unused_element
  DiscardTransaction discardTransaction(
      TransactionHeaderModel transactionHeaderModel) {
    return DiscardTransaction(
      transactionHeaderModel,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ActivityEvent = _$ActivityEventTearOff();

/// @nodoc
mixin _$ActivityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllTransaction(BranchModel branchModel),
    @required TResult getFiltredTransaction(),
    @required TResult getTransaction(String transactionId),
    @required
        TResult addActivityFilter(TransactionFilterModel activityFilterModel),
    @required
        TResult voidTransaction(TransactionHeaderModel transactionHeaderModel),
    @required
        TResult discardTransaction(
            TransactionHeaderModel transactionHeaderModel),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllTransaction(BranchModel branchModel),
    TResult getFiltredTransaction(),
    TResult getTransaction(String transactionId),
    TResult addActivityFilter(TransactionFilterModel activityFilterModel),
    TResult voidTransaction(TransactionHeaderModel transactionHeaderModel),
    TResult discardTransaction(TransactionHeaderModel transactionHeaderModel),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllTransaction(GetAllTransaction value),
    @required TResult getFiltredTransaction(GetFiltredTransaction value),
    @required TResult getTransaction(GetTransaction value),
    @required TResult addActivityFilter(AddActivityFilter value),
    @required TResult voidTransaction(VoidTransaction value),
    @required TResult discardTransaction(DiscardTransaction value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllTransaction(GetAllTransaction value),
    TResult getFiltredTransaction(GetFiltredTransaction value),
    TResult getTransaction(GetTransaction value),
    TResult addActivityFilter(AddActivityFilter value),
    TResult voidTransaction(VoidTransaction value),
    TResult discardTransaction(DiscardTransaction value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ActivityEventCopyWith<$Res> {
  factory $ActivityEventCopyWith(
          ActivityEvent value, $Res Function(ActivityEvent) then) =
      _$ActivityEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActivityEventCopyWithImpl<$Res>
    implements $ActivityEventCopyWith<$Res> {
  _$ActivityEventCopyWithImpl(this._value, this._then);

  final ActivityEvent _value;
  // ignore: unused_field
  final $Res Function(ActivityEvent) _then;
}

/// @nodoc
abstract class $GetAllTransactionCopyWith<$Res> {
  factory $GetAllTransactionCopyWith(
          GetAllTransaction value, $Res Function(GetAllTransaction) then) =
      _$GetAllTransactionCopyWithImpl<$Res>;
  $Res call({BranchModel branchModel});

  $BranchModelCopyWith<$Res> get branchModel;
}

/// @nodoc
class _$GetAllTransactionCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res>
    implements $GetAllTransactionCopyWith<$Res> {
  _$GetAllTransactionCopyWithImpl(
      GetAllTransaction _value, $Res Function(GetAllTransaction) _then)
      : super(_value, (v) => _then(v as GetAllTransaction));

  @override
  GetAllTransaction get _value => super._value as GetAllTransaction;

  @override
  $Res call({
    Object branchModel = freezed,
  }) {
    return _then(GetAllTransaction(
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
class _$GetAllTransaction implements GetAllTransaction {
  const _$GetAllTransaction(this.branchModel) : assert(branchModel != null);

  @override
  final BranchModel branchModel;

  @override
  String toString() {
    return 'ActivityEvent.getAllTransaction(branchModel: $branchModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetAllTransaction &&
            (identical(other.branchModel, branchModel) ||
                const DeepCollectionEquality()
                    .equals(other.branchModel, branchModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(branchModel);

  @JsonKey(ignore: true)
  @override
  $GetAllTransactionCopyWith<GetAllTransaction> get copyWith =>
      _$GetAllTransactionCopyWithImpl<GetAllTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllTransaction(BranchModel branchModel),
    @required TResult getFiltredTransaction(),
    @required TResult getTransaction(String transactionId),
    @required
        TResult addActivityFilter(TransactionFilterModel activityFilterModel),
    @required
        TResult voidTransaction(TransactionHeaderModel transactionHeaderModel),
    @required
        TResult discardTransaction(
            TransactionHeaderModel transactionHeaderModel),
  }) {
    assert(getAllTransaction != null);
    assert(getFiltredTransaction != null);
    assert(getTransaction != null);
    assert(addActivityFilter != null);
    assert(voidTransaction != null);
    assert(discardTransaction != null);
    return getAllTransaction(branchModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllTransaction(BranchModel branchModel),
    TResult getFiltredTransaction(),
    TResult getTransaction(String transactionId),
    TResult addActivityFilter(TransactionFilterModel activityFilterModel),
    TResult voidTransaction(TransactionHeaderModel transactionHeaderModel),
    TResult discardTransaction(TransactionHeaderModel transactionHeaderModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllTransaction != null) {
      return getAllTransaction(branchModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllTransaction(GetAllTransaction value),
    @required TResult getFiltredTransaction(GetFiltredTransaction value),
    @required TResult getTransaction(GetTransaction value),
    @required TResult addActivityFilter(AddActivityFilter value),
    @required TResult voidTransaction(VoidTransaction value),
    @required TResult discardTransaction(DiscardTransaction value),
  }) {
    assert(getAllTransaction != null);
    assert(getFiltredTransaction != null);
    assert(getTransaction != null);
    assert(addActivityFilter != null);
    assert(voidTransaction != null);
    assert(discardTransaction != null);
    return getAllTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllTransaction(GetAllTransaction value),
    TResult getFiltredTransaction(GetFiltredTransaction value),
    TResult getTransaction(GetTransaction value),
    TResult addActivityFilter(AddActivityFilter value),
    TResult voidTransaction(VoidTransaction value),
    TResult discardTransaction(DiscardTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getAllTransaction != null) {
      return getAllTransaction(this);
    }
    return orElse();
  }
}

abstract class GetAllTransaction implements ActivityEvent {
  const factory GetAllTransaction(BranchModel branchModel) =
      _$GetAllTransaction;

  BranchModel get branchModel;
  @JsonKey(ignore: true)
  $GetAllTransactionCopyWith<GetAllTransaction> get copyWith;
}

/// @nodoc
abstract class $GetFiltredTransactionCopyWith<$Res> {
  factory $GetFiltredTransactionCopyWith(GetFiltredTransaction value,
          $Res Function(GetFiltredTransaction) then) =
      _$GetFiltredTransactionCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetFiltredTransactionCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res>
    implements $GetFiltredTransactionCopyWith<$Res> {
  _$GetFiltredTransactionCopyWithImpl(
      GetFiltredTransaction _value, $Res Function(GetFiltredTransaction) _then)
      : super(_value, (v) => _then(v as GetFiltredTransaction));

  @override
  GetFiltredTransaction get _value => super._value as GetFiltredTransaction;
}

/// @nodoc
class _$GetFiltredTransaction implements GetFiltredTransaction {
  const _$GetFiltredTransaction();

  @override
  String toString() {
    return 'ActivityEvent.getFiltredTransaction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetFiltredTransaction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllTransaction(BranchModel branchModel),
    @required TResult getFiltredTransaction(),
    @required TResult getTransaction(String transactionId),
    @required
        TResult addActivityFilter(TransactionFilterModel activityFilterModel),
    @required
        TResult voidTransaction(TransactionHeaderModel transactionHeaderModel),
    @required
        TResult discardTransaction(
            TransactionHeaderModel transactionHeaderModel),
  }) {
    assert(getAllTransaction != null);
    assert(getFiltredTransaction != null);
    assert(getTransaction != null);
    assert(addActivityFilter != null);
    assert(voidTransaction != null);
    assert(discardTransaction != null);
    return getFiltredTransaction();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllTransaction(BranchModel branchModel),
    TResult getFiltredTransaction(),
    TResult getTransaction(String transactionId),
    TResult addActivityFilter(TransactionFilterModel activityFilterModel),
    TResult voidTransaction(TransactionHeaderModel transactionHeaderModel),
    TResult discardTransaction(TransactionHeaderModel transactionHeaderModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getFiltredTransaction != null) {
      return getFiltredTransaction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllTransaction(GetAllTransaction value),
    @required TResult getFiltredTransaction(GetFiltredTransaction value),
    @required TResult getTransaction(GetTransaction value),
    @required TResult addActivityFilter(AddActivityFilter value),
    @required TResult voidTransaction(VoidTransaction value),
    @required TResult discardTransaction(DiscardTransaction value),
  }) {
    assert(getAllTransaction != null);
    assert(getFiltredTransaction != null);
    assert(getTransaction != null);
    assert(addActivityFilter != null);
    assert(voidTransaction != null);
    assert(discardTransaction != null);
    return getFiltredTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllTransaction(GetAllTransaction value),
    TResult getFiltredTransaction(GetFiltredTransaction value),
    TResult getTransaction(GetTransaction value),
    TResult addActivityFilter(AddActivityFilter value),
    TResult voidTransaction(VoidTransaction value),
    TResult discardTransaction(DiscardTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getFiltredTransaction != null) {
      return getFiltredTransaction(this);
    }
    return orElse();
  }
}

abstract class GetFiltredTransaction implements ActivityEvent {
  const factory GetFiltredTransaction() = _$GetFiltredTransaction;
}

/// @nodoc
abstract class $GetTransactionCopyWith<$Res> {
  factory $GetTransactionCopyWith(
          GetTransaction value, $Res Function(GetTransaction) then) =
      _$GetTransactionCopyWithImpl<$Res>;
  $Res call({String transactionId});
}

/// @nodoc
class _$GetTransactionCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res>
    implements $GetTransactionCopyWith<$Res> {
  _$GetTransactionCopyWithImpl(
      GetTransaction _value, $Res Function(GetTransaction) _then)
      : super(_value, (v) => _then(v as GetTransaction));

  @override
  GetTransaction get _value => super._value as GetTransaction;

  @override
  $Res call({
    Object transactionId = freezed,
  }) {
    return _then(GetTransaction(
      transactionId == freezed ? _value.transactionId : transactionId as String,
    ));
  }
}

/// @nodoc
class _$GetTransaction implements GetTransaction {
  const _$GetTransaction(this.transactionId) : assert(transactionId != null);

  @override
  final String transactionId;

  @override
  String toString() {
    return 'ActivityEvent.getTransaction(transactionId: $transactionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetTransaction &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(transactionId);

  @JsonKey(ignore: true)
  @override
  $GetTransactionCopyWith<GetTransaction> get copyWith =>
      _$GetTransactionCopyWithImpl<GetTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllTransaction(BranchModel branchModel),
    @required TResult getFiltredTransaction(),
    @required TResult getTransaction(String transactionId),
    @required
        TResult addActivityFilter(TransactionFilterModel activityFilterModel),
    @required
        TResult voidTransaction(TransactionHeaderModel transactionHeaderModel),
    @required
        TResult discardTransaction(
            TransactionHeaderModel transactionHeaderModel),
  }) {
    assert(getAllTransaction != null);
    assert(getFiltredTransaction != null);
    assert(getTransaction != null);
    assert(addActivityFilter != null);
    assert(voidTransaction != null);
    assert(discardTransaction != null);
    return getTransaction(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllTransaction(BranchModel branchModel),
    TResult getFiltredTransaction(),
    TResult getTransaction(String transactionId),
    TResult addActivityFilter(TransactionFilterModel activityFilterModel),
    TResult voidTransaction(TransactionHeaderModel transactionHeaderModel),
    TResult discardTransaction(TransactionHeaderModel transactionHeaderModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getTransaction != null) {
      return getTransaction(transactionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllTransaction(GetAllTransaction value),
    @required TResult getFiltredTransaction(GetFiltredTransaction value),
    @required TResult getTransaction(GetTransaction value),
    @required TResult addActivityFilter(AddActivityFilter value),
    @required TResult voidTransaction(VoidTransaction value),
    @required TResult discardTransaction(DiscardTransaction value),
  }) {
    assert(getAllTransaction != null);
    assert(getFiltredTransaction != null);
    assert(getTransaction != null);
    assert(addActivityFilter != null);
    assert(voidTransaction != null);
    assert(discardTransaction != null);
    return getTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllTransaction(GetAllTransaction value),
    TResult getFiltredTransaction(GetFiltredTransaction value),
    TResult getTransaction(GetTransaction value),
    TResult addActivityFilter(AddActivityFilter value),
    TResult voidTransaction(VoidTransaction value),
    TResult discardTransaction(DiscardTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getTransaction != null) {
      return getTransaction(this);
    }
    return orElse();
  }
}

abstract class GetTransaction implements ActivityEvent {
  const factory GetTransaction(String transactionId) = _$GetTransaction;

  String get transactionId;
  @JsonKey(ignore: true)
  $GetTransactionCopyWith<GetTransaction> get copyWith;
}

/// @nodoc
abstract class $AddActivityFilterCopyWith<$Res> {
  factory $AddActivityFilterCopyWith(
          AddActivityFilter value, $Res Function(AddActivityFilter) then) =
      _$AddActivityFilterCopyWithImpl<$Res>;
  $Res call({TransactionFilterModel activityFilterModel});

  $TransactionFilterModelCopyWith<$Res> get activityFilterModel;
}

/// @nodoc
class _$AddActivityFilterCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res>
    implements $AddActivityFilterCopyWith<$Res> {
  _$AddActivityFilterCopyWithImpl(
      AddActivityFilter _value, $Res Function(AddActivityFilter) _then)
      : super(_value, (v) => _then(v as AddActivityFilter));

  @override
  AddActivityFilter get _value => super._value as AddActivityFilter;

  @override
  $Res call({
    Object activityFilterModel = freezed,
  }) {
    return _then(AddActivityFilter(
      activityFilterModel == freezed
          ? _value.activityFilterModel
          : activityFilterModel as TransactionFilterModel,
    ));
  }

  @override
  $TransactionFilterModelCopyWith<$Res> get activityFilterModel {
    if (_value.activityFilterModel == null) {
      return null;
    }
    return $TransactionFilterModelCopyWith<$Res>(_value.activityFilterModel,
        (value) {
      return _then(_value.copyWith(activityFilterModel: value));
    });
  }
}

/// @nodoc
class _$AddActivityFilter implements AddActivityFilter {
  const _$AddActivityFilter(this.activityFilterModel)
      : assert(activityFilterModel != null);

  @override
  final TransactionFilterModel activityFilterModel;

  @override
  String toString() {
    return 'ActivityEvent.addActivityFilter(activityFilterModel: $activityFilterModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddActivityFilter &&
            (identical(other.activityFilterModel, activityFilterModel) ||
                const DeepCollectionEquality()
                    .equals(other.activityFilterModel, activityFilterModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(activityFilterModel);

  @JsonKey(ignore: true)
  @override
  $AddActivityFilterCopyWith<AddActivityFilter> get copyWith =>
      _$AddActivityFilterCopyWithImpl<AddActivityFilter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllTransaction(BranchModel branchModel),
    @required TResult getFiltredTransaction(),
    @required TResult getTransaction(String transactionId),
    @required
        TResult addActivityFilter(TransactionFilterModel activityFilterModel),
    @required
        TResult voidTransaction(TransactionHeaderModel transactionHeaderModel),
    @required
        TResult discardTransaction(
            TransactionHeaderModel transactionHeaderModel),
  }) {
    assert(getAllTransaction != null);
    assert(getFiltredTransaction != null);
    assert(getTransaction != null);
    assert(addActivityFilter != null);
    assert(voidTransaction != null);
    assert(discardTransaction != null);
    return addActivityFilter(activityFilterModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllTransaction(BranchModel branchModel),
    TResult getFiltredTransaction(),
    TResult getTransaction(String transactionId),
    TResult addActivityFilter(TransactionFilterModel activityFilterModel),
    TResult voidTransaction(TransactionHeaderModel transactionHeaderModel),
    TResult discardTransaction(TransactionHeaderModel transactionHeaderModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addActivityFilter != null) {
      return addActivityFilter(activityFilterModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllTransaction(GetAllTransaction value),
    @required TResult getFiltredTransaction(GetFiltredTransaction value),
    @required TResult getTransaction(GetTransaction value),
    @required TResult addActivityFilter(AddActivityFilter value),
    @required TResult voidTransaction(VoidTransaction value),
    @required TResult discardTransaction(DiscardTransaction value),
  }) {
    assert(getAllTransaction != null);
    assert(getFiltredTransaction != null);
    assert(getTransaction != null);
    assert(addActivityFilter != null);
    assert(voidTransaction != null);
    assert(discardTransaction != null);
    return addActivityFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllTransaction(GetAllTransaction value),
    TResult getFiltredTransaction(GetFiltredTransaction value),
    TResult getTransaction(GetTransaction value),
    TResult addActivityFilter(AddActivityFilter value),
    TResult voidTransaction(VoidTransaction value),
    TResult discardTransaction(DiscardTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addActivityFilter != null) {
      return addActivityFilter(this);
    }
    return orElse();
  }
}

abstract class AddActivityFilter implements ActivityEvent {
  const factory AddActivityFilter(TransactionFilterModel activityFilterModel) =
      _$AddActivityFilter;

  TransactionFilterModel get activityFilterModel;
  @JsonKey(ignore: true)
  $AddActivityFilterCopyWith<AddActivityFilter> get copyWith;
}

/// @nodoc
abstract class $VoidTransactionCopyWith<$Res> {
  factory $VoidTransactionCopyWith(
          VoidTransaction value, $Res Function(VoidTransaction) then) =
      _$VoidTransactionCopyWithImpl<$Res>;
  $Res call({TransactionHeaderModel transactionHeaderModel});

  $TransactionHeaderModelCopyWith<$Res> get transactionHeaderModel;
}

/// @nodoc
class _$VoidTransactionCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res>
    implements $VoidTransactionCopyWith<$Res> {
  _$VoidTransactionCopyWithImpl(
      VoidTransaction _value, $Res Function(VoidTransaction) _then)
      : super(_value, (v) => _then(v as VoidTransaction));

  @override
  VoidTransaction get _value => super._value as VoidTransaction;

  @override
  $Res call({
    Object transactionHeaderModel = freezed,
  }) {
    return _then(VoidTransaction(
      transactionHeaderModel == freezed
          ? _value.transactionHeaderModel
          : transactionHeaderModel as TransactionHeaderModel,
    ));
  }

  @override
  $TransactionHeaderModelCopyWith<$Res> get transactionHeaderModel {
    if (_value.transactionHeaderModel == null) {
      return null;
    }
    return $TransactionHeaderModelCopyWith<$Res>(_value.transactionHeaderModel,
        (value) {
      return _then(_value.copyWith(transactionHeaderModel: value));
    });
  }
}

/// @nodoc
class _$VoidTransaction implements VoidTransaction {
  const _$VoidTransaction(this.transactionHeaderModel)
      : assert(transactionHeaderModel != null);

  @override
  final TransactionHeaderModel transactionHeaderModel;

  @override
  String toString() {
    return 'ActivityEvent.voidTransaction(transactionHeaderModel: $transactionHeaderModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VoidTransaction &&
            (identical(other.transactionHeaderModel, transactionHeaderModel) ||
                const DeepCollectionEquality().equals(
                    other.transactionHeaderModel, transactionHeaderModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transactionHeaderModel);

  @JsonKey(ignore: true)
  @override
  $VoidTransactionCopyWith<VoidTransaction> get copyWith =>
      _$VoidTransactionCopyWithImpl<VoidTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllTransaction(BranchModel branchModel),
    @required TResult getFiltredTransaction(),
    @required TResult getTransaction(String transactionId),
    @required
        TResult addActivityFilter(TransactionFilterModel activityFilterModel),
    @required
        TResult voidTransaction(TransactionHeaderModel transactionHeaderModel),
    @required
        TResult discardTransaction(
            TransactionHeaderModel transactionHeaderModel),
  }) {
    assert(getAllTransaction != null);
    assert(getFiltredTransaction != null);
    assert(getTransaction != null);
    assert(addActivityFilter != null);
    assert(voidTransaction != null);
    assert(discardTransaction != null);
    return voidTransaction(transactionHeaderModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllTransaction(BranchModel branchModel),
    TResult getFiltredTransaction(),
    TResult getTransaction(String transactionId),
    TResult addActivityFilter(TransactionFilterModel activityFilterModel),
    TResult voidTransaction(TransactionHeaderModel transactionHeaderModel),
    TResult discardTransaction(TransactionHeaderModel transactionHeaderModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (voidTransaction != null) {
      return voidTransaction(transactionHeaderModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllTransaction(GetAllTransaction value),
    @required TResult getFiltredTransaction(GetFiltredTransaction value),
    @required TResult getTransaction(GetTransaction value),
    @required TResult addActivityFilter(AddActivityFilter value),
    @required TResult voidTransaction(VoidTransaction value),
    @required TResult discardTransaction(DiscardTransaction value),
  }) {
    assert(getAllTransaction != null);
    assert(getFiltredTransaction != null);
    assert(getTransaction != null);
    assert(addActivityFilter != null);
    assert(voidTransaction != null);
    assert(discardTransaction != null);
    return voidTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllTransaction(GetAllTransaction value),
    TResult getFiltredTransaction(GetFiltredTransaction value),
    TResult getTransaction(GetTransaction value),
    TResult addActivityFilter(AddActivityFilter value),
    TResult voidTransaction(VoidTransaction value),
    TResult discardTransaction(DiscardTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (voidTransaction != null) {
      return voidTransaction(this);
    }
    return orElse();
  }
}

abstract class VoidTransaction implements ActivityEvent {
  const factory VoidTransaction(TransactionHeaderModel transactionHeaderModel) =
      _$VoidTransaction;

  TransactionHeaderModel get transactionHeaderModel;
  @JsonKey(ignore: true)
  $VoidTransactionCopyWith<VoidTransaction> get copyWith;
}

/// @nodoc
abstract class $DiscardTransactionCopyWith<$Res> {
  factory $DiscardTransactionCopyWith(
          DiscardTransaction value, $Res Function(DiscardTransaction) then) =
      _$DiscardTransactionCopyWithImpl<$Res>;
  $Res call({TransactionHeaderModel transactionHeaderModel});

  $TransactionHeaderModelCopyWith<$Res> get transactionHeaderModel;
}

/// @nodoc
class _$DiscardTransactionCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res>
    implements $DiscardTransactionCopyWith<$Res> {
  _$DiscardTransactionCopyWithImpl(
      DiscardTransaction _value, $Res Function(DiscardTransaction) _then)
      : super(_value, (v) => _then(v as DiscardTransaction));

  @override
  DiscardTransaction get _value => super._value as DiscardTransaction;

  @override
  $Res call({
    Object transactionHeaderModel = freezed,
  }) {
    return _then(DiscardTransaction(
      transactionHeaderModel == freezed
          ? _value.transactionHeaderModel
          : transactionHeaderModel as TransactionHeaderModel,
    ));
  }

  @override
  $TransactionHeaderModelCopyWith<$Res> get transactionHeaderModel {
    if (_value.transactionHeaderModel == null) {
      return null;
    }
    return $TransactionHeaderModelCopyWith<$Res>(_value.transactionHeaderModel,
        (value) {
      return _then(_value.copyWith(transactionHeaderModel: value));
    });
  }
}

/// @nodoc
class _$DiscardTransaction implements DiscardTransaction {
  const _$DiscardTransaction(this.transactionHeaderModel)
      : assert(transactionHeaderModel != null);

  @override
  final TransactionHeaderModel transactionHeaderModel;

  @override
  String toString() {
    return 'ActivityEvent.discardTransaction(transactionHeaderModel: $transactionHeaderModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DiscardTransaction &&
            (identical(other.transactionHeaderModel, transactionHeaderModel) ||
                const DeepCollectionEquality().equals(
                    other.transactionHeaderModel, transactionHeaderModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transactionHeaderModel);

  @JsonKey(ignore: true)
  @override
  $DiscardTransactionCopyWith<DiscardTransaction> get copyWith =>
      _$DiscardTransactionCopyWithImpl<DiscardTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getAllTransaction(BranchModel branchModel),
    @required TResult getFiltredTransaction(),
    @required TResult getTransaction(String transactionId),
    @required
        TResult addActivityFilter(TransactionFilterModel activityFilterModel),
    @required
        TResult voidTransaction(TransactionHeaderModel transactionHeaderModel),
    @required
        TResult discardTransaction(
            TransactionHeaderModel transactionHeaderModel),
  }) {
    assert(getAllTransaction != null);
    assert(getFiltredTransaction != null);
    assert(getTransaction != null);
    assert(addActivityFilter != null);
    assert(voidTransaction != null);
    assert(discardTransaction != null);
    return discardTransaction(transactionHeaderModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getAllTransaction(BranchModel branchModel),
    TResult getFiltredTransaction(),
    TResult getTransaction(String transactionId),
    TResult addActivityFilter(TransactionFilterModel activityFilterModel),
    TResult voidTransaction(TransactionHeaderModel transactionHeaderModel),
    TResult discardTransaction(TransactionHeaderModel transactionHeaderModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (discardTransaction != null) {
      return discardTransaction(transactionHeaderModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getAllTransaction(GetAllTransaction value),
    @required TResult getFiltredTransaction(GetFiltredTransaction value),
    @required TResult getTransaction(GetTransaction value),
    @required TResult addActivityFilter(AddActivityFilter value),
    @required TResult voidTransaction(VoidTransaction value),
    @required TResult discardTransaction(DiscardTransaction value),
  }) {
    assert(getAllTransaction != null);
    assert(getFiltredTransaction != null);
    assert(getTransaction != null);
    assert(addActivityFilter != null);
    assert(voidTransaction != null);
    assert(discardTransaction != null);
    return discardTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getAllTransaction(GetAllTransaction value),
    TResult getFiltredTransaction(GetFiltredTransaction value),
    TResult getTransaction(GetTransaction value),
    TResult addActivityFilter(AddActivityFilter value),
    TResult voidTransaction(VoidTransaction value),
    TResult discardTransaction(DiscardTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (discardTransaction != null) {
      return discardTransaction(this);
    }
    return orElse();
  }
}

abstract class DiscardTransaction implements ActivityEvent {
  const factory DiscardTransaction(
      TransactionHeaderModel transactionHeaderModel) = _$DiscardTransaction;

  TransactionHeaderModel get transactionHeaderModel;
  @JsonKey(ignore: true)
  $DiscardTransactionCopyWith<DiscardTransaction> get copyWith;
}

/// @nodoc
class _$ActivityStateTearOff {
  const _$ActivityStateTearOff();

// ignore: unused_element
  _ActivityState call(
      {@required List<TransactionHeaderModel> listTransaction,
      @required List<TransactionHeaderModel> listTransactionFiltered,
      @required TransactionHeaderModel selectedTransaction,
      @required TransactionFilterModel activityFilterModel,
      @required bool isLoading,
      @required bool isLoaded,
      @required String errorMessage}) {
    return _ActivityState(
      listTransaction: listTransaction,
      listTransactionFiltered: listTransactionFiltered,
      selectedTransaction: selectedTransaction,
      activityFilterModel: activityFilterModel,
      isLoading: isLoading,
      isLoaded: isLoaded,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ActivityState = _$ActivityStateTearOff();

/// @nodoc
mixin _$ActivityState {
  List<TransactionHeaderModel> get listTransaction;
  List<TransactionHeaderModel> get listTransactionFiltered;
  TransactionHeaderModel get selectedTransaction;
  TransactionFilterModel get activityFilterModel;
  bool get isLoading;
  bool get isLoaded;
  String get errorMessage;

  @JsonKey(ignore: true)
  $ActivityStateCopyWith<ActivityState> get copyWith;
}

/// @nodoc
abstract class $ActivityStateCopyWith<$Res> {
  factory $ActivityStateCopyWith(
          ActivityState value, $Res Function(ActivityState) then) =
      _$ActivityStateCopyWithImpl<$Res>;
  $Res call(
      {List<TransactionHeaderModel> listTransaction,
      List<TransactionHeaderModel> listTransactionFiltered,
      TransactionHeaderModel selectedTransaction,
      TransactionFilterModel activityFilterModel,
      bool isLoading,
      bool isLoaded,
      String errorMessage});

  $TransactionHeaderModelCopyWith<$Res> get selectedTransaction;
  $TransactionFilterModelCopyWith<$Res> get activityFilterModel;
}

/// @nodoc
class _$ActivityStateCopyWithImpl<$Res>
    implements $ActivityStateCopyWith<$Res> {
  _$ActivityStateCopyWithImpl(this._value, this._then);

  final ActivityState _value;
  // ignore: unused_field
  final $Res Function(ActivityState) _then;

  @override
  $Res call({
    Object listTransaction = freezed,
    Object listTransactionFiltered = freezed,
    Object selectedTransaction = freezed,
    Object activityFilterModel = freezed,
    Object isLoading = freezed,
    Object isLoaded = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      listTransaction: listTransaction == freezed
          ? _value.listTransaction
          : listTransaction as List<TransactionHeaderModel>,
      listTransactionFiltered: listTransactionFiltered == freezed
          ? _value.listTransactionFiltered
          : listTransactionFiltered as List<TransactionHeaderModel>,
      selectedTransaction: selectedTransaction == freezed
          ? _value.selectedTransaction
          : selectedTransaction as TransactionHeaderModel,
      activityFilterModel: activityFilterModel == freezed
          ? _value.activityFilterModel
          : activityFilterModel as TransactionFilterModel,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isLoaded: isLoaded == freezed ? _value.isLoaded : isLoaded as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }

  @override
  $TransactionHeaderModelCopyWith<$Res> get selectedTransaction {
    if (_value.selectedTransaction == null) {
      return null;
    }
    return $TransactionHeaderModelCopyWith<$Res>(_value.selectedTransaction,
        (value) {
      return _then(_value.copyWith(selectedTransaction: value));
    });
  }

  @override
  $TransactionFilterModelCopyWith<$Res> get activityFilterModel {
    if (_value.activityFilterModel == null) {
      return null;
    }
    return $TransactionFilterModelCopyWith<$Res>(_value.activityFilterModel,
        (value) {
      return _then(_value.copyWith(activityFilterModel: value));
    });
  }
}

/// @nodoc
abstract class _$ActivityStateCopyWith<$Res>
    implements $ActivityStateCopyWith<$Res> {
  factory _$ActivityStateCopyWith(
          _ActivityState value, $Res Function(_ActivityState) then) =
      __$ActivityStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<TransactionHeaderModel> listTransaction,
      List<TransactionHeaderModel> listTransactionFiltered,
      TransactionHeaderModel selectedTransaction,
      TransactionFilterModel activityFilterModel,
      bool isLoading,
      bool isLoaded,
      String errorMessage});

  @override
  $TransactionHeaderModelCopyWith<$Res> get selectedTransaction;
  @override
  $TransactionFilterModelCopyWith<$Res> get activityFilterModel;
}

/// @nodoc
class __$ActivityStateCopyWithImpl<$Res>
    extends _$ActivityStateCopyWithImpl<$Res>
    implements _$ActivityStateCopyWith<$Res> {
  __$ActivityStateCopyWithImpl(
      _ActivityState _value, $Res Function(_ActivityState) _then)
      : super(_value, (v) => _then(v as _ActivityState));

  @override
  _ActivityState get _value => super._value as _ActivityState;

  @override
  $Res call({
    Object listTransaction = freezed,
    Object listTransactionFiltered = freezed,
    Object selectedTransaction = freezed,
    Object activityFilterModel = freezed,
    Object isLoading = freezed,
    Object isLoaded = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_ActivityState(
      listTransaction: listTransaction == freezed
          ? _value.listTransaction
          : listTransaction as List<TransactionHeaderModel>,
      listTransactionFiltered: listTransactionFiltered == freezed
          ? _value.listTransactionFiltered
          : listTransactionFiltered as List<TransactionHeaderModel>,
      selectedTransaction: selectedTransaction == freezed
          ? _value.selectedTransaction
          : selectedTransaction as TransactionHeaderModel,
      activityFilterModel: activityFilterModel == freezed
          ? _value.activityFilterModel
          : activityFilterModel as TransactionFilterModel,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      isLoaded: isLoaded == freezed ? _value.isLoaded : isLoaded as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$_ActivityState implements _ActivityState {
  const _$_ActivityState(
      {@required this.listTransaction,
      @required this.listTransactionFiltered,
      @required this.selectedTransaction,
      @required this.activityFilterModel,
      @required this.isLoading,
      @required this.isLoaded,
      @required this.errorMessage})
      : assert(listTransaction != null),
        assert(listTransactionFiltered != null),
        assert(selectedTransaction != null),
        assert(activityFilterModel != null),
        assert(isLoading != null),
        assert(isLoaded != null),
        assert(errorMessage != null);

  @override
  final List<TransactionHeaderModel> listTransaction;
  @override
  final List<TransactionHeaderModel> listTransactionFiltered;
  @override
  final TransactionHeaderModel selectedTransaction;
  @override
  final TransactionFilterModel activityFilterModel;
  @override
  final bool isLoading;
  @override
  final bool isLoaded;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ActivityState(listTransaction: $listTransaction, listTransactionFiltered: $listTransactionFiltered, selectedTransaction: $selectedTransaction, activityFilterModel: $activityFilterModel, isLoading: $isLoading, isLoaded: $isLoaded, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActivityState &&
            (identical(other.listTransaction, listTransaction) ||
                const DeepCollectionEquality()
                    .equals(other.listTransaction, listTransaction)) &&
            (identical(
                    other.listTransactionFiltered, listTransactionFiltered) ||
                const DeepCollectionEquality().equals(
                    other.listTransactionFiltered, listTransactionFiltered)) &&
            (identical(other.selectedTransaction, selectedTransaction) ||
                const DeepCollectionEquality()
                    .equals(other.selectedTransaction, selectedTransaction)) &&
            (identical(other.activityFilterModel, activityFilterModel) ||
                const DeepCollectionEquality()
                    .equals(other.activityFilterModel, activityFilterModel)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isLoaded, isLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.isLoaded, isLoaded)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listTransaction) ^
      const DeepCollectionEquality().hash(listTransactionFiltered) ^
      const DeepCollectionEquality().hash(selectedTransaction) ^
      const DeepCollectionEquality().hash(activityFilterModel) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isLoaded) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$ActivityStateCopyWith<_ActivityState> get copyWith =>
      __$ActivityStateCopyWithImpl<_ActivityState>(this, _$identity);
}

abstract class _ActivityState implements ActivityState {
  const factory _ActivityState(
      {@required List<TransactionHeaderModel> listTransaction,
      @required List<TransactionHeaderModel> listTransactionFiltered,
      @required TransactionHeaderModel selectedTransaction,
      @required TransactionFilterModel activityFilterModel,
      @required bool isLoading,
      @required bool isLoaded,
      @required String errorMessage}) = _$_ActivityState;

  @override
  List<TransactionHeaderModel> get listTransaction;
  @override
  List<TransactionHeaderModel> get listTransactionFiltered;
  @override
  TransactionHeaderModel get selectedTransaction;
  @override
  TransactionFilterModel get activityFilterModel;
  @override
  bool get isLoading;
  @override
  bool get isLoaded;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$ActivityStateCopyWith<_ActivityState> get copyWith;
}
