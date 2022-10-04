// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PaymentEventTearOff {
  const _$PaymentEventTearOff();

// ignore: unused_element
  ClearAll clearAll() {
    return const ClearAll();
  }

// ignore: unused_element
  AddToBasket addToBasket(ProductModel productModel) {
    return AddToBasket(
      productModel,
    );
  }

// ignore: unused_element
  SetSelectedBasket setSelectedBasket(BasketModel basketModel) {
    return SetSelectedBasket(
      basketModel,
    );
  }

// ignore: unused_element
  ChangeQuantity changeQuantity(BasketModel basketModel) {
    return ChangeQuantity(
      basketModel,
    );
  }

// ignore: unused_element
  RemoveFromBasket removeFromBasket(ProductModel productModel) {
    return RemoveFromBasket(
      productModel,
    );
  }

// ignore: unused_element
  SetBranch setBranch(BranchModel currentBranchModel) {
    return SetBranch(
      currentBranchModel,
    );
  }

// ignore: unused_element
  SetCustomerData setCustomerData(String customerName, String username) {
    return SetCustomerData(
      customerName,
      username,
    );
  }

// ignore: unused_element
  ChangeCashAmount changeCashAmount(double cashAmount) {
    return ChangeCashAmount(
      cashAmount,
    );
  }

// ignore: unused_element
  ChangePaymentMethod changePaymentMethod(String paymentMethod) {
    return ChangePaymentMethod(
      paymentMethod,
    );
  }

// ignore: unused_element
  GetListCashier getListCashier() {
    return const GetListCashier();
  }

// ignore: unused_element
  SetCashier setCashier(String cashierName) {
    return SetCashier(
      cashierName,
    );
  }

// ignore: unused_element
  SaveTransaction saveTransaction(String username) {
    return SaveTransaction(
      username,
    );
  }

// ignore: unused_element
  LoadTransaction loadTransaction(
      TransactionHeaderModel transactionHeaderModel) {
    return LoadTransaction(
      transactionHeaderModel,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentEvent = _$PaymentEventTearOff();

/// @nodoc
mixin _$PaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult clearAll(),
    @required TResult addToBasket(ProductModel productModel),
    @required TResult setSelectedBasket(BasketModel basketModel),
    @required TResult changeQuantity(BasketModel basketModel),
    @required TResult removeFromBasket(ProductModel productModel),
    @required TResult setBranch(BranchModel currentBranchModel),
    @required TResult setCustomerData(String customerName, String username),
    @required TResult changeCashAmount(double cashAmount),
    @required TResult changePaymentMethod(String paymentMethod),
    @required TResult getListCashier(),
    @required TResult setCashier(String cashierName),
    @required TResult saveTransaction(String username),
    @required
        TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult clearAll(),
    TResult addToBasket(ProductModel productModel),
    TResult setSelectedBasket(BasketModel basketModel),
    TResult changeQuantity(BasketModel basketModel),
    TResult removeFromBasket(ProductModel productModel),
    TResult setBranch(BranchModel currentBranchModel),
    TResult setCustomerData(String customerName, String username),
    TResult changeCashAmount(double cashAmount),
    TResult changePaymentMethod(String paymentMethod),
    TResult getListCashier(),
    TResult setCashier(String cashierName),
    TResult saveTransaction(String username),
    TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult clearAll(ClearAll value),
    @required TResult addToBasket(AddToBasket value),
    @required TResult setSelectedBasket(SetSelectedBasket value),
    @required TResult changeQuantity(ChangeQuantity value),
    @required TResult removeFromBasket(RemoveFromBasket value),
    @required TResult setBranch(SetBranch value),
    @required TResult setCustomerData(SetCustomerData value),
    @required TResult changeCashAmount(ChangeCashAmount value),
    @required TResult changePaymentMethod(ChangePaymentMethod value),
    @required TResult getListCashier(GetListCashier value),
    @required TResult setCashier(SetCashier value),
    @required TResult saveTransaction(SaveTransaction value),
    @required TResult loadTransaction(LoadTransaction value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult clearAll(ClearAll value),
    TResult addToBasket(AddToBasket value),
    TResult setSelectedBasket(SetSelectedBasket value),
    TResult changeQuantity(ChangeQuantity value),
    TResult removeFromBasket(RemoveFromBasket value),
    TResult setBranch(SetBranch value),
    TResult setCustomerData(SetCustomerData value),
    TResult changeCashAmount(ChangeCashAmount value),
    TResult changePaymentMethod(ChangePaymentMethod value),
    TResult getListCashier(GetListCashier value),
    TResult setCashier(SetCashier value),
    TResult saveTransaction(SaveTransaction value),
    TResult loadTransaction(LoadTransaction value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res> implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  final PaymentEvent _value;
  // ignore: unused_field
  final $Res Function(PaymentEvent) _then;
}

/// @nodoc
abstract class $ClearAllCopyWith<$Res> {
  factory $ClearAllCopyWith(ClearAll value, $Res Function(ClearAll) then) =
      _$ClearAllCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClearAllCopyWithImpl<$Res> extends _$PaymentEventCopyWithImpl<$Res>
    implements $ClearAllCopyWith<$Res> {
  _$ClearAllCopyWithImpl(ClearAll _value, $Res Function(ClearAll) _then)
      : super(_value, (v) => _then(v as ClearAll));

  @override
  ClearAll get _value => super._value as ClearAll;
}

/// @nodoc
class _$ClearAll implements ClearAll {
  const _$ClearAll();

  @override
  String toString() {
    return 'PaymentEvent.clearAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ClearAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult clearAll(),
    @required TResult addToBasket(ProductModel productModel),
    @required TResult setSelectedBasket(BasketModel basketModel),
    @required TResult changeQuantity(BasketModel basketModel),
    @required TResult removeFromBasket(ProductModel productModel),
    @required TResult setBranch(BranchModel currentBranchModel),
    @required TResult setCustomerData(String customerName, String username),
    @required TResult changeCashAmount(double cashAmount),
    @required TResult changePaymentMethod(String paymentMethod),
    @required TResult getListCashier(),
    @required TResult setCashier(String cashierName),
    @required TResult saveTransaction(String username),
    @required
        TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return clearAll();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult clearAll(),
    TResult addToBasket(ProductModel productModel),
    TResult setSelectedBasket(BasketModel basketModel),
    TResult changeQuantity(BasketModel basketModel),
    TResult removeFromBasket(ProductModel productModel),
    TResult setBranch(BranchModel currentBranchModel),
    TResult setCustomerData(String customerName, String username),
    TResult changeCashAmount(double cashAmount),
    TResult changePaymentMethod(String paymentMethod),
    TResult getListCashier(),
    TResult setCashier(String cashierName),
    TResult saveTransaction(String username),
    TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (clearAll != null) {
      return clearAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult clearAll(ClearAll value),
    @required TResult addToBasket(AddToBasket value),
    @required TResult setSelectedBasket(SetSelectedBasket value),
    @required TResult changeQuantity(ChangeQuantity value),
    @required TResult removeFromBasket(RemoveFromBasket value),
    @required TResult setBranch(SetBranch value),
    @required TResult setCustomerData(SetCustomerData value),
    @required TResult changeCashAmount(ChangeCashAmount value),
    @required TResult changePaymentMethod(ChangePaymentMethod value),
    @required TResult getListCashier(GetListCashier value),
    @required TResult setCashier(SetCashier value),
    @required TResult saveTransaction(SaveTransaction value),
    @required TResult loadTransaction(LoadTransaction value),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return clearAll(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult clearAll(ClearAll value),
    TResult addToBasket(AddToBasket value),
    TResult setSelectedBasket(SetSelectedBasket value),
    TResult changeQuantity(ChangeQuantity value),
    TResult removeFromBasket(RemoveFromBasket value),
    TResult setBranch(SetBranch value),
    TResult setCustomerData(SetCustomerData value),
    TResult changeCashAmount(ChangeCashAmount value),
    TResult changePaymentMethod(ChangePaymentMethod value),
    TResult getListCashier(GetListCashier value),
    TResult setCashier(SetCashier value),
    TResult saveTransaction(SaveTransaction value),
    TResult loadTransaction(LoadTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (clearAll != null) {
      return clearAll(this);
    }
    return orElse();
  }
}

abstract class ClearAll implements PaymentEvent {
  const factory ClearAll() = _$ClearAll;
}

/// @nodoc
abstract class $AddToBasketCopyWith<$Res> {
  factory $AddToBasketCopyWith(
          AddToBasket value, $Res Function(AddToBasket) then) =
      _$AddToBasketCopyWithImpl<$Res>;
  $Res call({ProductModel productModel});

  $ProductModelCopyWith<$Res> get productModel;
}

/// @nodoc
class _$AddToBasketCopyWithImpl<$Res> extends _$PaymentEventCopyWithImpl<$Res>
    implements $AddToBasketCopyWith<$Res> {
  _$AddToBasketCopyWithImpl(
      AddToBasket _value, $Res Function(AddToBasket) _then)
      : super(_value, (v) => _then(v as AddToBasket));

  @override
  AddToBasket get _value => super._value as AddToBasket;

  @override
  $Res call({
    Object productModel = freezed,
  }) {
    return _then(AddToBasket(
      productModel == freezed
          ? _value.productModel
          : productModel as ProductModel,
    ));
  }

  @override
  $ProductModelCopyWith<$Res> get productModel {
    if (_value.productModel == null) {
      return null;
    }
    return $ProductModelCopyWith<$Res>(_value.productModel, (value) {
      return _then(_value.copyWith(productModel: value));
    });
  }
}

/// @nodoc
class _$AddToBasket implements AddToBasket {
  const _$AddToBasket(this.productModel) : assert(productModel != null);

  @override
  final ProductModel productModel;

  @override
  String toString() {
    return 'PaymentEvent.addToBasket(productModel: $productModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddToBasket &&
            (identical(other.productModel, productModel) ||
                const DeepCollectionEquality()
                    .equals(other.productModel, productModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productModel);

  @JsonKey(ignore: true)
  @override
  $AddToBasketCopyWith<AddToBasket> get copyWith =>
      _$AddToBasketCopyWithImpl<AddToBasket>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult clearAll(),
    @required TResult addToBasket(ProductModel productModel),
    @required TResult setSelectedBasket(BasketModel basketModel),
    @required TResult changeQuantity(BasketModel basketModel),
    @required TResult removeFromBasket(ProductModel productModel),
    @required TResult setBranch(BranchModel currentBranchModel),
    @required TResult setCustomerData(String customerName, String username),
    @required TResult changeCashAmount(double cashAmount),
    @required TResult changePaymentMethod(String paymentMethod),
    @required TResult getListCashier(),
    @required TResult setCashier(String cashierName),
    @required TResult saveTransaction(String username),
    @required
        TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return addToBasket(productModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult clearAll(),
    TResult addToBasket(ProductModel productModel),
    TResult setSelectedBasket(BasketModel basketModel),
    TResult changeQuantity(BasketModel basketModel),
    TResult removeFromBasket(ProductModel productModel),
    TResult setBranch(BranchModel currentBranchModel),
    TResult setCustomerData(String customerName, String username),
    TResult changeCashAmount(double cashAmount),
    TResult changePaymentMethod(String paymentMethod),
    TResult getListCashier(),
    TResult setCashier(String cashierName),
    TResult saveTransaction(String username),
    TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addToBasket != null) {
      return addToBasket(productModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult clearAll(ClearAll value),
    @required TResult addToBasket(AddToBasket value),
    @required TResult setSelectedBasket(SetSelectedBasket value),
    @required TResult changeQuantity(ChangeQuantity value),
    @required TResult removeFromBasket(RemoveFromBasket value),
    @required TResult setBranch(SetBranch value),
    @required TResult setCustomerData(SetCustomerData value),
    @required TResult changeCashAmount(ChangeCashAmount value),
    @required TResult changePaymentMethod(ChangePaymentMethod value),
    @required TResult getListCashier(GetListCashier value),
    @required TResult setCashier(SetCashier value),
    @required TResult saveTransaction(SaveTransaction value),
    @required TResult loadTransaction(LoadTransaction value),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return addToBasket(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult clearAll(ClearAll value),
    TResult addToBasket(AddToBasket value),
    TResult setSelectedBasket(SetSelectedBasket value),
    TResult changeQuantity(ChangeQuantity value),
    TResult removeFromBasket(RemoveFromBasket value),
    TResult setBranch(SetBranch value),
    TResult setCustomerData(SetCustomerData value),
    TResult changeCashAmount(ChangeCashAmount value),
    TResult changePaymentMethod(ChangePaymentMethod value),
    TResult getListCashier(GetListCashier value),
    TResult setCashier(SetCashier value),
    TResult saveTransaction(SaveTransaction value),
    TResult loadTransaction(LoadTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addToBasket != null) {
      return addToBasket(this);
    }
    return orElse();
  }
}

abstract class AddToBasket implements PaymentEvent {
  const factory AddToBasket(ProductModel productModel) = _$AddToBasket;

  ProductModel get productModel;
  @JsonKey(ignore: true)
  $AddToBasketCopyWith<AddToBasket> get copyWith;
}

/// @nodoc
abstract class $SetSelectedBasketCopyWith<$Res> {
  factory $SetSelectedBasketCopyWith(
          SetSelectedBasket value, $Res Function(SetSelectedBasket) then) =
      _$SetSelectedBasketCopyWithImpl<$Res>;
  $Res call({BasketModel basketModel});

  $BasketModelCopyWith<$Res> get basketModel;
}

/// @nodoc
class _$SetSelectedBasketCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements $SetSelectedBasketCopyWith<$Res> {
  _$SetSelectedBasketCopyWithImpl(
      SetSelectedBasket _value, $Res Function(SetSelectedBasket) _then)
      : super(_value, (v) => _then(v as SetSelectedBasket));

  @override
  SetSelectedBasket get _value => super._value as SetSelectedBasket;

  @override
  $Res call({
    Object basketModel = freezed,
  }) {
    return _then(SetSelectedBasket(
      basketModel == freezed ? _value.basketModel : basketModel as BasketModel,
    ));
  }

  @override
  $BasketModelCopyWith<$Res> get basketModel {
    if (_value.basketModel == null) {
      return null;
    }
    return $BasketModelCopyWith<$Res>(_value.basketModel, (value) {
      return _then(_value.copyWith(basketModel: value));
    });
  }
}

/// @nodoc
class _$SetSelectedBasket implements SetSelectedBasket {
  const _$SetSelectedBasket(this.basketModel) : assert(basketModel != null);

  @override
  final BasketModel basketModel;

  @override
  String toString() {
    return 'PaymentEvent.setSelectedBasket(basketModel: $basketModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetSelectedBasket &&
            (identical(other.basketModel, basketModel) ||
                const DeepCollectionEquality()
                    .equals(other.basketModel, basketModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(basketModel);

  @JsonKey(ignore: true)
  @override
  $SetSelectedBasketCopyWith<SetSelectedBasket> get copyWith =>
      _$SetSelectedBasketCopyWithImpl<SetSelectedBasket>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult clearAll(),
    @required TResult addToBasket(ProductModel productModel),
    @required TResult setSelectedBasket(BasketModel basketModel),
    @required TResult changeQuantity(BasketModel basketModel),
    @required TResult removeFromBasket(ProductModel productModel),
    @required TResult setBranch(BranchModel currentBranchModel),
    @required TResult setCustomerData(String customerName, String username),
    @required TResult changeCashAmount(double cashAmount),
    @required TResult changePaymentMethod(String paymentMethod),
    @required TResult getListCashier(),
    @required TResult setCashier(String cashierName),
    @required TResult saveTransaction(String username),
    @required
        TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return setSelectedBasket(basketModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult clearAll(),
    TResult addToBasket(ProductModel productModel),
    TResult setSelectedBasket(BasketModel basketModel),
    TResult changeQuantity(BasketModel basketModel),
    TResult removeFromBasket(ProductModel productModel),
    TResult setBranch(BranchModel currentBranchModel),
    TResult setCustomerData(String customerName, String username),
    TResult changeCashAmount(double cashAmount),
    TResult changePaymentMethod(String paymentMethod),
    TResult getListCashier(),
    TResult setCashier(String cashierName),
    TResult saveTransaction(String username),
    TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setSelectedBasket != null) {
      return setSelectedBasket(basketModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult clearAll(ClearAll value),
    @required TResult addToBasket(AddToBasket value),
    @required TResult setSelectedBasket(SetSelectedBasket value),
    @required TResult changeQuantity(ChangeQuantity value),
    @required TResult removeFromBasket(RemoveFromBasket value),
    @required TResult setBranch(SetBranch value),
    @required TResult setCustomerData(SetCustomerData value),
    @required TResult changeCashAmount(ChangeCashAmount value),
    @required TResult changePaymentMethod(ChangePaymentMethod value),
    @required TResult getListCashier(GetListCashier value),
    @required TResult setCashier(SetCashier value),
    @required TResult saveTransaction(SaveTransaction value),
    @required TResult loadTransaction(LoadTransaction value),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return setSelectedBasket(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult clearAll(ClearAll value),
    TResult addToBasket(AddToBasket value),
    TResult setSelectedBasket(SetSelectedBasket value),
    TResult changeQuantity(ChangeQuantity value),
    TResult removeFromBasket(RemoveFromBasket value),
    TResult setBranch(SetBranch value),
    TResult setCustomerData(SetCustomerData value),
    TResult changeCashAmount(ChangeCashAmount value),
    TResult changePaymentMethod(ChangePaymentMethod value),
    TResult getListCashier(GetListCashier value),
    TResult setCashier(SetCashier value),
    TResult saveTransaction(SaveTransaction value),
    TResult loadTransaction(LoadTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setSelectedBasket != null) {
      return setSelectedBasket(this);
    }
    return orElse();
  }
}

abstract class SetSelectedBasket implements PaymentEvent {
  const factory SetSelectedBasket(BasketModel basketModel) =
      _$SetSelectedBasket;

  BasketModel get basketModel;
  @JsonKey(ignore: true)
  $SetSelectedBasketCopyWith<SetSelectedBasket> get copyWith;
}

/// @nodoc
abstract class $ChangeQuantityCopyWith<$Res> {
  factory $ChangeQuantityCopyWith(
          ChangeQuantity value, $Res Function(ChangeQuantity) then) =
      _$ChangeQuantityCopyWithImpl<$Res>;
  $Res call({BasketModel basketModel});

  $BasketModelCopyWith<$Res> get basketModel;
}

/// @nodoc
class _$ChangeQuantityCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements $ChangeQuantityCopyWith<$Res> {
  _$ChangeQuantityCopyWithImpl(
      ChangeQuantity _value, $Res Function(ChangeQuantity) _then)
      : super(_value, (v) => _then(v as ChangeQuantity));

  @override
  ChangeQuantity get _value => super._value as ChangeQuantity;

  @override
  $Res call({
    Object basketModel = freezed,
  }) {
    return _then(ChangeQuantity(
      basketModel == freezed ? _value.basketModel : basketModel as BasketModel,
    ));
  }

  @override
  $BasketModelCopyWith<$Res> get basketModel {
    if (_value.basketModel == null) {
      return null;
    }
    return $BasketModelCopyWith<$Res>(_value.basketModel, (value) {
      return _then(_value.copyWith(basketModel: value));
    });
  }
}

/// @nodoc
class _$ChangeQuantity implements ChangeQuantity {
  const _$ChangeQuantity(this.basketModel) : assert(basketModel != null);

  @override
  final BasketModel basketModel;

  @override
  String toString() {
    return 'PaymentEvent.changeQuantity(basketModel: $basketModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeQuantity &&
            (identical(other.basketModel, basketModel) ||
                const DeepCollectionEquality()
                    .equals(other.basketModel, basketModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(basketModel);

  @JsonKey(ignore: true)
  @override
  $ChangeQuantityCopyWith<ChangeQuantity> get copyWith =>
      _$ChangeQuantityCopyWithImpl<ChangeQuantity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult clearAll(),
    @required TResult addToBasket(ProductModel productModel),
    @required TResult setSelectedBasket(BasketModel basketModel),
    @required TResult changeQuantity(BasketModel basketModel),
    @required TResult removeFromBasket(ProductModel productModel),
    @required TResult setBranch(BranchModel currentBranchModel),
    @required TResult setCustomerData(String customerName, String username),
    @required TResult changeCashAmount(double cashAmount),
    @required TResult changePaymentMethod(String paymentMethod),
    @required TResult getListCashier(),
    @required TResult setCashier(String cashierName),
    @required TResult saveTransaction(String username),
    @required
        TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return changeQuantity(basketModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult clearAll(),
    TResult addToBasket(ProductModel productModel),
    TResult setSelectedBasket(BasketModel basketModel),
    TResult changeQuantity(BasketModel basketModel),
    TResult removeFromBasket(ProductModel productModel),
    TResult setBranch(BranchModel currentBranchModel),
    TResult setCustomerData(String customerName, String username),
    TResult changeCashAmount(double cashAmount),
    TResult changePaymentMethod(String paymentMethod),
    TResult getListCashier(),
    TResult setCashier(String cashierName),
    TResult saveTransaction(String username),
    TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeQuantity != null) {
      return changeQuantity(basketModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult clearAll(ClearAll value),
    @required TResult addToBasket(AddToBasket value),
    @required TResult setSelectedBasket(SetSelectedBasket value),
    @required TResult changeQuantity(ChangeQuantity value),
    @required TResult removeFromBasket(RemoveFromBasket value),
    @required TResult setBranch(SetBranch value),
    @required TResult setCustomerData(SetCustomerData value),
    @required TResult changeCashAmount(ChangeCashAmount value),
    @required TResult changePaymentMethod(ChangePaymentMethod value),
    @required TResult getListCashier(GetListCashier value),
    @required TResult setCashier(SetCashier value),
    @required TResult saveTransaction(SaveTransaction value),
    @required TResult loadTransaction(LoadTransaction value),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return changeQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult clearAll(ClearAll value),
    TResult addToBasket(AddToBasket value),
    TResult setSelectedBasket(SetSelectedBasket value),
    TResult changeQuantity(ChangeQuantity value),
    TResult removeFromBasket(RemoveFromBasket value),
    TResult setBranch(SetBranch value),
    TResult setCustomerData(SetCustomerData value),
    TResult changeCashAmount(ChangeCashAmount value),
    TResult changePaymentMethod(ChangePaymentMethod value),
    TResult getListCashier(GetListCashier value),
    TResult setCashier(SetCashier value),
    TResult saveTransaction(SaveTransaction value),
    TResult loadTransaction(LoadTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeQuantity != null) {
      return changeQuantity(this);
    }
    return orElse();
  }
}

abstract class ChangeQuantity implements PaymentEvent {
  const factory ChangeQuantity(BasketModel basketModel) = _$ChangeQuantity;

  BasketModel get basketModel;
  @JsonKey(ignore: true)
  $ChangeQuantityCopyWith<ChangeQuantity> get copyWith;
}

/// @nodoc
abstract class $RemoveFromBasketCopyWith<$Res> {
  factory $RemoveFromBasketCopyWith(
          RemoveFromBasket value, $Res Function(RemoveFromBasket) then) =
      _$RemoveFromBasketCopyWithImpl<$Res>;
  $Res call({ProductModel productModel});

  $ProductModelCopyWith<$Res> get productModel;
}

/// @nodoc
class _$RemoveFromBasketCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements $RemoveFromBasketCopyWith<$Res> {
  _$RemoveFromBasketCopyWithImpl(
      RemoveFromBasket _value, $Res Function(RemoveFromBasket) _then)
      : super(_value, (v) => _then(v as RemoveFromBasket));

  @override
  RemoveFromBasket get _value => super._value as RemoveFromBasket;

  @override
  $Res call({
    Object productModel = freezed,
  }) {
    return _then(RemoveFromBasket(
      productModel == freezed
          ? _value.productModel
          : productModel as ProductModel,
    ));
  }

  @override
  $ProductModelCopyWith<$Res> get productModel {
    if (_value.productModel == null) {
      return null;
    }
    return $ProductModelCopyWith<$Res>(_value.productModel, (value) {
      return _then(_value.copyWith(productModel: value));
    });
  }
}

/// @nodoc
class _$RemoveFromBasket implements RemoveFromBasket {
  const _$RemoveFromBasket(this.productModel) : assert(productModel != null);

  @override
  final ProductModel productModel;

  @override
  String toString() {
    return 'PaymentEvent.removeFromBasket(productModel: $productModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveFromBasket &&
            (identical(other.productModel, productModel) ||
                const DeepCollectionEquality()
                    .equals(other.productModel, productModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productModel);

  @JsonKey(ignore: true)
  @override
  $RemoveFromBasketCopyWith<RemoveFromBasket> get copyWith =>
      _$RemoveFromBasketCopyWithImpl<RemoveFromBasket>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult clearAll(),
    @required TResult addToBasket(ProductModel productModel),
    @required TResult setSelectedBasket(BasketModel basketModel),
    @required TResult changeQuantity(BasketModel basketModel),
    @required TResult removeFromBasket(ProductModel productModel),
    @required TResult setBranch(BranchModel currentBranchModel),
    @required TResult setCustomerData(String customerName, String username),
    @required TResult changeCashAmount(double cashAmount),
    @required TResult changePaymentMethod(String paymentMethod),
    @required TResult getListCashier(),
    @required TResult setCashier(String cashierName),
    @required TResult saveTransaction(String username),
    @required
        TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return removeFromBasket(productModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult clearAll(),
    TResult addToBasket(ProductModel productModel),
    TResult setSelectedBasket(BasketModel basketModel),
    TResult changeQuantity(BasketModel basketModel),
    TResult removeFromBasket(ProductModel productModel),
    TResult setBranch(BranchModel currentBranchModel),
    TResult setCustomerData(String customerName, String username),
    TResult changeCashAmount(double cashAmount),
    TResult changePaymentMethod(String paymentMethod),
    TResult getListCashier(),
    TResult setCashier(String cashierName),
    TResult saveTransaction(String username),
    TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeFromBasket != null) {
      return removeFromBasket(productModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult clearAll(ClearAll value),
    @required TResult addToBasket(AddToBasket value),
    @required TResult setSelectedBasket(SetSelectedBasket value),
    @required TResult changeQuantity(ChangeQuantity value),
    @required TResult removeFromBasket(RemoveFromBasket value),
    @required TResult setBranch(SetBranch value),
    @required TResult setCustomerData(SetCustomerData value),
    @required TResult changeCashAmount(ChangeCashAmount value),
    @required TResult changePaymentMethod(ChangePaymentMethod value),
    @required TResult getListCashier(GetListCashier value),
    @required TResult setCashier(SetCashier value),
    @required TResult saveTransaction(SaveTransaction value),
    @required TResult loadTransaction(LoadTransaction value),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return removeFromBasket(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult clearAll(ClearAll value),
    TResult addToBasket(AddToBasket value),
    TResult setSelectedBasket(SetSelectedBasket value),
    TResult changeQuantity(ChangeQuantity value),
    TResult removeFromBasket(RemoveFromBasket value),
    TResult setBranch(SetBranch value),
    TResult setCustomerData(SetCustomerData value),
    TResult changeCashAmount(ChangeCashAmount value),
    TResult changePaymentMethod(ChangePaymentMethod value),
    TResult getListCashier(GetListCashier value),
    TResult setCashier(SetCashier value),
    TResult saveTransaction(SaveTransaction value),
    TResult loadTransaction(LoadTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeFromBasket != null) {
      return removeFromBasket(this);
    }
    return orElse();
  }
}

abstract class RemoveFromBasket implements PaymentEvent {
  const factory RemoveFromBasket(ProductModel productModel) =
      _$RemoveFromBasket;

  ProductModel get productModel;
  @JsonKey(ignore: true)
  $RemoveFromBasketCopyWith<RemoveFromBasket> get copyWith;
}

/// @nodoc
abstract class $SetBranchCopyWith<$Res> {
  factory $SetBranchCopyWith(SetBranch value, $Res Function(SetBranch) then) =
      _$SetBranchCopyWithImpl<$Res>;
  $Res call({BranchModel currentBranchModel});

  $BranchModelCopyWith<$Res> get currentBranchModel;
}

/// @nodoc
class _$SetBranchCopyWithImpl<$Res> extends _$PaymentEventCopyWithImpl<$Res>
    implements $SetBranchCopyWith<$Res> {
  _$SetBranchCopyWithImpl(SetBranch _value, $Res Function(SetBranch) _then)
      : super(_value, (v) => _then(v as SetBranch));

  @override
  SetBranch get _value => super._value as SetBranch;

  @override
  $Res call({
    Object currentBranchModel = freezed,
  }) {
    return _then(SetBranch(
      currentBranchModel == freezed
          ? _value.currentBranchModel
          : currentBranchModel as BranchModel,
    ));
  }

  @override
  $BranchModelCopyWith<$Res> get currentBranchModel {
    if (_value.currentBranchModel == null) {
      return null;
    }
    return $BranchModelCopyWith<$Res>(_value.currentBranchModel, (value) {
      return _then(_value.copyWith(currentBranchModel: value));
    });
  }
}

/// @nodoc
class _$SetBranch implements SetBranch {
  const _$SetBranch(this.currentBranchModel)
      : assert(currentBranchModel != null);

  @override
  final BranchModel currentBranchModel;

  @override
  String toString() {
    return 'PaymentEvent.setBranch(currentBranchModel: $currentBranchModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetBranch &&
            (identical(other.currentBranchModel, currentBranchModel) ||
                const DeepCollectionEquality()
                    .equals(other.currentBranchModel, currentBranchModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentBranchModel);

  @JsonKey(ignore: true)
  @override
  $SetBranchCopyWith<SetBranch> get copyWith =>
      _$SetBranchCopyWithImpl<SetBranch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult clearAll(),
    @required TResult addToBasket(ProductModel productModel),
    @required TResult setSelectedBasket(BasketModel basketModel),
    @required TResult changeQuantity(BasketModel basketModel),
    @required TResult removeFromBasket(ProductModel productModel),
    @required TResult setBranch(BranchModel currentBranchModel),
    @required TResult setCustomerData(String customerName, String username),
    @required TResult changeCashAmount(double cashAmount),
    @required TResult changePaymentMethod(String paymentMethod),
    @required TResult getListCashier(),
    @required TResult setCashier(String cashierName),
    @required TResult saveTransaction(String username),
    @required
        TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return setBranch(currentBranchModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult clearAll(),
    TResult addToBasket(ProductModel productModel),
    TResult setSelectedBasket(BasketModel basketModel),
    TResult changeQuantity(BasketModel basketModel),
    TResult removeFromBasket(ProductModel productModel),
    TResult setBranch(BranchModel currentBranchModel),
    TResult setCustomerData(String customerName, String username),
    TResult changeCashAmount(double cashAmount),
    TResult changePaymentMethod(String paymentMethod),
    TResult getListCashier(),
    TResult setCashier(String cashierName),
    TResult saveTransaction(String username),
    TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setBranch != null) {
      return setBranch(currentBranchModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult clearAll(ClearAll value),
    @required TResult addToBasket(AddToBasket value),
    @required TResult setSelectedBasket(SetSelectedBasket value),
    @required TResult changeQuantity(ChangeQuantity value),
    @required TResult removeFromBasket(RemoveFromBasket value),
    @required TResult setBranch(SetBranch value),
    @required TResult setCustomerData(SetCustomerData value),
    @required TResult changeCashAmount(ChangeCashAmount value),
    @required TResult changePaymentMethod(ChangePaymentMethod value),
    @required TResult getListCashier(GetListCashier value),
    @required TResult setCashier(SetCashier value),
    @required TResult saveTransaction(SaveTransaction value),
    @required TResult loadTransaction(LoadTransaction value),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return setBranch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult clearAll(ClearAll value),
    TResult addToBasket(AddToBasket value),
    TResult setSelectedBasket(SetSelectedBasket value),
    TResult changeQuantity(ChangeQuantity value),
    TResult removeFromBasket(RemoveFromBasket value),
    TResult setBranch(SetBranch value),
    TResult setCustomerData(SetCustomerData value),
    TResult changeCashAmount(ChangeCashAmount value),
    TResult changePaymentMethod(ChangePaymentMethod value),
    TResult getListCashier(GetListCashier value),
    TResult setCashier(SetCashier value),
    TResult saveTransaction(SaveTransaction value),
    TResult loadTransaction(LoadTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setBranch != null) {
      return setBranch(this);
    }
    return orElse();
  }
}

abstract class SetBranch implements PaymentEvent {
  const factory SetBranch(BranchModel currentBranchModel) = _$SetBranch;

  BranchModel get currentBranchModel;
  @JsonKey(ignore: true)
  $SetBranchCopyWith<SetBranch> get copyWith;
}

/// @nodoc
abstract class $SetCustomerDataCopyWith<$Res> {
  factory $SetCustomerDataCopyWith(
          SetCustomerData value, $Res Function(SetCustomerData) then) =
      _$SetCustomerDataCopyWithImpl<$Res>;
  $Res call({String customerName, String username});
}

/// @nodoc
class _$SetCustomerDataCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements $SetCustomerDataCopyWith<$Res> {
  _$SetCustomerDataCopyWithImpl(
      SetCustomerData _value, $Res Function(SetCustomerData) _then)
      : super(_value, (v) => _then(v as SetCustomerData));

  @override
  SetCustomerData get _value => super._value as SetCustomerData;

  @override
  $Res call({
    Object customerName = freezed,
    Object username = freezed,
  }) {
    return _then(SetCustomerData(
      customerName == freezed ? _value.customerName : customerName as String,
      username == freezed ? _value.username : username as String,
    ));
  }
}

/// @nodoc
class _$SetCustomerData implements SetCustomerData {
  const _$SetCustomerData(this.customerName, this.username)
      : assert(customerName != null),
        assert(username != null);

  @override
  final String customerName;
  @override
  final String username;

  @override
  String toString() {
    return 'PaymentEvent.setCustomerData(customerName: $customerName, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetCustomerData &&
            (identical(other.customerName, customerName) ||
                const DeepCollectionEquality()
                    .equals(other.customerName, customerName)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(customerName) ^
      const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  $SetCustomerDataCopyWith<SetCustomerData> get copyWith =>
      _$SetCustomerDataCopyWithImpl<SetCustomerData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult clearAll(),
    @required TResult addToBasket(ProductModel productModel),
    @required TResult setSelectedBasket(BasketModel basketModel),
    @required TResult changeQuantity(BasketModel basketModel),
    @required TResult removeFromBasket(ProductModel productModel),
    @required TResult setBranch(BranchModel currentBranchModel),
    @required TResult setCustomerData(String customerName, String username),
    @required TResult changeCashAmount(double cashAmount),
    @required TResult changePaymentMethod(String paymentMethod),
    @required TResult getListCashier(),
    @required TResult setCashier(String cashierName),
    @required TResult saveTransaction(String username),
    @required
        TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return setCustomerData(customerName, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult clearAll(),
    TResult addToBasket(ProductModel productModel),
    TResult setSelectedBasket(BasketModel basketModel),
    TResult changeQuantity(BasketModel basketModel),
    TResult removeFromBasket(ProductModel productModel),
    TResult setBranch(BranchModel currentBranchModel),
    TResult setCustomerData(String customerName, String username),
    TResult changeCashAmount(double cashAmount),
    TResult changePaymentMethod(String paymentMethod),
    TResult getListCashier(),
    TResult setCashier(String cashierName),
    TResult saveTransaction(String username),
    TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setCustomerData != null) {
      return setCustomerData(customerName, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult clearAll(ClearAll value),
    @required TResult addToBasket(AddToBasket value),
    @required TResult setSelectedBasket(SetSelectedBasket value),
    @required TResult changeQuantity(ChangeQuantity value),
    @required TResult removeFromBasket(RemoveFromBasket value),
    @required TResult setBranch(SetBranch value),
    @required TResult setCustomerData(SetCustomerData value),
    @required TResult changeCashAmount(ChangeCashAmount value),
    @required TResult changePaymentMethod(ChangePaymentMethod value),
    @required TResult getListCashier(GetListCashier value),
    @required TResult setCashier(SetCashier value),
    @required TResult saveTransaction(SaveTransaction value),
    @required TResult loadTransaction(LoadTransaction value),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return setCustomerData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult clearAll(ClearAll value),
    TResult addToBasket(AddToBasket value),
    TResult setSelectedBasket(SetSelectedBasket value),
    TResult changeQuantity(ChangeQuantity value),
    TResult removeFromBasket(RemoveFromBasket value),
    TResult setBranch(SetBranch value),
    TResult setCustomerData(SetCustomerData value),
    TResult changeCashAmount(ChangeCashAmount value),
    TResult changePaymentMethod(ChangePaymentMethod value),
    TResult getListCashier(GetListCashier value),
    TResult setCashier(SetCashier value),
    TResult saveTransaction(SaveTransaction value),
    TResult loadTransaction(LoadTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setCustomerData != null) {
      return setCustomerData(this);
    }
    return orElse();
  }
}

abstract class SetCustomerData implements PaymentEvent {
  const factory SetCustomerData(String customerName, String username) =
      _$SetCustomerData;

  String get customerName;
  String get username;
  @JsonKey(ignore: true)
  $SetCustomerDataCopyWith<SetCustomerData> get copyWith;
}

/// @nodoc
abstract class $ChangeCashAmountCopyWith<$Res> {
  factory $ChangeCashAmountCopyWith(
          ChangeCashAmount value, $Res Function(ChangeCashAmount) then) =
      _$ChangeCashAmountCopyWithImpl<$Res>;
  $Res call({double cashAmount});
}

/// @nodoc
class _$ChangeCashAmountCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements $ChangeCashAmountCopyWith<$Res> {
  _$ChangeCashAmountCopyWithImpl(
      ChangeCashAmount _value, $Res Function(ChangeCashAmount) _then)
      : super(_value, (v) => _then(v as ChangeCashAmount));

  @override
  ChangeCashAmount get _value => super._value as ChangeCashAmount;

  @override
  $Res call({
    Object cashAmount = freezed,
  }) {
    return _then(ChangeCashAmount(
      cashAmount == freezed ? _value.cashAmount : cashAmount as double,
    ));
  }
}

/// @nodoc
class _$ChangeCashAmount implements ChangeCashAmount {
  const _$ChangeCashAmount(this.cashAmount) : assert(cashAmount != null);

  @override
  final double cashAmount;

  @override
  String toString() {
    return 'PaymentEvent.changeCashAmount(cashAmount: $cashAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeCashAmount &&
            (identical(other.cashAmount, cashAmount) ||
                const DeepCollectionEquality()
                    .equals(other.cashAmount, cashAmount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cashAmount);

  @JsonKey(ignore: true)
  @override
  $ChangeCashAmountCopyWith<ChangeCashAmount> get copyWith =>
      _$ChangeCashAmountCopyWithImpl<ChangeCashAmount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult clearAll(),
    @required TResult addToBasket(ProductModel productModel),
    @required TResult setSelectedBasket(BasketModel basketModel),
    @required TResult changeQuantity(BasketModel basketModel),
    @required TResult removeFromBasket(ProductModel productModel),
    @required TResult setBranch(BranchModel currentBranchModel),
    @required TResult setCustomerData(String customerName, String username),
    @required TResult changeCashAmount(double cashAmount),
    @required TResult changePaymentMethod(String paymentMethod),
    @required TResult getListCashier(),
    @required TResult setCashier(String cashierName),
    @required TResult saveTransaction(String username),
    @required
        TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return changeCashAmount(cashAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult clearAll(),
    TResult addToBasket(ProductModel productModel),
    TResult setSelectedBasket(BasketModel basketModel),
    TResult changeQuantity(BasketModel basketModel),
    TResult removeFromBasket(ProductModel productModel),
    TResult setBranch(BranchModel currentBranchModel),
    TResult setCustomerData(String customerName, String username),
    TResult changeCashAmount(double cashAmount),
    TResult changePaymentMethod(String paymentMethod),
    TResult getListCashier(),
    TResult setCashier(String cashierName),
    TResult saveTransaction(String username),
    TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeCashAmount != null) {
      return changeCashAmount(cashAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult clearAll(ClearAll value),
    @required TResult addToBasket(AddToBasket value),
    @required TResult setSelectedBasket(SetSelectedBasket value),
    @required TResult changeQuantity(ChangeQuantity value),
    @required TResult removeFromBasket(RemoveFromBasket value),
    @required TResult setBranch(SetBranch value),
    @required TResult setCustomerData(SetCustomerData value),
    @required TResult changeCashAmount(ChangeCashAmount value),
    @required TResult changePaymentMethod(ChangePaymentMethod value),
    @required TResult getListCashier(GetListCashier value),
    @required TResult setCashier(SetCashier value),
    @required TResult saveTransaction(SaveTransaction value),
    @required TResult loadTransaction(LoadTransaction value),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return changeCashAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult clearAll(ClearAll value),
    TResult addToBasket(AddToBasket value),
    TResult setSelectedBasket(SetSelectedBasket value),
    TResult changeQuantity(ChangeQuantity value),
    TResult removeFromBasket(RemoveFromBasket value),
    TResult setBranch(SetBranch value),
    TResult setCustomerData(SetCustomerData value),
    TResult changeCashAmount(ChangeCashAmount value),
    TResult changePaymentMethod(ChangePaymentMethod value),
    TResult getListCashier(GetListCashier value),
    TResult setCashier(SetCashier value),
    TResult saveTransaction(SaveTransaction value),
    TResult loadTransaction(LoadTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changeCashAmount != null) {
      return changeCashAmount(this);
    }
    return orElse();
  }
}

abstract class ChangeCashAmount implements PaymentEvent {
  const factory ChangeCashAmount(double cashAmount) = _$ChangeCashAmount;

  double get cashAmount;
  @JsonKey(ignore: true)
  $ChangeCashAmountCopyWith<ChangeCashAmount> get copyWith;
}

/// @nodoc
abstract class $ChangePaymentMethodCopyWith<$Res> {
  factory $ChangePaymentMethodCopyWith(
          ChangePaymentMethod value, $Res Function(ChangePaymentMethod) then) =
      _$ChangePaymentMethodCopyWithImpl<$Res>;
  $Res call({String paymentMethod});
}

/// @nodoc
class _$ChangePaymentMethodCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements $ChangePaymentMethodCopyWith<$Res> {
  _$ChangePaymentMethodCopyWithImpl(
      ChangePaymentMethod _value, $Res Function(ChangePaymentMethod) _then)
      : super(_value, (v) => _then(v as ChangePaymentMethod));

  @override
  ChangePaymentMethod get _value => super._value as ChangePaymentMethod;

  @override
  $Res call({
    Object paymentMethod = freezed,
  }) {
    return _then(ChangePaymentMethod(
      paymentMethod == freezed ? _value.paymentMethod : paymentMethod as String,
    ));
  }
}

/// @nodoc
class _$ChangePaymentMethod implements ChangePaymentMethod {
  const _$ChangePaymentMethod(this.paymentMethod)
      : assert(paymentMethod != null);

  @override
  final String paymentMethod;

  @override
  String toString() {
    return 'PaymentEvent.changePaymentMethod(paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangePaymentMethod &&
            (identical(other.paymentMethod, paymentMethod) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethod, paymentMethod)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(paymentMethod);

  @JsonKey(ignore: true)
  @override
  $ChangePaymentMethodCopyWith<ChangePaymentMethod> get copyWith =>
      _$ChangePaymentMethodCopyWithImpl<ChangePaymentMethod>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult clearAll(),
    @required TResult addToBasket(ProductModel productModel),
    @required TResult setSelectedBasket(BasketModel basketModel),
    @required TResult changeQuantity(BasketModel basketModel),
    @required TResult removeFromBasket(ProductModel productModel),
    @required TResult setBranch(BranchModel currentBranchModel),
    @required TResult setCustomerData(String customerName, String username),
    @required TResult changeCashAmount(double cashAmount),
    @required TResult changePaymentMethod(String paymentMethod),
    @required TResult getListCashier(),
    @required TResult setCashier(String cashierName),
    @required TResult saveTransaction(String username),
    @required
        TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return changePaymentMethod(paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult clearAll(),
    TResult addToBasket(ProductModel productModel),
    TResult setSelectedBasket(BasketModel basketModel),
    TResult changeQuantity(BasketModel basketModel),
    TResult removeFromBasket(ProductModel productModel),
    TResult setBranch(BranchModel currentBranchModel),
    TResult setCustomerData(String customerName, String username),
    TResult changeCashAmount(double cashAmount),
    TResult changePaymentMethod(String paymentMethod),
    TResult getListCashier(),
    TResult setCashier(String cashierName),
    TResult saveTransaction(String username),
    TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changePaymentMethod != null) {
      return changePaymentMethod(paymentMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult clearAll(ClearAll value),
    @required TResult addToBasket(AddToBasket value),
    @required TResult setSelectedBasket(SetSelectedBasket value),
    @required TResult changeQuantity(ChangeQuantity value),
    @required TResult removeFromBasket(RemoveFromBasket value),
    @required TResult setBranch(SetBranch value),
    @required TResult setCustomerData(SetCustomerData value),
    @required TResult changeCashAmount(ChangeCashAmount value),
    @required TResult changePaymentMethod(ChangePaymentMethod value),
    @required TResult getListCashier(GetListCashier value),
    @required TResult setCashier(SetCashier value),
    @required TResult saveTransaction(SaveTransaction value),
    @required TResult loadTransaction(LoadTransaction value),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return changePaymentMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult clearAll(ClearAll value),
    TResult addToBasket(AddToBasket value),
    TResult setSelectedBasket(SetSelectedBasket value),
    TResult changeQuantity(ChangeQuantity value),
    TResult removeFromBasket(RemoveFromBasket value),
    TResult setBranch(SetBranch value),
    TResult setCustomerData(SetCustomerData value),
    TResult changeCashAmount(ChangeCashAmount value),
    TResult changePaymentMethod(ChangePaymentMethod value),
    TResult getListCashier(GetListCashier value),
    TResult setCashier(SetCashier value),
    TResult saveTransaction(SaveTransaction value),
    TResult loadTransaction(LoadTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (changePaymentMethod != null) {
      return changePaymentMethod(this);
    }
    return orElse();
  }
}

abstract class ChangePaymentMethod implements PaymentEvent {
  const factory ChangePaymentMethod(String paymentMethod) =
      _$ChangePaymentMethod;

  String get paymentMethod;
  @JsonKey(ignore: true)
  $ChangePaymentMethodCopyWith<ChangePaymentMethod> get copyWith;
}

/// @nodoc
abstract class $GetListCashierCopyWith<$Res> {
  factory $GetListCashierCopyWith(
          GetListCashier value, $Res Function(GetListCashier) then) =
      _$GetListCashierCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetListCashierCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements $GetListCashierCopyWith<$Res> {
  _$GetListCashierCopyWithImpl(
      GetListCashier _value, $Res Function(GetListCashier) _then)
      : super(_value, (v) => _then(v as GetListCashier));

  @override
  GetListCashier get _value => super._value as GetListCashier;
}

/// @nodoc
class _$GetListCashier implements GetListCashier {
  const _$GetListCashier();

  @override
  String toString() {
    return 'PaymentEvent.getListCashier()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetListCashier);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult clearAll(),
    @required TResult addToBasket(ProductModel productModel),
    @required TResult setSelectedBasket(BasketModel basketModel),
    @required TResult changeQuantity(BasketModel basketModel),
    @required TResult removeFromBasket(ProductModel productModel),
    @required TResult setBranch(BranchModel currentBranchModel),
    @required TResult setCustomerData(String customerName, String username),
    @required TResult changeCashAmount(double cashAmount),
    @required TResult changePaymentMethod(String paymentMethod),
    @required TResult getListCashier(),
    @required TResult setCashier(String cashierName),
    @required TResult saveTransaction(String username),
    @required
        TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return getListCashier();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult clearAll(),
    TResult addToBasket(ProductModel productModel),
    TResult setSelectedBasket(BasketModel basketModel),
    TResult changeQuantity(BasketModel basketModel),
    TResult removeFromBasket(ProductModel productModel),
    TResult setBranch(BranchModel currentBranchModel),
    TResult setCustomerData(String customerName, String username),
    TResult changeCashAmount(double cashAmount),
    TResult changePaymentMethod(String paymentMethod),
    TResult getListCashier(),
    TResult setCashier(String cashierName),
    TResult saveTransaction(String username),
    TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getListCashier != null) {
      return getListCashier();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult clearAll(ClearAll value),
    @required TResult addToBasket(AddToBasket value),
    @required TResult setSelectedBasket(SetSelectedBasket value),
    @required TResult changeQuantity(ChangeQuantity value),
    @required TResult removeFromBasket(RemoveFromBasket value),
    @required TResult setBranch(SetBranch value),
    @required TResult setCustomerData(SetCustomerData value),
    @required TResult changeCashAmount(ChangeCashAmount value),
    @required TResult changePaymentMethod(ChangePaymentMethod value),
    @required TResult getListCashier(GetListCashier value),
    @required TResult setCashier(SetCashier value),
    @required TResult saveTransaction(SaveTransaction value),
    @required TResult loadTransaction(LoadTransaction value),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return getListCashier(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult clearAll(ClearAll value),
    TResult addToBasket(AddToBasket value),
    TResult setSelectedBasket(SetSelectedBasket value),
    TResult changeQuantity(ChangeQuantity value),
    TResult removeFromBasket(RemoveFromBasket value),
    TResult setBranch(SetBranch value),
    TResult setCustomerData(SetCustomerData value),
    TResult changeCashAmount(ChangeCashAmount value),
    TResult changePaymentMethod(ChangePaymentMethod value),
    TResult getListCashier(GetListCashier value),
    TResult setCashier(SetCashier value),
    TResult saveTransaction(SaveTransaction value),
    TResult loadTransaction(LoadTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getListCashier != null) {
      return getListCashier(this);
    }
    return orElse();
  }
}

abstract class GetListCashier implements PaymentEvent {
  const factory GetListCashier() = _$GetListCashier;
}

/// @nodoc
abstract class $SetCashierCopyWith<$Res> {
  factory $SetCashierCopyWith(
          SetCashier value, $Res Function(SetCashier) then) =
      _$SetCashierCopyWithImpl<$Res>;
  $Res call({String cashierName});
}

/// @nodoc
class _$SetCashierCopyWithImpl<$Res> extends _$PaymentEventCopyWithImpl<$Res>
    implements $SetCashierCopyWith<$Res> {
  _$SetCashierCopyWithImpl(SetCashier _value, $Res Function(SetCashier) _then)
      : super(_value, (v) => _then(v as SetCashier));

  @override
  SetCashier get _value => super._value as SetCashier;

  @override
  $Res call({
    Object cashierName = freezed,
  }) {
    return _then(SetCashier(
      cashierName == freezed ? _value.cashierName : cashierName as String,
    ));
  }
}

/// @nodoc
class _$SetCashier implements SetCashier {
  const _$SetCashier(this.cashierName) : assert(cashierName != null);

  @override
  final String cashierName;

  @override
  String toString() {
    return 'PaymentEvent.setCashier(cashierName: $cashierName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SetCashier &&
            (identical(other.cashierName, cashierName) ||
                const DeepCollectionEquality()
                    .equals(other.cashierName, cashierName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cashierName);

  @JsonKey(ignore: true)
  @override
  $SetCashierCopyWith<SetCashier> get copyWith =>
      _$SetCashierCopyWithImpl<SetCashier>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult clearAll(),
    @required TResult addToBasket(ProductModel productModel),
    @required TResult setSelectedBasket(BasketModel basketModel),
    @required TResult changeQuantity(BasketModel basketModel),
    @required TResult removeFromBasket(ProductModel productModel),
    @required TResult setBranch(BranchModel currentBranchModel),
    @required TResult setCustomerData(String customerName, String username),
    @required TResult changeCashAmount(double cashAmount),
    @required TResult changePaymentMethod(String paymentMethod),
    @required TResult getListCashier(),
    @required TResult setCashier(String cashierName),
    @required TResult saveTransaction(String username),
    @required
        TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return setCashier(cashierName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult clearAll(),
    TResult addToBasket(ProductModel productModel),
    TResult setSelectedBasket(BasketModel basketModel),
    TResult changeQuantity(BasketModel basketModel),
    TResult removeFromBasket(ProductModel productModel),
    TResult setBranch(BranchModel currentBranchModel),
    TResult setCustomerData(String customerName, String username),
    TResult changeCashAmount(double cashAmount),
    TResult changePaymentMethod(String paymentMethod),
    TResult getListCashier(),
    TResult setCashier(String cashierName),
    TResult saveTransaction(String username),
    TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setCashier != null) {
      return setCashier(cashierName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult clearAll(ClearAll value),
    @required TResult addToBasket(AddToBasket value),
    @required TResult setSelectedBasket(SetSelectedBasket value),
    @required TResult changeQuantity(ChangeQuantity value),
    @required TResult removeFromBasket(RemoveFromBasket value),
    @required TResult setBranch(SetBranch value),
    @required TResult setCustomerData(SetCustomerData value),
    @required TResult changeCashAmount(ChangeCashAmount value),
    @required TResult changePaymentMethod(ChangePaymentMethod value),
    @required TResult getListCashier(GetListCashier value),
    @required TResult setCashier(SetCashier value),
    @required TResult saveTransaction(SaveTransaction value),
    @required TResult loadTransaction(LoadTransaction value),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return setCashier(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult clearAll(ClearAll value),
    TResult addToBasket(AddToBasket value),
    TResult setSelectedBasket(SetSelectedBasket value),
    TResult changeQuantity(ChangeQuantity value),
    TResult removeFromBasket(RemoveFromBasket value),
    TResult setBranch(SetBranch value),
    TResult setCustomerData(SetCustomerData value),
    TResult changeCashAmount(ChangeCashAmount value),
    TResult changePaymentMethod(ChangePaymentMethod value),
    TResult getListCashier(GetListCashier value),
    TResult setCashier(SetCashier value),
    TResult saveTransaction(SaveTransaction value),
    TResult loadTransaction(LoadTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (setCashier != null) {
      return setCashier(this);
    }
    return orElse();
  }
}

abstract class SetCashier implements PaymentEvent {
  const factory SetCashier(String cashierName) = _$SetCashier;

  String get cashierName;
  @JsonKey(ignore: true)
  $SetCashierCopyWith<SetCashier> get copyWith;
}

/// @nodoc
abstract class $SaveTransactionCopyWith<$Res> {
  factory $SaveTransactionCopyWith(
          SaveTransaction value, $Res Function(SaveTransaction) then) =
      _$SaveTransactionCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class _$SaveTransactionCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements $SaveTransactionCopyWith<$Res> {
  _$SaveTransactionCopyWithImpl(
      SaveTransaction _value, $Res Function(SaveTransaction) _then)
      : super(_value, (v) => _then(v as SaveTransaction));

  @override
  SaveTransaction get _value => super._value as SaveTransaction;

  @override
  $Res call({
    Object username = freezed,
  }) {
    return _then(SaveTransaction(
      username == freezed ? _value.username : username as String,
    ));
  }
}

/// @nodoc
class _$SaveTransaction implements SaveTransaction {
  const _$SaveTransaction(this.username) : assert(username != null);

  @override
  final String username;

  @override
  String toString() {
    return 'PaymentEvent.saveTransaction(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveTransaction &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  $SaveTransactionCopyWith<SaveTransaction> get copyWith =>
      _$SaveTransactionCopyWithImpl<SaveTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult clearAll(),
    @required TResult addToBasket(ProductModel productModel),
    @required TResult setSelectedBasket(BasketModel basketModel),
    @required TResult changeQuantity(BasketModel basketModel),
    @required TResult removeFromBasket(ProductModel productModel),
    @required TResult setBranch(BranchModel currentBranchModel),
    @required TResult setCustomerData(String customerName, String username),
    @required TResult changeCashAmount(double cashAmount),
    @required TResult changePaymentMethod(String paymentMethod),
    @required TResult getListCashier(),
    @required TResult setCashier(String cashierName),
    @required TResult saveTransaction(String username),
    @required
        TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return saveTransaction(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult clearAll(),
    TResult addToBasket(ProductModel productModel),
    TResult setSelectedBasket(BasketModel basketModel),
    TResult changeQuantity(BasketModel basketModel),
    TResult removeFromBasket(ProductModel productModel),
    TResult setBranch(BranchModel currentBranchModel),
    TResult setCustomerData(String customerName, String username),
    TResult changeCashAmount(double cashAmount),
    TResult changePaymentMethod(String paymentMethod),
    TResult getListCashier(),
    TResult setCashier(String cashierName),
    TResult saveTransaction(String username),
    TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saveTransaction != null) {
      return saveTransaction(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult clearAll(ClearAll value),
    @required TResult addToBasket(AddToBasket value),
    @required TResult setSelectedBasket(SetSelectedBasket value),
    @required TResult changeQuantity(ChangeQuantity value),
    @required TResult removeFromBasket(RemoveFromBasket value),
    @required TResult setBranch(SetBranch value),
    @required TResult setCustomerData(SetCustomerData value),
    @required TResult changeCashAmount(ChangeCashAmount value),
    @required TResult changePaymentMethod(ChangePaymentMethod value),
    @required TResult getListCashier(GetListCashier value),
    @required TResult setCashier(SetCashier value),
    @required TResult saveTransaction(SaveTransaction value),
    @required TResult loadTransaction(LoadTransaction value),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return saveTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult clearAll(ClearAll value),
    TResult addToBasket(AddToBasket value),
    TResult setSelectedBasket(SetSelectedBasket value),
    TResult changeQuantity(ChangeQuantity value),
    TResult removeFromBasket(RemoveFromBasket value),
    TResult setBranch(SetBranch value),
    TResult setCustomerData(SetCustomerData value),
    TResult changeCashAmount(ChangeCashAmount value),
    TResult changePaymentMethod(ChangePaymentMethod value),
    TResult getListCashier(GetListCashier value),
    TResult setCashier(SetCashier value),
    TResult saveTransaction(SaveTransaction value),
    TResult loadTransaction(LoadTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saveTransaction != null) {
      return saveTransaction(this);
    }
    return orElse();
  }
}

abstract class SaveTransaction implements PaymentEvent {
  const factory SaveTransaction(String username) = _$SaveTransaction;

  String get username;
  @JsonKey(ignore: true)
  $SaveTransactionCopyWith<SaveTransaction> get copyWith;
}

/// @nodoc
abstract class $LoadTransactionCopyWith<$Res> {
  factory $LoadTransactionCopyWith(
          LoadTransaction value, $Res Function(LoadTransaction) then) =
      _$LoadTransactionCopyWithImpl<$Res>;
  $Res call({TransactionHeaderModel transactionHeaderModel});

  $TransactionHeaderModelCopyWith<$Res> get transactionHeaderModel;
}

/// @nodoc
class _$LoadTransactionCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements $LoadTransactionCopyWith<$Res> {
  _$LoadTransactionCopyWithImpl(
      LoadTransaction _value, $Res Function(LoadTransaction) _then)
      : super(_value, (v) => _then(v as LoadTransaction));

  @override
  LoadTransaction get _value => super._value as LoadTransaction;

  @override
  $Res call({
    Object transactionHeaderModel = freezed,
  }) {
    return _then(LoadTransaction(
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
class _$LoadTransaction implements LoadTransaction {
  const _$LoadTransaction(this.transactionHeaderModel)
      : assert(transactionHeaderModel != null);

  @override
  final TransactionHeaderModel transactionHeaderModel;

  @override
  String toString() {
    return 'PaymentEvent.loadTransaction(transactionHeaderModel: $transactionHeaderModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadTransaction &&
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
  $LoadTransactionCopyWith<LoadTransaction> get copyWith =>
      _$LoadTransactionCopyWithImpl<LoadTransaction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult clearAll(),
    @required TResult addToBasket(ProductModel productModel),
    @required TResult setSelectedBasket(BasketModel basketModel),
    @required TResult changeQuantity(BasketModel basketModel),
    @required TResult removeFromBasket(ProductModel productModel),
    @required TResult setBranch(BranchModel currentBranchModel),
    @required TResult setCustomerData(String customerName, String username),
    @required TResult changeCashAmount(double cashAmount),
    @required TResult changePaymentMethod(String paymentMethod),
    @required TResult getListCashier(),
    @required TResult setCashier(String cashierName),
    @required TResult saveTransaction(String username),
    @required
        TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return loadTransaction(transactionHeaderModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult clearAll(),
    TResult addToBasket(ProductModel productModel),
    TResult setSelectedBasket(BasketModel basketModel),
    TResult changeQuantity(BasketModel basketModel),
    TResult removeFromBasket(ProductModel productModel),
    TResult setBranch(BranchModel currentBranchModel),
    TResult setCustomerData(String customerName, String username),
    TResult changeCashAmount(double cashAmount),
    TResult changePaymentMethod(String paymentMethod),
    TResult getListCashier(),
    TResult setCashier(String cashierName),
    TResult saveTransaction(String username),
    TResult loadTransaction(TransactionHeaderModel transactionHeaderModel),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadTransaction != null) {
      return loadTransaction(transactionHeaderModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult clearAll(ClearAll value),
    @required TResult addToBasket(AddToBasket value),
    @required TResult setSelectedBasket(SetSelectedBasket value),
    @required TResult changeQuantity(ChangeQuantity value),
    @required TResult removeFromBasket(RemoveFromBasket value),
    @required TResult setBranch(SetBranch value),
    @required TResult setCustomerData(SetCustomerData value),
    @required TResult changeCashAmount(ChangeCashAmount value),
    @required TResult changePaymentMethod(ChangePaymentMethod value),
    @required TResult getListCashier(GetListCashier value),
    @required TResult setCashier(SetCashier value),
    @required TResult saveTransaction(SaveTransaction value),
    @required TResult loadTransaction(LoadTransaction value),
  }) {
    assert(clearAll != null);
    assert(addToBasket != null);
    assert(setSelectedBasket != null);
    assert(changeQuantity != null);
    assert(removeFromBasket != null);
    assert(setBranch != null);
    assert(setCustomerData != null);
    assert(changeCashAmount != null);
    assert(changePaymentMethod != null);
    assert(getListCashier != null);
    assert(setCashier != null);
    assert(saveTransaction != null);
    assert(loadTransaction != null);
    return loadTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult clearAll(ClearAll value),
    TResult addToBasket(AddToBasket value),
    TResult setSelectedBasket(SetSelectedBasket value),
    TResult changeQuantity(ChangeQuantity value),
    TResult removeFromBasket(RemoveFromBasket value),
    TResult setBranch(SetBranch value),
    TResult setCustomerData(SetCustomerData value),
    TResult changeCashAmount(ChangeCashAmount value),
    TResult changePaymentMethod(ChangePaymentMethod value),
    TResult getListCashier(GetListCashier value),
    TResult setCashier(SetCashier value),
    TResult saveTransaction(SaveTransaction value),
    TResult loadTransaction(LoadTransaction value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadTransaction != null) {
      return loadTransaction(this);
    }
    return orElse();
  }
}

abstract class LoadTransaction implements PaymentEvent {
  const factory LoadTransaction(TransactionHeaderModel transactionHeaderModel) =
      _$LoadTransaction;

  TransactionHeaderModel get transactionHeaderModel;
  @JsonKey(ignore: true)
  $LoadTransactionCopyWith<LoadTransaction> get copyWith;
}

/// @nodoc
class _$PaymentStateTearOff {
  const _$PaymentStateTearOff();

// ignore: unused_element
  _PaymentState call(
      {@required List<BasketModel> listBasketModel,
      @required BasketModel selectedBasketModel,
      @required String transactionId,
      @required double subTotal,
      @required double totalDiscount,
      @required double total,
      @required BranchModel branch,
      @required DateTime transactionDate,
      @required String customerName,
      @required String cashierName,
      @required String paymentMethod,
      @required double cashAmount,
      @required String username,
      @required List<String> listCashier,
      @required bool isLoading}) {
    return _PaymentState(
      listBasketModel: listBasketModel,
      selectedBasketModel: selectedBasketModel,
      transactionId: transactionId,
      subTotal: subTotal,
      totalDiscount: totalDiscount,
      total: total,
      branch: branch,
      transactionDate: transactionDate,
      customerName: customerName,
      cashierName: cashierName,
      paymentMethod: paymentMethod,
      cashAmount: cashAmount,
      username: username,
      listCashier: listCashier,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentState = _$PaymentStateTearOff();

/// @nodoc
mixin _$PaymentState {
  List<BasketModel> get listBasketModel;
  BasketModel get selectedBasketModel;
  String get transactionId;
  double get subTotal;
  double get totalDiscount;
  double get total;
  BranchModel get branch;
  DateTime get transactionDate;
  String get customerName;
  String get cashierName;
  String get paymentMethod;
  double get cashAmount;
  String get username;
  List<String> get listCashier;
  bool get isLoading;

  @JsonKey(ignore: true)
  $PaymentStateCopyWith<PaymentState> get copyWith;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res>;
  $Res call(
      {List<BasketModel> listBasketModel,
      BasketModel selectedBasketModel,
      String transactionId,
      double subTotal,
      double totalDiscount,
      double total,
      BranchModel branch,
      DateTime transactionDate,
      String customerName,
      String cashierName,
      String paymentMethod,
      double cashAmount,
      String username,
      List<String> listCashier,
      bool isLoading});

  $BasketModelCopyWith<$Res> get selectedBasketModel;
  $BranchModelCopyWith<$Res> get branch;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res> implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  final PaymentState _value;
  // ignore: unused_field
  final $Res Function(PaymentState) _then;

  @override
  $Res call({
    Object listBasketModel = freezed,
    Object selectedBasketModel = freezed,
    Object transactionId = freezed,
    Object subTotal = freezed,
    Object totalDiscount = freezed,
    Object total = freezed,
    Object branch = freezed,
    Object transactionDate = freezed,
    Object customerName = freezed,
    Object cashierName = freezed,
    Object paymentMethod = freezed,
    Object cashAmount = freezed,
    Object username = freezed,
    Object listCashier = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      listBasketModel: listBasketModel == freezed
          ? _value.listBasketModel
          : listBasketModel as List<BasketModel>,
      selectedBasketModel: selectedBasketModel == freezed
          ? _value.selectedBasketModel
          : selectedBasketModel as BasketModel,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId as String,
      subTotal: subTotal == freezed ? _value.subTotal : subTotal as double,
      totalDiscount: totalDiscount == freezed
          ? _value.totalDiscount
          : totalDiscount as double,
      total: total == freezed ? _value.total : total as double,
      branch: branch == freezed ? _value.branch : branch as BranchModel,
      transactionDate: transactionDate == freezed
          ? _value.transactionDate
          : transactionDate as DateTime,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName as String,
      cashierName:
          cashierName == freezed ? _value.cashierName : cashierName as String,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod as String,
      cashAmount:
          cashAmount == freezed ? _value.cashAmount : cashAmount as double,
      username: username == freezed ? _value.username : username as String,
      listCashier: listCashier == freezed
          ? _value.listCashier
          : listCashier as List<String>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }

  @override
  $BasketModelCopyWith<$Res> get selectedBasketModel {
    if (_value.selectedBasketModel == null) {
      return null;
    }
    return $BasketModelCopyWith<$Res>(_value.selectedBasketModel, (value) {
      return _then(_value.copyWith(selectedBasketModel: value));
    });
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
}

/// @nodoc
abstract class _$PaymentStateCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$PaymentStateCopyWith(
          _PaymentState value, $Res Function(_PaymentState) then) =
      __$PaymentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<BasketModel> listBasketModel,
      BasketModel selectedBasketModel,
      String transactionId,
      double subTotal,
      double totalDiscount,
      double total,
      BranchModel branch,
      DateTime transactionDate,
      String customerName,
      String cashierName,
      String paymentMethod,
      double cashAmount,
      String username,
      List<String> listCashier,
      bool isLoading});

  @override
  $BasketModelCopyWith<$Res> get selectedBasketModel;
  @override
  $BranchModelCopyWith<$Res> get branch;
}

/// @nodoc
class __$PaymentStateCopyWithImpl<$Res> extends _$PaymentStateCopyWithImpl<$Res>
    implements _$PaymentStateCopyWith<$Res> {
  __$PaymentStateCopyWithImpl(
      _PaymentState _value, $Res Function(_PaymentState) _then)
      : super(_value, (v) => _then(v as _PaymentState));

  @override
  _PaymentState get _value => super._value as _PaymentState;

  @override
  $Res call({
    Object listBasketModel = freezed,
    Object selectedBasketModel = freezed,
    Object transactionId = freezed,
    Object subTotal = freezed,
    Object totalDiscount = freezed,
    Object total = freezed,
    Object branch = freezed,
    Object transactionDate = freezed,
    Object customerName = freezed,
    Object cashierName = freezed,
    Object paymentMethod = freezed,
    Object cashAmount = freezed,
    Object username = freezed,
    Object listCashier = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_PaymentState(
      listBasketModel: listBasketModel == freezed
          ? _value.listBasketModel
          : listBasketModel as List<BasketModel>,
      selectedBasketModel: selectedBasketModel == freezed
          ? _value.selectedBasketModel
          : selectedBasketModel as BasketModel,
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId as String,
      subTotal: subTotal == freezed ? _value.subTotal : subTotal as double,
      totalDiscount: totalDiscount == freezed
          ? _value.totalDiscount
          : totalDiscount as double,
      total: total == freezed ? _value.total : total as double,
      branch: branch == freezed ? _value.branch : branch as BranchModel,
      transactionDate: transactionDate == freezed
          ? _value.transactionDate
          : transactionDate as DateTime,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName as String,
      cashierName:
          cashierName == freezed ? _value.cashierName : cashierName as String,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod as String,
      cashAmount:
          cashAmount == freezed ? _value.cashAmount : cashAmount as double,
      username: username == freezed ? _value.username : username as String,
      listCashier: listCashier == freezed
          ? _value.listCashier
          : listCashier as List<String>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_PaymentState implements _PaymentState {
  const _$_PaymentState(
      {@required this.listBasketModel,
      @required this.selectedBasketModel,
      @required this.transactionId,
      @required this.subTotal,
      @required this.totalDiscount,
      @required this.total,
      @required this.branch,
      @required this.transactionDate,
      @required this.customerName,
      @required this.cashierName,
      @required this.paymentMethod,
      @required this.cashAmount,
      @required this.username,
      @required this.listCashier,
      @required this.isLoading})
      : assert(listBasketModel != null),
        assert(selectedBasketModel != null),
        assert(transactionId != null),
        assert(subTotal != null),
        assert(totalDiscount != null),
        assert(total != null),
        assert(branch != null),
        assert(transactionDate != null),
        assert(customerName != null),
        assert(cashierName != null),
        assert(paymentMethod != null),
        assert(cashAmount != null),
        assert(username != null),
        assert(listCashier != null),
        assert(isLoading != null);

  @override
  final List<BasketModel> listBasketModel;
  @override
  final BasketModel selectedBasketModel;
  @override
  final String transactionId;
  @override
  final double subTotal;
  @override
  final double totalDiscount;
  @override
  final double total;
  @override
  final BranchModel branch;
  @override
  final DateTime transactionDate;
  @override
  final String customerName;
  @override
  final String cashierName;
  @override
  final String paymentMethod;
  @override
  final double cashAmount;
  @override
  final String username;
  @override
  final List<String> listCashier;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'PaymentState(listBasketModel: $listBasketModel, selectedBasketModel: $selectedBasketModel, transactionId: $transactionId, subTotal: $subTotal, totalDiscount: $totalDiscount, total: $total, branch: $branch, transactionDate: $transactionDate, customerName: $customerName, cashierName: $cashierName, paymentMethod: $paymentMethod, cashAmount: $cashAmount, username: $username, listCashier: $listCashier, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentState &&
            (identical(other.listBasketModel, listBasketModel) ||
                const DeepCollectionEquality()
                    .equals(other.listBasketModel, listBasketModel)) &&
            (identical(other.selectedBasketModel, selectedBasketModel) ||
                const DeepCollectionEquality()
                    .equals(other.selectedBasketModel, selectedBasketModel)) &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)) &&
            (identical(other.subTotal, subTotal) ||
                const DeepCollectionEquality()
                    .equals(other.subTotal, subTotal)) &&
            (identical(other.totalDiscount, totalDiscount) ||
                const DeepCollectionEquality()
                    .equals(other.totalDiscount, totalDiscount)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.branch, branch) ||
                const DeepCollectionEquality().equals(other.branch, branch)) &&
            (identical(other.transactionDate, transactionDate) ||
                const DeepCollectionEquality()
                    .equals(other.transactionDate, transactionDate)) &&
            (identical(other.customerName, customerName) ||
                const DeepCollectionEquality()
                    .equals(other.customerName, customerName)) &&
            (identical(other.cashierName, cashierName) ||
                const DeepCollectionEquality()
                    .equals(other.cashierName, cashierName)) &&
            (identical(other.paymentMethod, paymentMethod) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethod, paymentMethod)) &&
            (identical(other.cashAmount, cashAmount) ||
                const DeepCollectionEquality()
                    .equals(other.cashAmount, cashAmount)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.listCashier, listCashier) ||
                const DeepCollectionEquality()
                    .equals(other.listCashier, listCashier)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listBasketModel) ^
      const DeepCollectionEquality().hash(selectedBasketModel) ^
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(subTotal) ^
      const DeepCollectionEquality().hash(totalDiscount) ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(branch) ^
      const DeepCollectionEquality().hash(transactionDate) ^
      const DeepCollectionEquality().hash(customerName) ^
      const DeepCollectionEquality().hash(cashierName) ^
      const DeepCollectionEquality().hash(paymentMethod) ^
      const DeepCollectionEquality().hash(cashAmount) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(listCashier) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$PaymentStateCopyWith<_PaymentState> get copyWith =>
      __$PaymentStateCopyWithImpl<_PaymentState>(this, _$identity);
}

abstract class _PaymentState implements PaymentState {
  const factory _PaymentState(
      {@required List<BasketModel> listBasketModel,
      @required BasketModel selectedBasketModel,
      @required String transactionId,
      @required double subTotal,
      @required double totalDiscount,
      @required double total,
      @required BranchModel branch,
      @required DateTime transactionDate,
      @required String customerName,
      @required String cashierName,
      @required String paymentMethod,
      @required double cashAmount,
      @required String username,
      @required List<String> listCashier,
      @required bool isLoading}) = _$_PaymentState;

  @override
  List<BasketModel> get listBasketModel;
  @override
  BasketModel get selectedBasketModel;
  @override
  String get transactionId;
  @override
  double get subTotal;
  @override
  double get totalDiscount;
  @override
  double get total;
  @override
  BranchModel get branch;
  @override
  DateTime get transactionDate;
  @override
  String get customerName;
  @override
  String get cashierName;
  @override
  String get paymentMethod;
  @override
  double get cashAmount;
  @override
  String get username;
  @override
  List<String> get listCashier;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$PaymentStateCopyWith<_PaymentState> get copyWith;
}
