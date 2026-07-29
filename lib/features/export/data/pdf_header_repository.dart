import 'package:birdbreeder/models/pdf_header/entity/pdf_header_profile.dart';
import 'package:birdbreeder/services/database/app_database.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

const _uuid = Uuid();

/// Reads and writes letterhead profiles.
///
/// Deliberately a small DAO rather than the `LocalResourceRepository` +
/// auto_mappr chain the domain entities use: letterheads are settings, needed
/// only by the export flow and its editor, and do not belong in the
/// app-wide resource cubit that every screen loads.
class PdfHeaderRepository {
  const PdfHeaderRepository();

  AppDatabase get _db => s1.get<AppDatabase>();

  Future<List<PdfHeaderProfile>> getAll() async {
    final rows = await (_db.select(_db.pdfHeaderProfiles)
          ..orderBy([
            (t) =>
                OrderingTerm(expression: t.isDefault, mode: OrderingMode.desc),
            (t) => OrderingTerm(expression: t.name),
          ]))
        .get();
    return rows.map(_toEntity).toList();
  }

  /// The profile marked as default, or the first one, or null when the breeder
  /// has never created any.
  Future<PdfHeaderProfile?> getDefault() async {
    final all = await getAll();
    return all.isEmpty ? null : all.first;
  }

  Future<PdfHeaderProfile?> getById(String id) async {
    final row = await (_db.select(_db.pdfHeaderProfiles)
          ..where((t) => t.id.equals(id)))
        .getSingleOrNull();
    return row == null ? null : _toEntity(row);
  }

  /// Inserts or updates [profile] and returns it with its persisted id.
  ///
  /// Marking a profile as default clears the flag everywhere else, so the
  /// export never has to choose between two defaults.
  Future<PdfHeaderProfile> save(PdfHeaderProfile profile) async {
    final now = DateTime.now();
    final isNew = profile.id.isEmpty;
    final stored = profile.copyWith(
      id: isNew ? _uuid.v4() : profile.id,
      created: profile.created ?? now,
      updated: now,
    );

    await _db.transaction(() async {
      if (stored.isDefault) {
        await _db.customUpdate(
          'UPDATE pdf_header_profiles SET is_default = 0 WHERE id != ?',
          variables: [Variable.withString(stored.id)],
          updates: {_db.pdfHeaderProfiles},
        );
      }
      await _db
          .into(_db.pdfHeaderProfiles)
          .insertOnConflictUpdate(_toRow(stored));
    });

    return stored;
  }

  Future<void> delete(String id) =>
      (_db.delete(_db.pdfHeaderProfiles)..where((t) => t.id.equals(id))).go();

  PdfHeaderProfile _toEntity(PdfHeaderProfileRow row) => PdfHeaderProfile(
        id: row.id,
        name: row.name,
        isDefault: row.isDefault,
        layout: _layoutFromName(row.layout),
        logoHash: row.logoHash,
        logoSize: _logoSizeFromName(row.logoSize),
        titleTemplate: row.titleTemplate,
        subtitleTemplate: row.subtitleTemplate,
        showAddressBlock: row.showAddressBlock,
        addressOverride: row.addressOverride,
        showDate: row.showDate,
        showCount: row.showCount,
        showFilterSummary: row.showFilterSummary,
        showBreederNumber: row.showBreederNumber,
        showDivider: row.showDivider,
        footerTemplate: row.footerTemplate,
        showPageNumbers: row.showPageNumbers,
        created: row.created,
        updated: row.updated,
      );

  PdfHeaderProfilesCompanion _toRow(PdfHeaderProfile profile) =>
      PdfHeaderProfilesCompanion.insert(
        id: profile.id,
        name: profile.name,
        isDefault: Value(profile.isDefault),
        layout: Value(profile.layout.name),
        logoHash: Value(profile.logoHash),
        logoSize: Value(profile.logoSize.name),
        titleTemplate: Value(profile.titleTemplate),
        subtitleTemplate: Value(profile.subtitleTemplate),
        showAddressBlock: Value(profile.showAddressBlock),
        addressOverride: Value(profile.addressOverride),
        showDate: Value(profile.showDate),
        showCount: Value(profile.showCount),
        showFilterSummary: Value(profile.showFilterSummary),
        showBreederNumber: Value(profile.showBreederNumber),
        showDivider: Value(profile.showDivider),
        footerTemplate: Value(profile.footerTemplate),
        showPageNumbers: Value(profile.showPageNumbers),
        created: Value(profile.created),
        updated: Value(profile.updated),
      );

  /// Enums are stored by name; an unknown value falls back to the default
  /// rather than throwing, so a row written by a newer build stays readable.
  static PdfHeaderLayout _layoutFromName(String name) =>
      PdfHeaderLayout.values.firstWhere(
        (value) => value.name == name,
        orElse: () => PdfHeaderLayout.logoLeft,
      );

  static PdfLogoSize _logoSizeFromName(String name) =>
      PdfLogoSize.values.firstWhere(
        (value) => value.name == name,
        orElse: () => PdfLogoSize.medium,
      );
}
