// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TransactionEventTearOff {
  const _$TransactionEventTearOff();

// ignore: unused_element
  AddTransaction addTransaction(
      String cashier,
      String branch,
      String customerName,
      DateTime transactionDate,
      double subtotal,
      double discount,
      double total,
      String paymentMethod,
      double cashAmount,
      String createdBy,
      List<BasketModel> listBasketModel) {
    return AddTransaction(
      cashier,
      branch,
      customerName,
      transactionDate,
      subtotal,
      discount,
      total,
      paymentMethod,
      cashAmount,
      createdBy,
      listBasketModel,
    );
  }

// ignore: unused_element
  UpdateTransaction updateTransaction(
      String transactionId,
      String cashier,
      String branch,
      String customerName,
      DateTime transactionDate,
      double subtotal,
      double discount,
      double total,
      String paymentMethod,
      double cashAmount,
      String createdBy,
      List<BasketModel> listBasketModel) {
    return UpdateTransaction(
      transactionId,
      cashier,
      branch,
      customerName,
      transactionDate,
      subtotal,
      discount,
      total,
      paymentMethod,
      cashAmount,
      createdBy,
      listBasketModel,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionEvent = _$TransactionEventTearOff();

/// @nodoc
mixin _$TransactionEvent {
  String get cashier;
  String get branch;
  String get customerName;
  DateTime get transactionDate;
  double get subtotal;
  double get discount;
  double get total;
  String get paymentMethod;
  double get cashAmount;
  String get createdBy;
  List<BasketModel> get listBasketModel;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult addTransaction(
            String cashier,
            String branch,
            String customerName,
            DateTime transactionDate,
            double subtotal,
            double discount,
            double total,
            String paymentMethod,
            double cashAmount,
            String createdBy,
            List<BasketModel> listBasketModel),
    @required
        TResult updateTransaction(
            String transactionId,
            String cashier,
            String branch,
            String customerName,
            DateTime transactionDate,
            double subtotal,
            double discount,
            double total,
            String paymentMethod,
            double cashAmount,
            String createdBy,
            List<BasketModel> listBasketModel),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addTransaction(
        String cashier,
        String branch,
        String customerName,
        DateTime transactionDate,
        double subtotal,
        double discount,
        double total,
        String paymentMethod,
        double cashAmount,
        String createdBy,
        List<BasketModel> listBasketModel),
    TResult updateTransaction(
        String transactionId,
        String cashier,
        String branch,
        String customerName,
        DateTime transactionDate,
        double subtotal,
        double discount,
        double total,
        String paymentMethod,
        double cashAmount,
        String createdBy,
        List<BasketModel> listBasketModel),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addTransaction(AddTransaction value),
    @required TResult updateTransaction(UpdateTransaction value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addTransaction(AddTransaction value),
    TResult updateTransaction(UpdateTransaction value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $TransactionEventCopyWith<TransactionEvent> get copyWith;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res>;
  $Res call(
      {String cashier,
      String branch,
      String customerName,
      DateTime transactionDate,
      double subtotal,
      double discount,
      double total,
      String paymentMethod,
      double cashAmount,
      String createdBy,
      List<BasketModel> listBasketModel});
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  final TransactionEvent _value;
  // ignore: unused_field
  final $Res Function(TransactionEvent) _then;

  @override
  $Res call({
    Object cashier = freezed,
    Object branch = freezed,
    Object customerName = freezed,
    Object transactionDate = freezed,
    Object subtotal = freezed,
    Object discount = freezed,
    Object total = freezed,
    Object paymentMethod = freezed,
    Object cashAmount = freezed,
    Object createdBy = freezed,
    Object listBasketModel = freezed,
  }) {
    return _then(_value.copyWith(
      cashier: cashier == freezed ? _value.cashier : cashier as String,
      branch: branch == freezed ? _value.branch : branch as String,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName as String,
      transactionDate: transactionDate == freezed
          ? _value.transactionDate
          : transactionDate as DateTime,
      subtotal: subtotal == freezed ? _value.subtotal : subtotal as double,
      discount: discount == freezed ? _value.discount : discount as double,
      total: total == freezed ? _value.total : total as double,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod as String,
      cashAmount:
          cashAmount == freezed ? _value.cashAmount : cashAmount as double,
      createdBy: createdBy == freezed ? _value.createdBy : createdBy as String,
      listBasketModel: listBasketModel == freezed
          ? _value.listBasketModel
          : listBasketModel as List<BasketModel>,
    ));
  }
}

/// @nodoc
abstract class $AddTransactionCopyWith<$Res>
    implements $TransactionEventCopyWith<$Res> {
  factory $AddTransactionCopyWith(
          AddTransaction value, $Res Function(AddTransaction) then) =
      _$AddTransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String cashier,
      String branch,
      String customerName,
      DateTime transactionDate,
      double subtotal,
      double discount,
      double total,
      String paymentMethod,
      double cashAmount,
      String createdBy,
      List<BasketModel> listBasketModel});
}

/// @nodoc
class _$AddTransactionCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements $AddTransactionCopyWith<$Res> {
  _$AddTransactionCopyWithImpl(
      AddTransaction _value, $Res Function(AddTransaction) _then)
      : super(_value, (v) => _then(v as AddTransaction));

  @override
  AddTransaction get _value => super._value as AddTransaction;

  @override
  $Res call({
    Object cashier = freezed,
    Object branch = freezed,
    Object customerName = freezed,
    Object transactionDate = freezed,
    Object subtotal = freezed,
    Object discount = freezed,
    Object total = freezed,
    Object paymentMethod = freezed,
    Object cashAmount = freezed,
    Object createdBy = freezed,
    Object listBasketModel = freezed,
  }) {
    return _then(AddTransaction(
      cashier == freezed ? _value.cashier : cashier as String,
      branch == freezed ? _value.branch : branch as String,
      customerName == freezed ? _value.customerName : customerName as String,
      transactionDate == freezed
          ? _value.transactionDate
          : transactionDate as DateTime,
      subtotal == freezed ? _value.subtotal : subtotal as double,
      discount == freezed ? _value.discount : discount as double,
      total == freezed ? _value.total : total as double,
      paymentMethod == freezed ? _value.paymentMethod : paymentMethod as String,
      cashAmount == freezed ? _value.cashAmount : cashAmount as double,
      createdBy == freezed ? _value.createdBy : createdBy as String,
      listBasketModel == freezed
          ? _value.listBasketModel
          : listBasketModel as List<BasketModel>,
    ));
  }
}

/// @nodoc
class _$AddTransaction implements AddTransaction {
  const _$AddTransaction(
      this.cashier,
      this.branch,
      this.customerName,
      this.transactionDate,
      this.subtotal,
      this.discount,
      this.total,
      this.paymentMethod,
      this.cashAmount,
      this.createdBy,
      this.listBasketModel)
      : assert(cashier != null),
        assert(branch != null),
        assert(customerName != null),
        assert(transactionDate != null),
        assert(subtotal != null),
        assert(discount != null),
        assert(total != null),
        assert(paymentMethod != null),
        assert(cashAmount != null),
        assert(createdBy != null),
        assert(listBasketModel != null);

  @override
  final String cashier;
  @override
  final String branch;
  @override
  final String customerName;
  @override
  final DateTime transactionDate;
  @override
  final double subtotal;
  @override
  final double discount;
  @override
  final double total;
  @override
  final String paymentMethod;
  @override
  final double cashAmount;
  @override
  final String createdBy;
  @override
  final List<BasketModel> listBasketModel;

  @override
  String toString() {
    return 'TransactionEvent.addTransaction(cashier: $cashier, branch: $branch, customerName: $customerName, transactionDate: $transactionDate, subtotal: $subtotal, discount: $discount, total: $total, paymentMethod: $paymentMethod, cashAmount: $cashAmount, createdBy: $createdBy, listBasketModel: $listBasketModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddTransaction &&
            (identical(other.cashier, cashier) ||
                const DeepCollectionEquality()
                    .equals(other.cashier, cashier)) &&
            (identical(other.branch, branch) ||
                const DeepCollectionEquality().equals(other.branch, branch)) &&
            (identical(other.customerName, customerName) ||
                const DeepCollectionEquality()
                    .equals(other.customerName, customerName)) &&
            (identical(other.transactionDate, transactionDate) ||
                const DeepCollectionEquality()
                    .equals(other.transactionDate, transactionDate)) &&
            (identical(other.subtotal, subtotal) ||
                const DeepCollectionEquality()
                    .equals(other.subtotal, subtotal)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.paymentMethod, paymentMethod) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethod, paymentMethod)) &&
            (identical(other.cashAmount, cashAmount) ||
                const DeepCollectionEquality()
                    .equals(other.cashAmount, cashAmount)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.listBasketModel, listBasketModel) ||
                const DeepCollectionEquality()
                    .equals(other.listBasketModel, listBasketModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cashier) ^
      const DeepCollectionEquality().hash(branch) ^
      const DeepCollectionEquality().hash(customerName) ^
      const DeepCollectionEquality().hash(transactionDate) ^
      const DeepCollectionEquality().hash(subtotal) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(paymentMethod) ^
      const DeepCollectionEquality().hash(cashAmount) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(listBasketModel);

  @JsonKey(ignore: true)
  @override
  $AddTransactionCopyWith<AddTransaction> get copyWith =>
      _$AddTransactionCopyWithImpl<AddTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult addTransaction(
            String cashier,
            String branch,
            String customerName,
            DateTime transactionDate,
            double subtotal,
            double discount,
            double total,
            String paymentMethod,
            double cashAmount,
            String createdBy,
            List<BasketModel> listBasketModel),
    @required
        TResult updateTransaction(
            String transactionId,
            String cashier,
            String branch,
            String customerName,
            DateTime transactionDate,
            double subtotal,
            double discount,
            double total,
            String paymentMethod,
            double cashAmount,
            String createdBy,
            List<BasketModel> listBasketModel),
  }) {
    assert(addTransaction != null);
    assert(updateTransaction != null);
    return addTransaction(
        cashier,
        branch,
        customerName,
        transactionDate,
        subtotal,
        discount,
        total,
        paymentMethod,
        cashAmount,
        createdBy,
        listBasketModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addTransaction(
        String cashier,
        String branch,
        String customerName,
        DateTime transactionDate,
        double subtotal,
        double discount,
        double total,
        String paymentMethod,
        double cashAmount,
        String createdBy,
        List<BasketModel> listBasketModel),
    TResult updateTransaction(
        String transactionId,
        String cashier,
        String branch,
        String customerName,
        DateTime transactionDate,
        double subtotal,
        double discount,
        double total,
        String paymentMethod,
        double cashAmount,
        String createdBy,
        List<BasketModel> listBasketModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addTransaction != null) {
      return addTransaction(
          cashier,
          branch,
          customerName,
          transactionDate,
          subtotal,
          discount,
          total,
          paymentMethod,
          cashAmount,
          createdBy,
          listBasketModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addTransaction(AddTransaction value),
    @required TResult updateTransaction(UpdateTransaction value),
  }) {
    assert(addTransaction != null);
    assert(updateTransaction != null);
    return addTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addTransaction(AddTransaction value),
    TResult updateTransaction(UpdateTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addTransaction != null) {
      return addTransaction(this);
    }
    return orElse();
  }
}

abstract class AddTransaction implements TransactionEvent {
  const factory AddTransaction(
      String cashier,
      String branch,
      String customerName,
      DateTime transactionDate,
      double subtotal,
      double discount,
      double total,
      String paymentMethod,
      double cashAmount,
      String createdBy,
      List<BasketModel> listBasketModel) = _$AddTransaction;

  @override
  String get cashier;
  @override
  String get branch;
  @override
  String get customerName;
  @override
  DateTime get transactionDate;
  @override
  double get subtotal;
  @override
  double get discount;
  @override
  double get total;
  @override
  String get paymentMethod;
  @override
  double get cashAmount;
  @override
  String get createdBy;
  @override
  List<BasketModel> get listBasketModel;
  @override
  @JsonKey(ignore: true)
  $AddTransactionCopyWith<AddTransaction> get copyWith;
}

/// @nodoc
abstract class $UpdateTransactionCopyWith<$Res>
    implements $TransactionEventCopyWith<$Res> {
  factory $UpdateTransactionCopyWith(
          UpdateTransaction value, $Res Function(UpdateTransaction) then) =
      _$UpdateTransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String transactionId,
      String cashier,
      String branch,
      String customerName,
      DateTime transactionDate,
      double subtotal,
      double discount,
      double total,
      String paymentMethod,
      double cashAmount,
      String createdBy,
      List<BasketModel> listBasketModel});
}

/// @nodoc
class _$UpdateTransactionCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res>
    implements $UpdateTransactionCopyWith<$Res> {
  _$UpdateTransactionCopyWithImpl(
      UpdateTransaction _value, $Res Function(UpdateTransaction) _then)
      : super(_value, (v) => _then(v as UpdateTransaction));

  @override
  UpdateTransaction get _value => super._value as UpdateTransaction;

  @override
  $Res call({
    Object transactionId = freezed,
    Object cashier = freezed,
    Object branch = freezed,
    Object customerName = freezed,
    Object transactionDate = freezed,
    Object subtotal = freezed,
    Object discount = freezed,
    Object total = freezed,
    Object paymentMethod = freezed,
    Object cashAmount = freezed,
    Object createdBy = freezed,
    Object listBasketModel = freezed,
  }) {
    return _then(UpdateTransaction(
      transactionId == freezed ? _value.transactionId : transactionId as String,
      cashier == freezed ? _value.cashier : cashier as String,
      branch == freezed ? _value.branch : branch as String,
      customerName == freezed ? _value.customerName : customerName as String,
      transactionDate == freezed
          ? _value.transactionDate
          : transactionDate as DateTime,
      subtotal == freezed ? _value.subtotal : subtotal as double,
      discount == freezed ? _value.discount : discount as double,
      total == freezed ? _value.total : total as double,
      paymentMethod == freezed ? _value.paymentMethod : paymentMethod as String,
      cashAmount == freezed ? _value.cashAmount : cashAmount as double,
      createdBy == freezed ? _value.createdBy : createdBy as String,
      listBasketModel == freezed
          ? _value.listBasketModel
          : listBasketModel as List<BasketModel>,
    ));
  }
}

/// @nodoc
class _$UpdateTransaction implements UpdateTransaction {
  const _$UpdateTransaction(
      this.transactionId,
      this.cashier,
      this.branch,
      this.customerName,
      this.transactionDate,
      this.subtotal,
      this.discount,
      this.total,
      this.paymentMethod,
      this.cashAmount,
      this.createdBy,
      this.listBasketModel)
      : assert(transactionId != null),
        assert(cashier != null),
        assert(branch != null),
        assert(customerName != null),
        assert(transactionDate != null),
        assert(subtotal != null),
        assert(discount != null),
        assert(total != null),
        assert(paymentMethod != null),
        assert(cashAmount != null),
        assert(createdBy != null),
        assert(listBasketModel != null);

  @override
  final String transactionId;
  @override
  final String cashier;
  @override
  final String branch;
  @override
  final String customerName;
  @override
  final DateTime transactionDate;
  @override
  final double subtotal;
  @override
  final double discount;
  @override
  final double total;
  @override
  final String paymentMethod;
  @override
  final double cashAmount;
  @override
  final String createdBy;
  @override
  final List<BasketModel> listBasketModel;

  @override
  String toString() {
    return 'TransactionEvent.updateTransaction(transactionId: $transactionId, cashier: $cashier, branch: $branch, customerName: $customerName, transactionDate: $transactionDate, subtotal: $subtotal, discount: $discount, total: $total, paymentMethod: $paymentMethod, cashAmount: $cashAmount, createdBy: $createdBy, listBasketModel: $listBasketModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateTransaction &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)) &&
            (identical(other.cashier, cashier) ||
                const DeepCollectionEquality()
                    .equals(other.cashier, cashier)) &&
            (identical(other.branch, branch) ||
                const DeepCollectionEquality().equals(other.branch, branch)) &&
            (identical(other.customerName, customerName) ||
                const DeepCollectionEquality()
                    .equals(other.customerName, customerName)) &&
            (identical(other.transactionDate, transactionDate) ||
                const DeepCollectionEquality()
                    .equals(other.transactionDate, transactionDate)) &&
            (identical(other.subtotal, subtotal) ||
                const DeepCollectionEquality()
                    .equals(other.subtotal, subtotal)) &&
            (identical(other.discount, discount) ||
                const DeepCollectionEquality()
                    .equals(other.discount, discount)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.paymentMethod, paymentMethod) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethod, paymentMethod)) &&
            (identical(other.cashAmount, cashAmount) ||
                const DeepCollectionEquality()
                    .equals(other.cashAmount, cashAmount)) &&
            (identical(other.createdBy, createdBy) ||
                const DeepCollectionEquality()
                    .equals(other.createdBy, createdBy)) &&
            (identical(other.listBasketModel, listBasketModel) ||
                const DeepCollectionEquality()
                    .equals(other.listBasketModel, listBasketModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(cashier) ^
      const DeepCollectionEquality().hash(branch) ^
      const DeepCollectionEquality().hash(customerName) ^
      const DeepCollectionEquality().hash(transactionDate) ^
      const DeepCollectionEquality().hash(subtotal) ^
      const DeepCollectionEquality().hash(discount) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(paymentMethod) ^
      const DeepCollectionEquality().hash(cashAmount) ^
      const DeepCollectionEquality().hash(createdBy) ^
      const DeepCollectionEquality().hash(listBasketModel);

  @JsonKey(ignore: true)
  @override
  $UpdateTransactionCopyWith<UpdateTransaction> get copyWith =>
      _$UpdateTransactionCopyWithImpl<UpdateTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult addTransaction(
            String cashier,
            String branch,
            String customerName,
            DateTime transactionDate,
            double subtotal,
            double discount,
            double total,
            String paymentMethod,
            double cashAmount,
            String createdBy,
            List<BasketModel> listBasketModel),
    @required
        TResult updateTransaction(
            String transactionId,
            String cashier,
            String branch,
            String customerName,
            DateTime transactionDate,
            double subtotal,
            double discount,
            double total,
            String paymentMethod,
            double cashAmount,
            String createdBy,
            List<BasketModel> listBasketModel),
  }) {
    assert(addTransaction != null);
    assert(updateTransaction != null);
    return updateTransaction(
        transactionId,
        cashier,
        branch,
        customerName,
        transactionDate,
        subtotal,
        discount,
        total,
        paymentMethod,
        cashAmount,
        createdBy,
        listBasketModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult addTransaction(
        String cashier,
        String branch,
        String customerName,
        DateTime transactionDate,
        double subtotal,
        double discount,
        double total,
        String paymentMethod,
        double cashAmount,
        String createdBy,
        List<BasketModel> listBasketModel),
    TResult updateTransaction(
        String transactionId,
        String cashier,
        String branch,
        String customerName,
        DateTime transactionDate,
        double subtotal,
        double discount,
        double total,
        String paymentMethod,
        double cashAmount,
        String createdBy,
        List<BasketModel> listBasketModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateTransaction != null) {
      return updateTransaction(
          transactionId,
          cashier,
          branch,
          customerName,
          transactionDate,
          subtotal,
          discount,
          total,
          paymentMethod,
          cashAmount,
          createdBy,
          listBasketModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult addTransaction(AddTransaction value),
    @required TResult updateTransaction(UpdateTransaction value),
  }) {
    assert(addTransaction != null);
    assert(updateTransaction != null);
    return updateTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult addTransaction(AddTransaction value),
    TResult updateTransaction(UpdateTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateTransaction != null) {
      return updateTransaction(this);
    }
    return orElse();
  }
}

abstract class UpdateTransaction implements TransactionEvent {
  const factory UpdateTransaction(
      String transactionId,
      String cashier,
      String branch,
      String customerName,
      DateTime transactionDate,
      double subtotal,
      double discount,
      double total,
      String paymentMethod,
      double cashAmount,
      String createdBy,
      List<BasketModel> listBasketModel) = _$UpdateTransaction;

  String get transactionId;
  @override
  String get cashier;
  @override
  String get branch;
  @override
  String get customerName;
  @override
  DateTime get transactionDate;
  @override
  double get subtotal;
  @override
  double get discount;
  @override
  double get total;
  @override
  String get paymentMethod;
  @override
  double get cashAmount;
  @override
  String get createdBy;
  @override
  List<BasketModel> get listBasketModel;
  @override
  @JsonKey(ignore: true)
  $UpdateTransactionCopyWith<UpdateTransaction> get copyWith;
}

/// @nodoc
class _$TransactionStateTearOff {
  const _$TransactionStateTearOff();

// ignore: unused_element
  _TransactionState call(
      {@required TransactionHeaderModel transactionHeaderModel,
      @required String referenceNumber,
      @required bool isLoading,
      @required String errorMessage}) {
    return _TransactionState(
      transactionHeaderModel: transactionHeaderModel,
      referenceNumber: referenceNumber,
      isLoading: isLoading,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TransactionState = _$TransactionStateTearOff();

/// @nodoc
mixin _$TransactionState {
  TransactionHeaderModel get transactionHeaderModel;
  String get referenceNumber;
  bool get isLoading;
  String get errorMessage;

  @JsonKey(ignore: true)
  $TransactionStateCopyWith<TransactionState> get copyWith;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res>;
  $Res call(
      {TransactionHeaderModel transactionHeaderModel,
      String referenceNumber,
      bool isLoading,
      String errorMessage});

  $TransactionHeaderModelCopyWith<$Res> get transactionHeaderModel;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

  final TransactionState _value;
  // ignore: unused_field
  final $Res Function(TransactionState) _then;

  @override
  $Res call({
    Object transactionHeaderModel = freezed,
    Object referenceNumber = freezed,
    Object isLoading = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      transactionHeaderModel: transactionHeaderModel == freezed
          ? _value.transactionHeaderModel
          : transactionHeaderModel as TransactionHeaderModel,
      referenceNumber: referenceNumber == freezed
          ? _value.referenceNumber
          : referenceNumber as String,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
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
abstract class _$TransactionStateCopyWith<$Res>
    implements $TransactionStateCopyWith<$Res> {
  factory _$TransactionStateCopyWith(
          _TransactionState value, $Res Function(_TransactionState) then) =
      __$TransactionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TransactionHeaderModel transactionHeaderModel,
      String referenceNumber,
      bool isLoading,
      String errorMessage});

  @override
  $TransactionHeaderModelCopyWith<$Res> get transactionHeaderModel;
}

/// @nodoc
class __$TransactionStateCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res>
    implements _$TransactionStateCopyWith<$Res> {
  __$TransactionStateCopyWithImpl(
      _TransactionState _value, $Res Function(_TransactionState) _then)
      : super(_value, (v) => _then(v as _TransactionState));

  @override
  _TransactionState get _value => super._value as _TransactionState;

  @override
  $Res call({
    Object transactionHeaderModel = freezed,
    Object referenceNumber = freezed,
    Object isLoading = freezed,
    Object errorMessage = freezed,
  }) {
    return _then(_TransactionState(
      transactionHeaderModel: transactionHeaderModel == freezed
          ? _value.transactionHeaderModel
          : transactionHeaderModel as TransactionHeaderModel,
      referenceNumber: referenceNumber == freezed
          ? _value.referenceNumber
          : referenceNumber as String,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$_TransactionState implements _TransactionState {
  const _$_TransactionState(
      {@required this.transactionHeaderModel,
      @required this.referenceNumber,
      @required this.isLoading,
      @required this.errorMessage})
      : assert(transactionHeaderModel != null),
        assert(referenceNumber != null),
        assert(isLoading != null),
        assert(errorMessage != null);

  @override
  final TransactionHeaderModel transactionHeaderModel;
  @override
  final String referenceNumber;
  @override
  final bool isLoading;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'TransactionState(transactionHeaderModel: $transactionHeaderModel, referenceNumber: $referenceNumber, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionState &&
            (identical(other.transactionHeaderModel, transactionHeaderModel) ||
                const DeepCollectionEquality().equals(
                    other.transactionHeaderModel, transactionHeaderModel)) &&
            (identical(other.referenceNumber, referenceNumber) ||
                const DeepCollectionEquality()
                    .equals(other.referenceNumber, referenceNumber)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(transactionHeaderModel) ^
      const DeepCollectionEquality().hash(referenceNumber) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$TransactionStateCopyWith<_TransactionState> get copyWith =>
      __$TransactionStateCopyWithImpl<_TransactionState>(this, _$identity);
}

abstract class _TransactionState implements TransactionState {
  const factory _TransactionState(
      {@required TransactionHeaderModel transactionHeaderModel,
      @required String referenceNumber,
      @required bool isLoading,
      @required String errorMessage}) = _$_TransactionState;

  @override
  TransactionHeaderModel get transactionHeaderModel;
  @override
  String get referenceNumber;
  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$TransactionStateCopyWith<_TransactionState> get copyWith;
}
