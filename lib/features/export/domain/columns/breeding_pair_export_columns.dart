import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/core/extensions/brood_extension.dart';
import 'package:birdbreeder/features/export/domain/export_column.dart';
import 'package:birdbreeder/features/export/domain/export_value_format.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair_status.dart';

/// Every column a breeding pair list can be exported with.
///
/// The clutch counters reuse `BroodListExtension`, the same source the pair
/// cards on screen read, so an exported number can never disagree with the one
/// the breeder just looked at.
class BreedingPairExportColumns {
  const BreedingPairExportColumns._();

  static final fatherRing = ExportColumn<BreedingPair>(
    id: 'father_ring',
    label: (t) => t.export.columns.breeding_pair.father_ring,
    value: (pair, _) => ExportValueFormat.text(pair.fatherResolved?.ringNumber),
  );

  static final fatherSpecies = ExportColumn<BreedingPair>(
    id: 'father_species',
    label: (t) => t.export.columns.breeding_pair.father_species,
    value: (pair, _) =>
        ExportValueFormat.text(pair.fatherResolved?.speciesResolved?.name),
  );

  static final motherRing = ExportColumn<BreedingPair>(
    id: 'mother_ring',
    label: (t) => t.export.columns.breeding_pair.mother_ring,
    value: (pair, _) => ExportValueFormat.text(pair.motherResolved?.ringNumber),
  );

  static final motherSpecies = ExportColumn<BreedingPair>(
    id: 'mother_species',
    label: (t) => t.export.columns.breeding_pair.mother_species,
    value: (pair, _) =>
        ExportValueFormat.text(pair.motherResolved?.speciesResolved?.name),
  );

  static final cage = ExportColumn<BreedingPair>(
    id: 'cage',
    label: (t) => t.export.columns.breeding_pair.cage,
    value: (pair, _) => ExportValueFormat.text(pair.cageResolved?.name),
  );

  static final status = ExportColumn<BreedingPair>(
    id: 'status',
    label: (t) => t.export.columns.breeding_pair.status,
    value: (pair, t) => switch (pair.status) {
      BreedingPairStatus.active => t.breeding_pairs.status.active,
      BreedingPairStatus.paused => t.breeding_pairs.status.paused,
      BreedingPairStatus.finished => t.breeding_pairs.status.finished,
    },
    width: ExportColumnWidth.compact,
  );

  static final start = ExportColumn<BreedingPair>(
    id: 'start',
    label: (t) => t.export.columns.breeding_pair.start,
    value: (pair, _) => ExportValueFormat.date(pair.start),
    width: ExportColumnWidth.compact,
  );

  static final end = ExportColumn<BreedingPair>(
    id: 'end',
    label: (t) => t.export.columns.breeding_pair.end,
    value: (pair, _) => ExportValueFormat.date(pair.end),
    width: ExportColumnWidth.compact,
  );

  static final broods = ExportColumn<BreedingPair>(
    id: 'broods',
    label: (t) => t.export.columns.breeding_pair.broods,
    value: (pair, _) => '${pair.broodsResolved.length}',
    align: ExportAlign.right,
    width: ExportColumnWidth.compact,
  );

  static final laid = ExportColumn<BreedingPair>(
    id: 'laid',
    label: (t) => t.export.columns.breeding_pair.laid,
    value: (pair, _) => '${pair.broodsResolved.laidCount}',
    align: ExportAlign.right,
    width: ExportColumnWidth.compact,
  );

  static final fertilized = ExportColumn<BreedingPair>(
    id: 'fertilized',
    label: (t) => t.export.columns.breeding_pair.fertilized,
    value: (pair, _) => '${pair.broodsResolved.fertilizedCount}',
    align: ExportAlign.right,
    width: ExportColumnWidth.compact,
  );

  static final hatched = ExportColumn<BreedingPair>(
    id: 'hatched',
    label: (t) => t.export.columns.breeding_pair.hatched,
    value: (pair, _) => '${pair.broodsResolved.hatchedCount}',
    align: ExportAlign.right,
    width: ExportColumnWidth.compact,
  );

  static final fledged = ExportColumn<BreedingPair>(
    id: 'fledged',
    label: (t) => t.export.columns.breeding_pair.fledged,
    value: (pair, _) => '${pair.broodsResolved.fledgedCount}',
    align: ExportAlign.right,
    width: ExportColumnWidth.compact,
  );

  static final notes = ExportColumn<BreedingPair>(
    id: 'notes',
    label: (t) => t.export.columns.breeding_pair.notes,
    value: (pair, _) => ExportValueFormat.text(pair.notes),
    width: ExportColumnWidth.wide,
  );

  /// All columns, in the order the "complete" preset renders them.
  static final List<ExportColumn<BreedingPair>> all = [
    fatherRing,
    fatherSpecies,
    motherRing,
    motherSpecies,
    cage,
    status,
    start,
    end,
    broods,
    laid,
    fertilized,
    hatched,
    fledged,
    notes,
  ];
}

/// The column sets offered when exporting a breeding pair list.
class BreedingPairExportPresets {
  const BreedingPairExportPresets._();

  /// Who is paired with whom, and where.
  static final overview = ExportPreset<BreedingPair>(
    id: 'overview',
    label: (t) => t.export.presets.breeding_pairs.overview,
    columns: [
      BreedingPairExportColumns.fatherRing,
      BreedingPairExportColumns.motherRing,
      BreedingPairExportColumns.cage,
      BreedingPairExportColumns.status,
      BreedingPairExportColumns.start,
      BreedingPairExportColumns.end,
    ],
  );

  /// Adds both parents' species, the clutch funnel and the notes.
  static final full = ExportPreset<BreedingPair>(
    id: 'full',
    label: (t) => t.export.presets.breeding_pairs.full,
    columns: BreedingPairExportColumns.all,
  );

  static final List<ExportPreset<BreedingPair>> all = [overview, full];
}

/// The clutch strip printed under a breeding pair PDF.
///
/// The hatch rate is hatched-per-laid, the number breeders compare seasons by.
/// With nothing laid there is no rate to state, so the cell stays blank rather
/// than claiming zero percent.
List<({String label, String value})> breedingPairExportSummary(
  List<BreedingPair> rows,
  Translations t,
) {
  var laid = 0;
  var fertilized = 0;
  var hatched = 0;
  var fledged = 0;
  for (final pair in rows) {
    final broods = pair.broodsResolved;
    laid += broods.laidCount;
    fertilized += broods.fertilizedCount;
    hatched += broods.hatchedCount;
    fledged += broods.fledgedCount;
  }

  final columns = t.export.columns.breeding_pair;
  return [
    (label: t.export.summary.pairs, value: '${rows.length}'),
    (label: columns.laid, value: '$laid'),
    (label: columns.fertilized, value: '$fertilized'),
    (label: columns.hatched, value: '$hatched'),
    (label: columns.fledged, value: '$fledged'),
    (
      label: t.export.summary.hatch_rate,
      value: laid == 0 ? '' : '${(hatched * 100 / laid).round()} %',
    ),
  ];
}
