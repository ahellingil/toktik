import 'package:intl/intl.dart';

class HumanFormats {
  static String readableNumber(double number) {
    return NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);
  }
}
