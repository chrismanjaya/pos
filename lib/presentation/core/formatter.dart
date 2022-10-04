import 'package:intl/intl.dart';

class Formatter {
  String decimalGrouping(double value) {
    return new NumberFormat("#,###").format(value);
  }

  String dateTimeToString(DateTime date) {
    return DateFormat('yyyy-MM-dd kk:mm').format(date);
  }

  String dateTimeToDateString(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }

  double stringToDouble(String value) {
    try {
      return double.parse(value.replaceAll(new RegExp(r"\D"), ""));
    } catch (error) {
      return 0;
    }
  }

  String generateFileName(String name, String extention) {
    String dateTime = DateFormat('yyyyMMdd_kkmm').format(DateTime.now());
    return dateTime + "_" + name + extention;
  }
}
