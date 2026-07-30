import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/services/locale/locale_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('shipped locales', () {
    test('every locale ships a complete, non-empty translation set', () async {
      for (final locale in AppLocale.values) {
        final translations = await locale.build();
        final tag = locale.languageTag;
        expect(translations.app.title, isNotEmpty, reason: tag);
        expect(translations.account.language.title, isNotEmpty, reason: tag);
        expect(translations.bird.title, isNotEmpty, reason: tag);
        expect(translations.export.lists.birds, isNotEmpty, reason: tag);
        expect(
          translations.documents.types.pedigree.label,
          isNotEmpty,
          reason: tag,
        );
        expect(translations.pop_up_menu.documents, isNotEmpty, reason: tag);
      }
    });

    test('plurals resolve per locale, including Dutch', () async {
      for (final locale in AppLocale.values) {
        await LocaleService.apply(locale);
        final tag = locale.languageTag;
        final one = t.brood.eggs_count(count: 1, Count: 1);
        final many = t.brood.eggs_count(count: 5, Count: 5);

        expect(one, isNotEmpty, reason: tag);
        expect(many, contains('5'), reason: tag);
        expect(one, isNot(equals(many)), reason: tag);
      }
    });
  });
}
