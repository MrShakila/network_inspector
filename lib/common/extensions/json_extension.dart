import 'dart:convert';

extension JsonExtension on String? {
  String get prettify {
    final value = this;
    if (value != null) {
      try {
        var decoded = json.decode(value);
        var encoder = const JsonEncoder.withIndent('   ');
        return encoder.convert(decoded);
      } catch (e) {
        return value;
      }
    }
    return 'N/A';
  }
}
