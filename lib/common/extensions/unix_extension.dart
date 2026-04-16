import 'package:intl/intl.dart';

extension UnixExtension on int? {
  String? get convertToYmdHms {
    final value = this;
    if (value != null) {
      var dateFormat = DateFormat('y-MM-DD hh:mm:ss');
      var dateTime = DateTime.fromMillisecondsSinceEpoch(value);
      return dateFormat.format(dateTime);
    }
    return null;
  }
}
