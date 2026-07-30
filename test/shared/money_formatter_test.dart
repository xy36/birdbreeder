import 'package:birdbreeder/services/currency/currency_service.dart';
import 'package:birdbreeder/shared/utils/formatter/money_formatter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MoneyFormatter', () {
    test('German EUR uses comma decimals and trailing symbol', () {
      final money = MoneyFormatter(locale: 'de', currencyCode: 'EUR');
      expect(money.format(1234.5), '1.234,50 €');
      expect(money.format(1234.5, decimals: false), '1.235 €');
      expect(money.symbol, '€');
    });

    test('English USD uses leading symbol and dot decimals', () {
      final money = MoneyFormatter(locale: 'en', currencyCode: 'USD');
      expect(money.format(1234.5), r'$1,234.50');
      expect(money.symbol, r'$');
    });

    test('signed always shows an explicit sign', () {
      final money = MoneyFormatter(locale: 'de', currencyCode: 'EUR');
      expect(money.signed(10), '+10,00 €');
      expect(money.signed(-10), '−10,00 €');
    });

    test('withSign formats the magnitude behind the given sign', () {
      final money = MoneyFormatter(locale: 'de', currencyCode: 'EUR');
      expect(money.withSign('−', 25), '−25,00 €');
      expect(money.withSign('−', -25), '−25,00 €');
    });

    test('amount omits the symbol but keeps locale grouping', () {
      final money = MoneyFormatter(locale: 'de', currencyCode: 'EUR');
      expect(money.amount(1234.5), '1.234,50');
      expect(money.amount(1234.5, decimals: false), '1.235');
    });

    test('every supported currency formats without throwing', () {
      for (final code in CurrencyService.supported) {
        for (final locale in ['de', 'en', 'nl', 'fr', 'it', 'es']) {
          final money = MoneyFormatter(locale: locale, currencyCode: code);
          expect(money.format(9.99), isNotEmpty, reason: '$code/$locale');
          expect(money.symbol, isNotEmpty, reason: '$code/$locale');
        }
      }
    });
  });

  group('CurrencyService', () {
    test('deviceDefault returns a supported code', () {
      expect(
        CurrencyService.supported,
        contains(CurrencyService.deviceDefault()),
      );
    });
  });
}
