import 'dart:typed_data';

import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/bird_documents/data/bird_pedigree_pdf.dart';
import 'package:birdbreeder/features/bird_documents/data/bird_profile_pdf.dart';
import 'package:birdbreeder/features/bird_documents/data/bird_sale_receipt_pdf.dart';
import 'package:birdbreeder/features/bird_documents/domain/bird_document_data.dart';
import 'package:birdbreeder/features/bird_documents/domain/bird_document_type.dart';
import 'package:birdbreeder/features/export/data/pdf_fonts.dart';
import 'package:birdbreeder/features/export/domain/columns/bird_export_columns.dart';
import 'package:birdbreeder/features/export/domain/export_column.dart';
import 'package:birdbreeder/features/export/domain/export_context.dart';
import 'package:birdbreeder/features/export/domain/export_value_format.dart';
import 'package:birdbreeder/features/export/presentation/cubit/export_cubit.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/bird/sex_enum.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/models/pdf_header/entity/pdf_header_profile.dart';
import 'package:birdbreeder/services/images/image_store.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/utils/formatter/money_formatter.dart';

/// Assembles one bird's data into the chosen document PDF.
///
/// The single place where documents touch dependency injection: it resolves
/// the bird against the app state, formats every value, loads photo and logo
/// blobs, and hands plain records to the pure renderers in this folder.
class BirdDocumentBuilder {
  const BirdDocumentBuilder._();

  static Future<Uint8List> build({
    required BirdDocumentType type,
    required Bird bird,
    required Translations t,
    required MoneyFormatter money,
    PdfHeaderProfile? profile,
  }) async {
    // Row count and filter summary describe a list; on a single-bird
    // document they would only render as a puzzling "1 entry" line.
    final header = (profile ?? PdfHeaderProfile.fallback).copyWith(
      showCount: false,
      showFilterSummary: false,
    );
    final fonts = await PdfFonts.load();
    final logoBytes = await ExportCubit.loadLogo(header);
    final exportContext = ExportContext(
      listTitle: type.label(t),
      rowCount: 1,
      generatedAt: DateTime.now(),
      breeder: _appUser,
    );

    return switch (type) {
      BirdDocumentType.profile => BirdProfilePdf.build(
          sections: _profileSections(bird, t, money),
          exportContext: exportContext,
          t: t,
          fonts: fonts,
          profile: header,
          logoBytes: logoBytes,
          photoBytes: await _photoBytes(bird),
          ringNumber: bird.ringNumber,
          notes: _blankToNull(bird.notes),
        ),
      BirdDocumentType.pedigree => BirdPedigreePdf.build(
          slots: _pedigreeSlots(bird, t),
          exportContext: exportContext,
          t: t,
          fonts: fonts,
          profile: header,
          logoBytes: logoBytes,
          breeder: _breederLine(bird),
        ),
      BirdDocumentType.saleReceipt => BirdSaleReceiptPdf.build(
          seller: _party(_appUser),
          buyer: _party(bird.soldToResolved),
          birdEntries: _receiptEntries(bird, t),
          priceText: _priceText(bird, money),
          dateText: ExportValueFormat.date(bird.soldAt ?? DateTime.now())!,
          exportContext: exportContext,
          t: t,
          fonts: fonts,
          profile: header,
          logoBytes: logoBytes,
        ),
    };
  }

  static Contact? get _appUser =>
      s1.get<BirdBreederCubit>().state.birdBreederResources.contacts.appUser;

  /// The first photo of the bird, or null when there is none or its blob is
  /// not stored locally — a profile without its photo still beats a failed
  /// document.
  static Future<Uint8List?> _photoBytes(Bird bird) async {
    final hash = bird.imagesResolved.firstOrNull?.hash;
    if (hash == null) return null;
    final file = await ImageStore.get(hash);
    return file?.readAsBytes();
  }

  // --- Steckbrief ---

  static List<DocSection> _profileSections(
    Bird bird,
    Translations t,
    MoneyFormatter money,
  ) {
    final sections = [
      (
        title: t.documents.profile.section_general,
        entries: _columnEntries(
          [
            BirdExportColumns.ringNumber,
            BirdExportColumns.species,
            BirdExportColumns.color,
            BirdExportColumns.sex,
            BirdExportColumns.cage,
          ],
          bird,
          t,
        ),
      ),
      (
        title: t.documents.profile.section_lifecycle,
        entries: _columnEntries(
          [
            BirdExportColumns.laidAt,
            BirdExportColumns.hatchedAt,
            BirdExportColumns.fledgedAt,
            BirdExportColumns.bornAt,
            BirdExportColumns.diedAt,
          ],
          bird,
          t,
        ),
      ),
      (
        title: t.documents.profile.section_origin,
        entries: _columnEntries(
          [
            BirdExportColumns.father,
            BirdExportColumns.mother,
            BirdExportColumns.breederName,
            BirdExportColumns.breederNumber,
            BirdExportColumns.ownerName,
          ],
          bird,
          t,
        ),
      ),
      (
        title: t.documents.profile.section_commerce,
        entries: _commerceEntries(bird, t, money),
      ),
    ];
    return sections.where((section) => section.entries.isNotEmpty).toList();
  }

  /// Column labels and formatted values, with empty values dropped.
  static List<DocEntry> _columnEntries(
    List<ExportColumn<Bird>> columns,
    Bird bird,
    Translations t,
  ) =>
      [
        for (final column in columns)
          if (_blankToNull(column.value(bird, t)) case final value?)
            (label: column.label(t), value: value),
      ];

  /// Commerce facts with prices in the display currency rather than the
  /// symbol-free decimals the CSV columns are locked to.
  static List<DocEntry> _commerceEntries(
    Bird bird,
    Translations t,
    MoneyFormatter money,
  ) {
    final labels = t.export.columns.bird;
    return [
      ..._columnEntries([BirdExportColumns.saleStatus], bird, t),
      ..._moneyEntry(labels.asking_price, bird.askingPrice, money),
      ..._moneyEntry(labels.final_price, bird.finalPrice, money),
      ..._columnEntries(
        [BirdExportColumns.soldAt, BirdExportColumns.soldTo],
        bird,
        t,
      ),
      ..._columnEntries([BirdExportColumns.boughtAt], bird, t),
      ..._moneyEntry(labels.bought_price, bird.boughtPrice, money),
      ..._columnEntries([BirdExportColumns.boughtFrom], bird, t),
    ];
  }

  static List<DocEntry> _moneyEntry(
    String label,
    double? value,
    MoneyFormatter money,
  ) =>
      value == null ? const [] : [(label: label, value: money.format(value))];

  // --- Abstammungsnachweis ---

  /// Ancestors as a binary heap: `[0]` is the focal bird, `father(i) = 2i+1`,
  /// `mother(i) = 2i+2`. A path guard stops cyclic data from recursing.
  static List<PedigreeSlot?> _pedigreeSlots(Bird bird, Translations t) {
    final slots = List<PedigreeSlot?>.filled(BirdPedigreePdf.slotCount, null);

    void place(Bird? current, int index, Set<String> path) {
      if (current == null ||
          index >= BirdPedigreePdf.slotCount ||
          path.contains(current.id)) {
        return;
      }
      // Breeder names only fit the two roomiest generations.
      slots[index] = _slot(current, t, withBreeder: index < 3);
      final next = {...path, current.id};
      place(current.fatherResolved, 2 * index + 1, next);
      place(current.motherResolved, 2 * index + 2, next);
    }

    place(bird, 0, const {});
    return slots;
  }

  static PedigreeSlot _slot(
    Bird bird,
    Translations t, {
    required bool withBreeder,
  }) =>
      (
        ringNumber: _blankToNull(bird.ringNumber) ?? '—',
        speciesName: _blankToNull(bird.speciesResolved?.name),
        colorName: _blankToNull(bird.colorResolved?.name),
        // Text instead of Sex.symbol: the embedded PDF font has no ♂/♀
        // glyphs. An unknown sex is omitted rather than spelled out.
        sexLabel: switch (bird.sex) {
          Sex.male => t.common.sex.male,
          Sex.female => t.common.sex.female,
          Sex.unknown => null,
        },
        bornAt: ExportValueFormat.date(bird.effectiveBornAt),
        breederName:
            withBreeder ? _blankToNull(bird.breederResolved?.fullName) : null,
      );

  static ({String name, String? number})? _breederLine(Bird bird) {
    final breeder = bird.breederResolved ?? _appUser;
    if (breeder == null) return null;
    final name = _blankToNull(breeder.fullName);
    if (name == null) return null;
    return (name: name, number: _blankToNull(breeder.number));
  }

  // --- Abgabebeleg ---

  static ReceiptParty _party(Contact? contact) {
    final name = _blankToNull(contact?.fullName);
    if (contact == null || name == null) {
      return (name: null, addressLines: const []);
    }
    return (name: name, addressLines: _addressLines(contact));
  }

  /// Street and city lines, skipping whatever the contact lacks — the same
  /// composition the letterhead uses.
  static List<String> _addressLines(Contact contact) {
    final city = [contact.postalCode, contact.city]
        .map(_blankToNull)
        .whereType<String>()
        .join(' ');
    return [
      if (_blankToNull(contact.address) case final street?) street,
      if (city.isNotEmpty) city,
    ];
  }

  static List<DocEntry> _receiptEntries(Bird bird, Translations t) => [
        ..._columnEntries(
          [
            BirdExportColumns.ringNumber,
            BirdExportColumns.species,
            BirdExportColumns.color,
            BirdExportColumns.sex,
          ],
          bird,
          t,
        ),
        if (ExportValueFormat.date(bird.effectiveBornAt) case final born?)
          (label: t.export.columns.bird.born_at, value: born),
      ];

  static String? _priceText(Bird bird, MoneyFormatter money) {
    final price = bird.finalPrice ?? bird.askingPrice;
    return price == null ? null : money.format(price);
  }

  static String? _blankToNull(String? value) {
    final trimmed = value?.trim();
    return (trimmed == null || trimmed.isEmpty) ? null : trimmed;
  }
}
