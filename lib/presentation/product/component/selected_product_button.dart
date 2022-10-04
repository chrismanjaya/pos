import 'package:flutter/material.dart';
import 'package:pos/application/product/product_bloc.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_duration.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectedProductButton extends StatelessWidget {
  const SelectedProductButton({
    Key key,
    @required this.isAuthorizedChange,
  }) : super(key: key);

  final bool isAuthorizedChange;

  @override
  Widget build(BuildContext context) {
    ProductBloc _productBloc = context.read<ProductBloc>();
    return BlocListener<ProductBloc, ProductState>(
      listener: (context, state) {
        if (state.message.length > 0) {
          final snackBar = SnackBar(
            duration: dNormal,
            backgroundColor: kUIPrimaryColor,
            content: Text(
              state.message,
              style: yTextNormal,
            ),
            action: SnackBarAction(
              label: textButtonClose,
              textColor: kTextPrimaryColor,
              onPressed: () {},
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          if (!state.isError) {
            _productBloc.add(ProductEvent.getAllProduct());
            _productBloc.add(ProductEvent.clearSelectedProduct());
          }
        }
      },
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) => Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: sPaddingBody),
              child: (state.isLoading)
                  ? LinearProgressIndicator(
                      backgroundColor: kSecondColor,
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(kAccentColor),
                    )
                  : Container(),
            ),
            Row(
              children: <Widget>[
                // Button Add
                Expanded(
                  child: ElevatedButton(
                    onPressed: isAuthorizedChange
                        ? (_productBloc.state.selectedProduct.name.isEmpty ||
                                _productBloc.state.selectedProduct.price == 0)
                            ? null
                            : () {
                                _productBloc.add(ProductEvent.addProduct());
                              }
                        : null,
                    style: yButtonFormAdd,
                    child: Text(
                      textButtonAdd,
                      style: yTextBoldDark,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: sPaddingContainer,
                ),
                // Button Update
                Expanded(
                  child: ElevatedButton(
                    onPressed: (isAuthorizedChange &&
                            _productBloc.state.selectedProduct.id != "")
                        ? () {
                            _productBloc.add(ProductEvent.updateProduct());
                          }
                        : null,
                    style: yButtonFormUpdate,
                    child: Text(
                      textButtonUpdate,
                      style: yTextBoldDark,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: sPaddingContainer,
                ),
                // Button Delete
                Expanded(
                  child: ElevatedButton(
                    onPressed: (isAuthorizedChange &&
                            _productBloc.state.selectedProduct.id != "")
                        ? () {
                            _productBloc.add(ProductEvent.deleteProduct());
                          }
                        : null,
                    style: yButtonFormDelete,
                    child: Text(
                      textButtonDelete,
                      style: yTextBoldDark,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
