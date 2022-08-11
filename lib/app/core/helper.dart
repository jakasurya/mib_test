import 'package:intl/intl.dart';

class FormatRupiah {
  static String toIdr(dynamic number) {
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp ',
      decimalDigits: 2,
    );
    return currencyFormatter.format(number);
  }
}
