import 'dart:core';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_model.freezed.dart';

@freezed
abstract class ExpenseModel with _$ExpenseModel {
  factory ExpenseModel({
    String id,
    String itemName,
    DateTime dateTime,
    double itemCost,
  }) = _Expense;

  factory ExpenseModel.empty() => ExpenseModel(
        id: "",
        itemName: "",
        dateTime: DateTime(0),
        itemCost: 0,
      );
}
