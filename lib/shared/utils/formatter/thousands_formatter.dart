import 'package:intl/number_symbols.dart';
import 'package:intl/number_symbols_data.dart';
import 'package:number_text_input_formatter/number_text_input_formatter.dart';

class ThousandsFormatter {
  ThousandsFormatter(this.locale) {
    localizedSymbols = numberFormatSymbols[locale];
  }
  final String locale;
  late final NumberSymbols? localizedSymbols;

  NumberTextInputFormatter get formatter {
    return NumberTextInputFormatter(
      decimalDigits: 2,
      groupDigits: 3,
      decimalSeparator: localizedSymbols?.DECIMAL_SEP ?? '.',
      groupSeparator: localizedSymbols?.GROUP_SEP ?? ',',
    );
  }

  String? unformat(String? value) {
    return (int.tryParse(
              (value ?? '')
                  .replaceAll(localizedSymbols?.DECIMAL_SEP ?? '.', '')
                  .replaceAll(localizedSymbols?.GROUP_SEP ?? ',', ''),
            ) ??
            '')
        .toString();
  }
}
