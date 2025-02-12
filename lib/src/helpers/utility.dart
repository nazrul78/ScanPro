import 'package:intl/intl.dart';

class Utility {
  /// To get 24h format DateTime
  static String? formatDateTimeIn24Hour(DateTime date) {
    final df = DateFormat('yyyy-MM-dd HH:mm:ss');
    String formatedString = df.format(date);

    return formatedString;
  }

  static String? formatDateTimeIn12Hour(DateTime date) {
    final df = DateFormat('yyyy-MM-dd hh:mm:ss');
    String formatedString = df.format(date);

    return formatedString;
  }
}
