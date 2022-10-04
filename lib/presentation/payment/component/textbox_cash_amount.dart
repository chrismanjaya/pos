import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:pos/application/cashier/payment/payment_bloc.dart';
import 'package:pos/presentation/core/formatter.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextboxCashAmount extends StatelessWidget {
  const TextboxCashAmount({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PaymentBloc _paymentBloc = context.read<PaymentBloc>();
    var _controller = new MoneyMaskedTextController(
      precision: 0,
      decimalSeparator: "",
      thousandSeparator: ",",
    );
    _controller.updateValue(_paymentBloc.state.cashAmount);
    return TextFormField(
      onChanged: (value) {
        _paymentBloc.add(
            PaymentEvent.changeCashAmount(Formatter().stringToDouble(value)));
      },
      controller: _controller,
      style: yTextNormal,
      textAlign: TextAlign.left,
      maxLines: 1,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: sTextNormal),
        fillColor: kPrimaryColor,
        filled: true,
        focusedBorder: yBorderSearch,
        enabledBorder: yBorderSearch,
        errorBorder: yBorderSearch,
        border: yBorderSearch,
        prefix: Text(
          "Rp  ",
          style: yTextNormalAccent,
        ),
      ),
    );
  }
}
