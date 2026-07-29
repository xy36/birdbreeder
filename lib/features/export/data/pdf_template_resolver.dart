import 'package:birdbreeder/core/extensions/contact_extension.dart';
import 'package:birdbreeder/features/export/domain/export_context.dart';
import 'package:birdbreeder/features/export/domain/export_value_format.dart';
import 'package:birdbreeder/i18n/strings.g.dart';

/// Fills `{{platzhalter}}` in the free-text fields of a letterhead.
///
/// Placeholders are German because the editor offers them as tappable chips in
/// the user's language — the breeder never types them by hand, so there is no
/// syntax to learn and no reason to expose English keys.
class PdfTemplateResolver {
  const PdfTemplateResolver._();

  static final _placeholder = RegExp(r'\{\{(\w+)\}\}');

  /// Every placeholder the editor offers, in the order the chips appear.
  static const placeholders = [
    'liste',
    'zuechter',
    'zuechternummer',
    'adresse',
    'datum',
    'anzahl',
    'filter',
  ];

  /// Resolves [template] against [context], or returns null when the template
  /// is empty or resolves to nothing but blanks.
  ///
  /// An unknown placeholder is left untouched rather than blanked, so a typo
  /// is visible in the preview instead of silently swallowing text.
  static String? resolve(
    String? template,
    ExportContext context,
    Translations t,
  ) {
    if (template == null || template.trim().isEmpty) return null;

    final resolved = template.replaceAllMapped(_placeholder, (match) {
      final value = _valueFor(match.group(1)!, context, t);
      return value ?? match.group(0)!;
    });

    final collapsed = resolved.replaceAll(RegExp(r'[ \t]+'), ' ').trim();
    return collapsed.isEmpty ? null : collapsed;
  }

  /// Null means "not a placeholder we know"; an empty string means "known but
  /// the breeder has no value for it", which collapses away.
  static String? _valueFor(
    String name,
    ExportContext context,
    Translations t,
  ) {
    final breeder = context.breeder;
    return switch (name) {
      'liste' => context.listTitle,
      'zuechter' => breeder?.fullName ?? '',
      'zuechternummer' => breeder?.number ?? '',
      'adresse' => _address(context),
      'datum' => ExportValueFormat.date(context.generatedAt) ?? '',
      'anzahl' => context.rowCount == 1
          ? t.export.row_count_one
          : t.export.row_count_other(Count: context.rowCount),
      'filter' => context.activeFilters.join(' · '),
      _ => null,
    };
  }

  /// Street and city on one line, skipping whatever the contact lacks.
  static String _address(ExportContext context) {
    final breeder = context.breeder;
    if (breeder == null) return '';

    return [
      breeder.address,
      [breeder.postalCode, breeder.city]
          .where((part) => part != null && part.trim().isNotEmpty)
          .join(' '),
    ]
        .where((part) => part != null && part.trim().isNotEmpty)
        .map((part) => part!.trim())
        .join(', ');
  }
}
