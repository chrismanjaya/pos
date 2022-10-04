import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/cashier/product/product_bloc.dart';
import 'package:pos/presentation/cashier/component/product_card.dart';
import 'package:pos/presentation/core/widget_color.dart';

class Products extends StatelessWidget {
  const Products({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        if (state.isLoaded) {
          return Body(
            productState: state,
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
  final ProductState productState;
  const Body({
    Key key,
    @required this.productState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          itemCount: productState.listProductFiltered.length,
          itemBuilder: (context, index) => ProductCard(
            productModel: productState.listProductFiltered[index],
          ),
        ),
      ),
    );
  }
}
