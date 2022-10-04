import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/cashier/payment/payment_bloc.dart';
import 'package:pos/presentation/cashier/component/basket_footer.dart';
import 'package:pos/presentation/cashier/component/basket_header.dart';
import 'package:pos/presentation/cashier/component/item_card.dart';

class Basket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentBloc, PaymentState>(
      builder: (context, state) => Expanded(
        child: Container(
          child: Column(
            children: <Widget>[
              // Basket Header
              BasketHeader(),
              // Basket Items
              Expanded(
                child: ListView.builder(
                  itemCount: state.listBasketModel.length,
                  itemBuilder: (context, index) => ItemCard(
                    basketModel: state.listBasketModel[index],
                  ),
                ),
              ),
              // Basket Footer
              BasketFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
