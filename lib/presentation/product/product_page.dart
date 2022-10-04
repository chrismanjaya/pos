import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/application/product/product_bloc.dart';
import 'package:pos/injection.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/product/component/list_product.dart';
import 'package:pos/presentation/product/component/selected_product.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductBloc>(
      create: (context) =>
          getIt<ProductBloc>()..add(ProductEvent.getAllProduct()),
      child: WillPopScope(
        // ignore: missing_return
        onWillPop: () {},
        child: Scaffold(
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.all(sPaddingBody),
              child: Row(
                children: [
                  // Selected Product
                  Expanded(
                    child: SelectedProduct(),
                  ),
                  SizedBox(
                    width: sPaddingBody,
                  ),
                  // List Product
                  Expanded(
                    child: ListProduct(),
                  ),
                ],
              ),
            ),
          ),
          resizeToAvoidBottomInset: true,
        ),
      ),
    );
  }
}
