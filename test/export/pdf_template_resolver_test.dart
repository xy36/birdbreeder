import 'package:birdbreeder/features/export/data/pdf_template_resolver.dart';
import 'package:birdbreeder/features/export/domain/export_context.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final translations = AppLocale.de.buildSync();
  final breeder = Contact.create().copyWith(
    id: 'p1',
    number: 'Z-42',
    firstName: 'Max',
    lastName: 'Mustermann',
    address: 'Musterweg 1',
    postalCode: '12345',
    city: 'Musterstadt',
  );

  ExportContext contextWith({
    Contact? contact,
    List<String> filters = const [],
    int rowCount = 42,
  }) =>
      ExportContext(
        listTitle: 'Bestandsliste',
        rowCount: rowCount,
        generatedAt: DateTime(2026, 7, 29),
        breeder: contact,
        activeFilters: filters,
      );

  String? resolve(String? template, {ExportContext? context}) =>
      PdfTemplateResolver.resolve(
        template,
        context ?? contextWith(contact: breeder),
        translations,
      );

  test('fills every offered placeholder', () {
    final context = contextWith(
      contact: breeder,
      filters: ['Art: Wellensittich', 'Voliere 3'],
    );

    expect(resolve('{{liste}}', context: context), 'Bestandsliste');
    expect(resolve('{{zuechter}}', context: context), 'Max Mustermann');
    expect(resolve('{{zuechternummer}}', context: context), 'Z-42');
    expect(
      resolve('{{adresse}}', context: context),
      'Musterweg 1, 12345 Musterstadt',
    );
    expect(resolve('{{datum}}', context: context), '29.07.2026');
    expect(resolve('{{anzahl}}', context: context), '42 Einträge');
    expect(
      resolve('{{filter}}', context: context),
      'Art: Wellensittich · Voliere 3',
    );
  });

  test('mixes placeholders with surrounding text', () {
    expect(
      resolve('Bestand {{datum}} — {{zuechter}}'),
      'Bestand 29.07.2026 — Max Mustermann',
    );
  });

  test('leaves an unknown placeholder untouched so a typo stays visible', () {
    expect(resolve('{{zuchter}}'), '{{zuchter}}');
  });

  test('collapses to null when nothing resolves', () {
    expect(resolve('{{zuechternummer}}', context: contextWith()), isNull);
  });

  test('returns null for empty or blank templates', () {
    expect(resolve(null), isNull);
    expect(resolve(''), isNull);
    expect(resolve('   '), isNull);
  });

  test('drops placeholders the breeder has no value for', () {
    final partial = Contact.create().copyWith(id: 'p2', firstName: 'Anna');

    expect(
      resolve(
        '{{zuechter}} {{zuechternummer}}',
        context: contextWith(contact: partial),
      ),
      'Anna',
    );
  });

  test('uses the singular row label for a single row', () {
    expect(
      resolve('{{anzahl}}', context: contextWith(rowCount: 1)),
      '1 Eintrag',
    );
  });

  test('renders an empty filter list as nothing', () {
    expect(resolve('{{filter}}'), isNull);
  });
}
