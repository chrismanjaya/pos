import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:pos/application/cashier/payment/payment_bloc.dart';
import 'package:pos/domain/model/basket_model.dart';
import 'package:pos/presentation/core/formatter.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemCard extends StatelessWidget {
  final BasketModel basketModel;

  const ItemCard({
    Key key,
    @required this.basketModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PaymentBloc _paymentBloc = context.read<PaymentBloc>();
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.13,
      secondaryActions: <Widget>[
        IconSlideAction(
          color: kUIDangerColor,
          foregroundColor: kPrimaryColor,
          icon: Icons.delete,
          onTap: () {
            _paymentBloc
                .add(PaymentEvent.removeFromBasket(basketModel.product));
          },
        ),
      ],
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: sPaddingContainer),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: sLineNormal,
              color: kSecondColor,
            ),
          ),
        ),
        child: Row(
          children: <Widget>[
            // Item Quantity
            Container(
              width: sButtonIcon,
              margin: EdgeInsets.only(right: sPaddingContainer),
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) =>
                        changeItemQuantityDialog(context, _paymentBloc),
                  );
                },
                style: yButtonCircleQuantity,
                child: Text(
                  basketModel.quantity.toString() + "x",
                  textAlign: TextAlign.center,
                  style: yTextMiniAccent,
                ),
              ),
            ),
            // Item Name
            Expanded(
              flex: 2,
              child: Container(
                child: Text(
                  basketModel.product.name,
                  style: yTextNormal,
                ),
              ),
            ),
            // Item Price
            Expanded(
              flex: 1,
              child: Container(
                child: (basketModel.product.discount > 0)
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          // Item Price
                          Text(
                            Formatter().decimalGrouping(
                                basketModel.product.price *
                                    basketModel.quantity),
                            textAlign: TextAlign.right,
                            style: yTextStrikeThrough,
                          ),
                          // Item Discount
                          Text(
                            Formatter().decimalGrouping(
                                basketModel.product.discount *
                                    basketModel.quantity),
                            textAlign: TextAlign.right,
                            style: yTextBold,
                          ),
                        ],
                      )
                    : Text(
                        Formatter().decimalGrouping(
                            basketModel.product.price * basketModel.quantity),
                        textAlign: TextAlign.right,
                        style: yTextBold,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AlertDialog changeItemQuantityDialog(
    BuildContext context,
    PaymentBloc paymentBloc,
  ) {
    paymentBloc.add(PaymentEvent.setSelectedBasket(basketModel));
    return AlertDialog(
      backgroundColor: kPrimaryColor,
      title: Text(
        textChangeItemQuantity,
        style: yTextNormal,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            return Navigator.of(context, rootNavigator: true).pop();
          },
          child: Text(
            "Close",
            style: yTextBold,
          ),
        ),
      ],
      content: SingleChildScrollView(
        child: BlocBuilder<PaymentBloc, PaymentState>(
          builder: (context, state) {
            TextEditingController _controller = TextEditingController();
            _controller.text = state.selectedBasketModel.quantity.toString();
            _controller.selection = TextSelection.fromPosition(
                TextPosition(offset: _controller.text.length));
            return Container(
              width: sFormSignIn / 2,
              child: Row(
                children: <Widget>[
                  // Button Decrease
                  Container(
                    width: sButtonForm,
                    color: kPrimaryColor,
                    child: ElevatedButton(
                      onPressed: () {
                        paymentBloc.add(
                          PaymentEvent.changeQuantity(basketModel.copyWith(
                            quantity: state.selectedBasketModel.quantity - 1,
                          )),
                        );
                      },
                      style: yButtonCircleAccent,
                      child: Icon(
                        Icons.remove,
                        color: kPrimaryColor,
                        size: sIcon,
                      ),
                    ),
                  ),
                  // Item Quantity
                  Expanded(
                    child: TextFormField(
                      enabled: false,
                      controller: _controller,
                      textAlign: TextAlign.center,
                      style: yTextDisabled,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 0, horizontal: sPaddingBody),
                        filled: true,
                        fillColor: kPrimaryColor,
                        enabledBorder: yBorderNormal,
                        disabledBorder: yBorderDisabled,
                        focusedBorder: yBorderFocus,
                        errorBorder: yBorderError,
                        focusedErrorBorder: yBorderError,
                      ),
                    ),
                  ),
                  // Button Increase
                  Container(
                    width: sButtonForm,
                    color: kPrimaryColor,
                    child: ElevatedButton(
                      onPressed: () {
                        paymentBloc.add(
                          PaymentEvent.changeQuantity(basketModel.copyWith(
                            quantity: state.selectedBasketModel.quantity + 1,
                          )),
                        );
                      },
                      style: yButtonCircleAccent,
                      child: Icon(
                        Icons.add,
                        color: kPrimaryColor,
                        size: sIcon,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  // AlertDialog changeItemQuantityDialog(
  //     BuildContext context, PaymentBloc paymentBloc) {
  //   TextEditingController _controller =
  //       TextEditingController(text: itemQuantity.toString());
  //   return AlertDialog(
  //     backgroundColor: kPrimaryColor,
  //     title: Text(
  //       textChangeItemQuantity,
  //       style: yTextNormal,
  //     ),
  //     content: SingleChildScrollView(
  //       child: Container(
  //           width: sFormSignIn,
  //           child: Row(
  //             children: <Widget>[
  //               Expanded(
  //                 child: TextFormField(
  //                   controller: _controller,
  //                   style: yTextNormal,
  //                   textAlign: TextAlign.center,
  //                   maxLines: 1,
  //                   keyboardType: TextInputType.number,
  //                   textInputAction: TextInputAction.done,
  //                   decoration: InputDecoration(
  //                     contentPadding: EdgeInsets.only(left: sTextNormal),
  //                     fillColor: kPrimaryColor,
  //                     focusedBorder: yBorderSearch,
  //                     enabledBorder: yBorderSearch,
  //                     errorBorder: yBorderSearch,
  //                     border: yBorderSearch,
  //                   ),
  //                 ),
  //               ),
  //               TextButton(
  //                 onPressed: () {
  //                   Navigator.of(context, rootNavigator: true).pop();
  //                 },
  //                 child: Icon(
  //                   Icons.close,
  //                   color: kUIDangerColor,
  //                   size: sIcon,
  //                 ),
  //               ),
  //               TextButton(
  //                 onPressed: () {
  //                   if (Utils().isNumeric(_controller.text)) {
  //                     paymentBloc.add(PaymentEvent.changeQuantity(
  //                         productModel, int.parse(_controller.text)));
  //                   }
  //                   Navigator.of(context, rootNavigator: true).pop();
  //                 },
  //                 child: Icon(
  //                   Icons.check,
  //                   color: kUISuccessColor,
  //                   size: sIcon,
  //                 ),
  //               ),
  //             ],
  //           )),
  //     ),
  //   );
  // }
}
