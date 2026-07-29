import 'package:birdbreeder/features/export/data/pdf_header_repository.dart';
import 'package:birdbreeder/models/pdf_header/entity/pdf_header_profile.dart';
import 'package:birdbreeder/services/database/app_database.dart';
import 'package:birdbreeder/services/images/image_reference_resolver.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const repository = PdfHeaderRepository();
  late AppDatabase db;

  setUp(() {
    db = AppDatabase.forTesting(NativeDatabase.memory());
    s1.registerSingleton<AppDatabase>(db);
  });

  tearDown(() async {
    await db.close();
    await s1.reset();
  });

  test('assigns an id and timestamps on first save', () async {
    final saved = await repository.save(
      PdfHeaderProfile.create(name: 'Verein'),
    );

    expect(saved.id, isNotEmpty);
    expect(saved.created, isNotNull);
    expect(saved.updated, isNotNull);
  });

  test('keeps the id and the creation time on update', () async {
    final first = await repository.save(
      PdfHeaderProfile.create(name: 'Verein'),
    );
    final second = await repository.save(first.copyWith(name: 'Verband'));

    expect(second.id, first.id);
    expect(second.created, first.created);
    expect(await repository.getAll(), hasLength(1));
  });

  test('round-trips layout, logo size and every toggle', () async {
    final saved = await repository.save(
      PdfHeaderProfile.create(name: 'Verkauf').copyWith(
        layout: PdfHeaderLayout.addressLeftLogoRight,
        logoSize: PdfLogoSize.large,
        logoHash: 'abc123',
        showAddressBlock: false,
        showDate: false,
        showPageNumbers: false,
        addressOverride: 'Zeile 1\nZeile 2',
        footerTemplate: 'Fußzeile',
      ),
    );

    final loaded = await repository.getById(saved.id);

    expect(loaded!.layout, PdfHeaderLayout.addressLeftLogoRight);
    expect(loaded.logoSize, PdfLogoSize.large);
    expect(loaded.logoHash, 'abc123');
    expect(loaded.showAddressBlock, isFalse);
    expect(loaded.showDate, isFalse);
    expect(loaded.showPageNumbers, isFalse);
    expect(loaded.addressOverride, 'Zeile 1\nZeile 2');
    expect(loaded.footerTemplate, 'Fußzeile');
  });

  test('marking a profile default clears the flag on the others', () async {
    final first = await repository.save(
      PdfHeaderProfile.create(name: 'A').copyWith(isDefault: true),
    );
    await repository.save(
      PdfHeaderProfile.create(name: 'B').copyWith(isDefault: true),
    );

    final reloaded = await repository.getById(first.id);
    final defaults =
        (await repository.getAll()).where((p) => p.isDefault).toList();

    expect(reloaded!.isDefault, isFalse);
    expect(defaults, hasLength(1));
    expect(defaults.single.name, 'B');
  });

  test('getDefault prefers the flagged profile', () async {
    await repository.save(PdfHeaderProfile.create(name: 'A'));
    await repository.save(
      PdfHeaderProfile.create(name: 'Z').copyWith(isDefault: true),
    );

    expect((await repository.getDefault())!.name, 'Z');
  });

  test('getDefault is null while no profile exists', () async {
    expect(await repository.getDefault(), isNull);
  });

  test('delete removes only the named profile', () async {
    final first = await repository.save(PdfHeaderProfile.create(name: 'A'));
    await repository.save(PdfHeaderProfile.create(name: 'B'));

    await repository.delete(first.id);

    expect((await repository.getAll()).single.name, 'B');
  });

  group('ImageReferenceResolver', () {
    test('counts a logo hash, so the collector cannot reclaim it', () async {
      await repository.save(
        PdfHeaderProfile.create(name: 'Verein').copyWith(logoHash: 'logo-hash'),
      );

      expect(await ImageReferenceResolver.referencedHashes(), {'logo-hash'});
    });

    test('ignores profiles without a logo', () async {
      await repository.save(PdfHeaderProfile.create(name: 'Verein'));

      expect(await ImageReferenceResolver.referencedHashes(), isEmpty);
    });

    test('merges bird photo hashes with logo hashes', () async {
      await db.customStatement(
        'INSERT INTO bird_images (id, bird, hash, position) '
        "VALUES ('i1', 'v1', 'photo-hash', 0)",
      );
      await repository.save(
        PdfHeaderProfile.create(name: 'Verein').copyWith(logoHash: 'logo-hash'),
      );

      expect(
        await ImageReferenceResolver.referencedHashes(),
        {'photo-hash', 'logo-hash'},
      );
    });
  });
}
