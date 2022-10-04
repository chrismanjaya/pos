import 'package:flutter/material.dart';
import 'package:pos/application/transaction/transaction_bloc.dart';
import 'package:pos/domain/model/branch_model.dart';
import 'package:pos/presentation/core/formatter.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_path.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_style.dart';
import 'package:pos/presentation/receipt/component/transaction_detail_body.dart';
import 'package:pos/presentation/receipt/component/transaction_header.dart';
import 'package:pos/presentation/receipt/component/transaction_price.dart';

class Receipt extends StatelessWidget {
  final TransactionState state;
  final BranchModel branch;
  const Receipt({
    Key key,
    @required this.state,
    @required this.branch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sFormPayment,
      padding: EdgeInsets.all(sPaddingBody),
      color: kReceiptColor,
      child: Column(
        children: <Widget>[
          // Logo
          Container(
            width: sIconLauncher,
            margin: EdgeInsets.only(
              bottom: sPaddingContainer,
            ),
            child: Image(
              image: AssetImage(pathIconCompany),
            ),
          ),
          // Company Name
          Container(
            width: double.infinity,
            child: Text(
              "Classy Cut Barbershop",
              textAlign: TextAlign.center,
              style: yTextSubtitleReceipt,
            ),
          ),
          // Branch Address
          Container(
            width: double.infinity,
            child: Text(
              branch.address,
              textAlign: TextAlign.center,
              style: yTextNormalReceipt,
            ),
          ),
          // Branch Phone Number
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(
              bottom: sPaddingContainer,
            ),
            child: Text(
              "tlp. " + branch.phoneNumber,
              textAlign: TextAlign.center,
              style: yTextNormalReceipt,
            ),
          ),
          Divider(
            color: kTextReceiptColor,
          ),
          // Reference No
          TransactionHeader(
            title: "Reference No",
            value: state.referenceNumber.toUpperCase(),
          ),
          // Customer Name
          TransactionHeader(
            title: "Customer Name",
            value: state.transactionHeaderModel.customerName,
          ),
          // Transaction Date
          TransactionHeader(
            title: "Transaction Date",
            value: Formatter()
                .dateTimeToString(state.transactionHeaderModel.transactionDate),
          ),
          // Cashier
          TransactionHeader(
            title: "Cashier",
            value: state.transactionHeaderModel.cashier,
          ),

          Divider(
            color: kTextReceiptColor,
          ),
          // Transaction Detail
          Column(
            children: state.transactionHeaderModel.listTransactionDetailModel
                .map((transactionDetailModel) => TransactionDetailBody(
                      quantity:
                          transactionDetailModel.quantity.toString() + "x",
                      name: transactionDetailModel.itemName,
                      discount: Formatter().decimalGrouping(
                          transactionDetailModel.itemDiscount *
                              transactionDetailModel.quantity),
                      price: Formatter().decimalGrouping(
                          transactionDetailModel.itemPrice *
                              transactionDetailModel.quantity),
                      isDiscount: (transactionDetailModel.itemDiscount > 0),
                    ))
                .toList(),
          ),
          Divider(
            color: kTextReceiptColor,
          ),
          // Transaction Price
          Container(
            child: Column(
              children: <Widget>[
                // Subtotal
                TransactionPrice(
                  title: "Subtotal",
                  value: state.transactionHeaderModel.subtotal,
                ),
                // Total Discount
                TransactionPrice(
                  title: "Discount",
                  value: state.transactionHeaderModel.discount,
                ),
                // Total
                TransactionPrice(
                  title: "Total",
                  value: state.transactionHeaderModel.total,
                ),
                Divider(
                  color: kTextReceiptColor,
                ),
                // Payment Method
                TransactionPrice(
                  title:
                      state.transactionHeaderModel.paymentMethod.toUpperCase(),
                  value: state.transactionHeaderModel.cashAmount,
                ),
                // Change
                TransactionPrice(
                  title: "Change",
                  value: state.transactionHeaderModel.cashAmount -
                      state.transactionHeaderModel.total,
                ),
              ],
            ),
          ),
          // Thank You
          Container(
            margin: EdgeInsets.symmetric(
              vertical: sPaddingContainer,
            ),
            child: Text(
              "- Thank You For Purchasing -",
              style: yTextNormalReceipt,
            ),
          ),
        ],
      ),
    );
  }
}
