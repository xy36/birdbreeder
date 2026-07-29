import 'package:birdbreeder/models/contact/entity/contact.dart';

/// The facts a rendered export knows about itself.
///
/// Assembled once per export and handed to the PDF renderer, which turns it
/// into the letterhead: who exported, what list, how many rows, under which
/// filters, and when.
class ExportContext {
  const ExportContext({
    required this.listTitle,
    required this.rowCount,
    required this.generatedAt,
    this.breeder,
    this.activeFilters = const [],
  });

  /// Human-readable list name, e.g. "Bestandsliste".
  final String listTitle;

  final int rowCount;

  final DateTime generatedAt;

  /// The contact flagged as the app user, source of the address block.
  final Contact? breeder;

  /// Labels of the filters in effect, as the screen renders them as chips.
  final List<String> activeFilters;
}
