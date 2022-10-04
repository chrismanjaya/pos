import 'package:bluetooth_thermal_printer/bluetooth_thermal_printer.dart';
import 'package:esc_pos_utils/esc_pos_utils.dart';
import 'package:flutter/material.dart';
import 'package:pos/domain/model/branch_model.dart';
import 'package:pos/domain/model/transaction_detail_model.dart';
import 'package:pos/domain/model/transaction_header_model.dart';
import 'package:pos/presentation/core/formatter.dart';
import 'package:pos/presentation/core/widget_color.dart';
import 'package:pos/presentation/core/widget_duration.dart';
import 'package:pos/presentation/core/widget_size.dart';
import 'package:pos/presentation/core/widget_string.dart';
import 'package:pos/presentation/core/widget_style.dart';

class PrintAll extends StatefulWidget {
  final List<TransactionHeaderModel> listTransactionHeaderModel;
  final BranchModel branch;

  const PrintAll({
    Key key,
    @required this.listTransactionHeaderModel,
    @required this.branch,
  }) : super(key: key);

  @override
  _PrintState createState() => _PrintState();
}

class _PrintState extends State<PrintAll> {
  bool _isLoading = true;
  bool _isPressed = false;
  List _devices = [];

  @override
  void initState() {
    super.initState();
    _getBluetooth();
  }

  Future<void> _getBluetooth() async {
    final List devices = await BluetoothThermalPrinter.getBluetooths;
    setState(() {
      _devices = devices;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Print",
          style: yTextBold,
        ),
      ),
      body: Container(
        child: (_isLoading)
            // Loading
            ? Center(
                child: CircularProgressIndicator(),
              )
            // Device Not Found
            : Container(
                child: (_devices.isEmpty)
                    ? Center(
                        child: Text(
                          "No Devices",
                          style: yTextBold,
                        ),
                      )
                    // List Devices
                    : Container(
                        child: Stack(
                          children: <Widget>[
                            ListView.builder(
                              padding: EdgeInsets.symmetric(
                                horizontal: sPaddingBody,
                              ),
                              itemCount: _devices.length,
                              itemBuilder: (context, index) {
                                String deviceName =
                                    _devices[index].toString().split("#")[0];
                                String deviceAddress =
                                    _devices[index].toString().split("#")[1];

                                return ListTile(
                                  leading: Icon(
                                    Icons.print,
                                    color: kTextPrimaryColor,
                                  ),
                                  title: Text(
                                    deviceName,
                                    style: yTextBold,
                                  ),
                                  subtitle: Text(
                                    deviceAddress,
                                    style: yTextNormal,
                                  ),
                                  onTap: () async {
                                    setState(
                                      () {
                                        _isPressed = true;
                                      },
                                    );
                                    final isConnected =
                                        await BluetoothThermalPrinter
                                            .connectionStatus;
                                    if (isConnected == "true") {
                                      // Do Print
                                      _startPrint();
                                    } else {
                                      await BluetoothThermalPrinter.connect(
                                        deviceAddress,
                                      ).then(
                                        (isConnected) {
                                          print(isConnected);

                                          if (isConnected == "true") {
                                            // Do Print
                                            _startPrint();
                                          } else {
                                            // Error
                                            final snackBar = SnackBar(
                                              duration: dNormal,
                                              backgroundColor: kUIDangerColor,
                                              content: Text(
                                                "Device is not connected",
                                                style: yTextNormal,
                                              ),
                                              action: SnackBarAction(
                                                label: textButtonClose,
                                                textColor: kTextPrimaryColor,
                                                onPressed: () {},
                                              ),
                                            );
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(snackBar);
                                          }
                                        },
                                      );
                                    }
                                    setState(
                                      () {
                                        _isPressed = false;
                                      },
                                    );
                                  },
                                );
                              },
                            ),
                            (_isPressed)
                                ? Container(
                                    color: Colors.black.withOpacity(0.5),
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
              ),
      ),
    );
  }

  Future<void> _startPrint() async {
    List<int> bytes = await getTicket();
    final result = await BluetoothThermalPrinter.writeBytes(bytes);

    return Navigator.pop(context, "Print Receipt: " + result);
  }

  Future<List<int>> getTicket() async {
    List<int> bytes = [];
    CapabilityProfile profile = await CapabilityProfile.load();
    final generator = Generator(PaperSize.mm58, profile);

    // Header: Title
    bytes += generator.text(
      "Classy Cut",
      styles: PosStyles(
        align: PosAlign.center,
        height: PosTextSize.size2,
        width: PosTextSize.size2,
      ),
    );
    bytes += generator.text(
      "Barbershop",
      styles: PosStyles(
        align: PosAlign.center,
        height: PosTextSize.size2,
        width: PosTextSize.size2,
      ),
      linesAfter: 1,
    );

    // Header: Branch Address
    for (String word in _convertSentence(widget.branch.address, 32)) {
      bytes += generator.text(
        word,
        styles: PosStyles(
          align: PosAlign.center,
          height: PosTextSize.size1,
          width: PosTextSize.size1,
        ),
      );
    }

    bytes += generator.text(
      "--------------------------------",
      styles: PosStyles(
        align: PosAlign.center,
        height: PosTextSize.size1,
        width: PosTextSize.size1,
      ),
    );

    // Header: Transaction Date
    bytes += generator.text(
      "Date: " +
          Formatter().dateTimeToString(
              widget.listTransactionHeaderModel[0].transactionDate),
      styles: PosStyles(
        align: PosAlign.left,
        height: PosTextSize.size1,
        width: PosTextSize.size1,
      ),
    );

    bytes += generator.text(
      "--------------------------------",
      styles: PosStyles(
        align: PosAlign.center,
        height: PosTextSize.size1,
        width: PosTextSize.size1,
      ),
    );

    // Convert List to TransactionHeaderModel
    TransactionHeaderModel transactionHeaderModel =
        TransactionHeaderModel.empty();
    List<TransactionDetailModel> listTransactionDetailModel = [];
    double subtotal = 0;
    double total = 0;
    double discount = 0;

    for (TransactionHeaderModel headerModel
        in widget.listTransactionHeaderModel) {
      if (headerModel.status == "Done") {
        total = total + headerModel.total;
        subtotal = subtotal + headerModel.subtotal;
        discount = discount + headerModel.discount;

        for (TransactionDetailModel detailModel
            in headerModel.listTransactionDetailModel) {
          var index = listTransactionDetailModel.indexWhere(
              (element) => element.itemName == detailModel.itemName);
          if (index >= 0) {
            listTransactionDetailModel[index] =
                listTransactionDetailModel[index].copyWith(
              quantity: listTransactionDetailModel[index].quantity +
                  detailModel.quantity,
            );
          } else {
            listTransactionDetailModel.add(detailModel);
          }
        }
      }
    }
    transactionHeaderModel = transactionHeaderModel.copyWith(
      listTransactionDetailModel: listTransactionDetailModel,
      subtotal: subtotal,
      total: total,
      discount: discount,
    );
    // Body: Transaction Detail
    for (TransactionDetailModel transactionDetailModel
        in transactionHeaderModel.listTransactionDetailModel) {
      // Transaction Detail: Item Name
      bytes += generator.text(
        transactionDetailModel.itemName,
        styles: PosStyles(
          align: PosAlign.left,
          height: PosTextSize.size1,
          width: PosTextSize.size1,
        ),
      );

      // Transaction Detail: Item Price
      bytes += generator.row(
        [
          PosColumn(
            text:
                Formatter().decimalGrouping(transactionDetailModel.itemPrice) +
                    " x" +
                    transactionDetailModel.quantity.toString(),
            styles: PosStyles(
              align: PosAlign.left,
            ),
            width: 4,
          ),
          PosColumn(
            text: Formatter().decimalGrouping(transactionDetailModel.itemPrice *
                transactionDetailModel.quantity),
            styles: PosStyles(
              align: PosAlign.right,
            ),
            width: 8,
          )
        ],
      );
      if (transactionDetailModel.itemDiscount > 0) {
        // Transaction Detail: Item Discount
        bytes += generator.text(
          "disc: " +
              Formatter().decimalGrouping((transactionDetailModel.itemDiscount -
                      transactionDetailModel.itemPrice) *
                  transactionDetailModel.quantity),
          styles: PosStyles(
            align: PosAlign.right,
            height: PosTextSize.size1,
            width: PosTextSize.size1,
          ),
        );
      }
    }

    bytes += generator.text(
      "--------------------------------",
      styles: PosStyles(
        align: PosAlign.center,
        height: PosTextSize.size1,
        width: PosTextSize.size1,
      ),
    );

    // Footer: Subtotal
    bytes += generator.row(
      [
        PosColumn(
          text: "Subtotal",
          styles: PosStyles(
            align: PosAlign.left,
          ),
          width: 5,
        ),
        PosColumn(
          text: Formatter().decimalGrouping(transactionHeaderModel.subtotal),
          styles: PosStyles(
            align: PosAlign.right,
          ),
          width: 7,
        ),
      ],
    );

    // Footer: Discount
    bytes += generator.row(
      [
        PosColumn(
          text: "Discount",
          styles: PosStyles(
            align: PosAlign.left,
          ),
          width: 5,
        ),
        PosColumn(
          text: Formatter().decimalGrouping(transactionHeaderModel.discount),
          styles: PosStyles(
            align: PosAlign.right,
          ),
          width: 7,
        ),
      ],
    );

    // Footer: Total
    bytes += generator.row(
      [
        PosColumn(
          text: "Total",
          styles: PosStyles(
            align: PosAlign.left,
          ),
          width: 5,
        ),
        PosColumn(
          text: Formatter().decimalGrouping(transactionHeaderModel.total),
          styles: PosStyles(
            align: PosAlign.right,
          ),
          width: 7,
        ),
      ],
    );

    bytes += generator.cut();
    return bytes;
  }

  List<String> _convertSentence(String input, int maxChar) {
    List<String> results = [];

    String sentence = "";
    for (String word in input.split(" ")) {
      String prevSentence = sentence;
      String space = (sentence == "") ? "" : " ";
      sentence = sentence + space + word;

      if (sentence.length > maxChar && prevSentence != "") {
        results.add(prevSentence.trim());
        sentence = word;
      }
    }
    if (sentence.length > 0) {
      results.add(sentence);
    }

    return results;
  }
}
