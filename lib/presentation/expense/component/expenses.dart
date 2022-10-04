import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/expense/expense_bloc.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/expense/component/expense_card.dart';

class Expenses extends StatelessWidget {
  const Expenses({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpenseBloc, ExpenseState>(
      builder: (context, state) {
        if (state.isLoaded) {
          return Body(
            expenseState: state,
          );
        } else {
          return Container(
            child: LinearProgressIndicator(
              backgroundColor: kSecondColor,
              valueColor: const AlwaysStoppedAnimation<Color>(kAccentColor),
            ),
          );
        }
      },
    );
  }
}

class Body extends StatelessWidget {
  final ExpenseState expenseState;
  const Body({
    Key key,
    @required this.expenseState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          itemCount: expenseState.listExpenseFiltered.length,
          itemBuilder: (context, index) => ExpenseCard(
            expenseModel: expenseState.listExpenseFiltered[index],
          ),
        ),
      ),
    );
  }
}
