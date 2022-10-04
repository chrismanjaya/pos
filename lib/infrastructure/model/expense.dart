import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense.freezed.dart';

@freezed
abstract class Expense with _$Expense {
  factory Expense({
    String id,
    String itemName,
    Timestamp dateTime,
    int itemCost,
  }) = _Expense;

  factory Expense.empty() => Expense(
        id: "",
        itemName: "",
        dateTime: Timestamp.now(),
        itemCost: 0,
      );
}
