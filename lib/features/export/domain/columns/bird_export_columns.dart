import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/extensions/contact_extension.dart';
import 'package:birdbreeder/features/export/domain/export_column.dart';
import 'package:birdbreeder/features/export/domain/export_value_format.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/bird/sex_enum.dart';

/// Every column a bird list can be exported with.
///
/// Column ids double as CSV headers. Where an id matches an alias understood
/// by `CsvBirdRow.fromCsvMap`, an exported file can be read back in by the
/// app's own CSV import — that is why contacts appear twice: `*_number`
/// carries the machine-matchable contact number the importer looks up, while
/// `*_name` carries the readable name for printed lists and is deliberately
/// **not** an importer alias.
class BirdExportColumns {
  const BirdExportColumns._();

  static final ringNumber = ExportColumn<Bird>(
    id: 'ringnumber',
    label: (t) => t.export.columns.bird.ring_number,
    value: (bird, _) => ExportValueFormat.text(bird.ringNumber),
  );

  static final species = ExportColumn<Bird>(
    id: 'species',
    label: (t) => t.export.columns.bird.species,
    value: (bird, _) => ExportValueFormat.text(bird.speciesResolved?.name),
  );

  static final color = ExportColumn<Bird>(
    id: 'color',
    label: (t) => t.export.columns.bird.color,
    value: (bird, _) => ExportValueFormat.text(bird.colorResolved?.name),
  );

  static final cage = ExportColumn<Bird>(
    id: 'cage',
    label: (t) => t.export.columns.bird.cage,
    value: (bird, _) => ExportValueFormat.text(bird.cageResolved?.name),
  );

  /// Localized sex. The German labels ("Hahn"/"Henne") are among the tokens
  /// `CsvBirdRow` recognises, so this column survives a round trip.
  static final sex = ExportColumn<Bird>(
    id: 'sex',
    label: (t) => t.export.columns.bird.sex,
    value: (bird, t) => switch (bird.sex) {
      Sex.male => t.common.sex.male,
      Sex.female => t.common.sex.female,
      Sex.unknown => t.common.sex.unknown,
    },
    width: ExportColumnWidth.compact,
  );

  static final laidAt = ExportColumn<Bird>(
    id: 'laid_at',
    label: (t) => t.export.columns.bird.laid_at,
    value: (bird, _) => ExportValueFormat.date(bird.laidAt),
    width: ExportColumnWidth.compact,
  );

  static final hatchedAt = ExportColumn<Bird>(
    id: 'hatched_at',
    label: (t) => t.export.columns.bird.hatched_at,
    value: (bird, _) => ExportValueFormat.date(bird.hatchedAt),
    width: ExportColumnWidth.compact,
  );

  static final fledgedAt = ExportColumn<Bird>(
    id: 'fledged_at',
    label: (t) => t.export.columns.bird.fledged_at,
    value: (bird, _) => ExportValueFormat.date(bird.fledgedAt),
    width: ExportColumnWidth.compact,
  );

  static final bornAt = ExportColumn<Bird>(
    id: 'born_at',
    label: (t) => t.export.columns.bird.born_at,
    value: (bird, _) => ExportValueFormat.date(bird.bornAt),
    width: ExportColumnWidth.compact,
  );

  static final diedAt = ExportColumn<Bird>(
    id: 'died_at',
    label: (t) => t.export.columns.bird.died_at,
    value: (bird, _) => ExportValueFormat.date(bird.diedAt),
    width: ExportColumnWidth.compact,
  );

  static final father = ExportColumn<Bird>(
    id: 'father',
    label: (t) => t.export.columns.bird.father,
    value: (bird, _) => ExportValueFormat.text(bird.fatherResolved?.ringNumber),
  );

  static final mother = ExportColumn<Bird>(
    id: 'mother',
    label: (t) => t.export.columns.bird.mother,
    value: (bird, _) => ExportValueFormat.text(bird.motherResolved?.ringNumber),
  );

  static final breederName = ExportColumn<Bird>(
    id: 'breeder_name',
    label: (t) => t.export.columns.bird.breeder,
    value: (bird, _) => ExportValueFormat.text(bird.breederResolved?.fullName),
  );

  static final breederNumber = ExportColumn<Bird>(
    id: 'breeder_number',
    label: (t) => t.export.columns.bird.breeder_number,
    value: (bird, _) => ExportValueFormat.text(bird.breederResolved?.number),
    width: ExportColumnWidth.compact,
  );

  static final ownerName = ExportColumn<Bird>(
    id: 'owner_name',
    label: (t) => t.export.columns.bird.owner,
    value: (bird, _) => ExportValueFormat.text(bird.ownerResolved?.fullName),
  );

  static final ownerNumber = ExportColumn<Bird>(
    id: 'owner_number',
    label: (t) => t.export.columns.bird.owner_number,
    value: (bird, _) => ExportValueFormat.text(bird.ownerResolved?.number),
    width: ExportColumnWidth.compact,
  );

  static final boughtAt = ExportColumn<Bird>(
    id: 'bought_at',
    label: (t) => t.export.columns.bird.bought_at,
    value: (bird, _) => ExportValueFormat.date(bird.boughtAt),
    width: ExportColumnWidth.compact,
  );

  static final boughtPrice = ExportColumn<Bird>(
    id: 'bought_price',
    label: (t) => t.export.columns.bird.bought_price,
    value: (bird, _) => ExportValueFormat.decimal(bird.boughtPrice),
    align: ExportAlign.right,
    width: ExportColumnWidth.compact,
  );

  static final boughtFrom = ExportColumn<Bird>(
    id: 'bought_from',
    label: (t) => t.export.columns.bird.bought_from,
    value: (bird, _) =>
        ExportValueFormat.text(bird.boughtFromResolved?.fullName),
  );

  static final saleStatus = ExportColumn<Bird>(
    id: 'sale_status',
    label: (t) => t.export.columns.bird.sale_status,
    value: (bird, t) => switch (bird.saleStatus) {
      SaleStatus.notForSale => t.common.sale_status.not_for_sale,
      SaleStatus.listed => t.common.sale_status.listed,
      SaleStatus.reserved => t.common.sale_status.reserved,
      SaleStatus.sold => t.common.sale_status.sold,
    },
  );

  static final askingPrice = ExportColumn<Bird>(
    id: 'asking_price',
    label: (t) => t.export.columns.bird.asking_price,
    value: (bird, _) => ExportValueFormat.decimal(bird.askingPrice),
    align: ExportAlign.right,
    width: ExportColumnWidth.compact,
  );

  static final finalPrice = ExportColumn<Bird>(
    id: 'final_price',
    label: (t) => t.export.columns.bird.final_price,
    value: (bird, _) => ExportValueFormat.decimal(bird.finalPrice),
    align: ExportAlign.right,
    width: ExportColumnWidth.compact,
  );

  static final soldAt = ExportColumn<Bird>(
    id: 'sold_at',
    label: (t) => t.export.columns.bird.sold_at,
    value: (bird, _) => ExportValueFormat.date(bird.soldAt),
    width: ExportColumnWidth.compact,
  );

  static final soldTo = ExportColumn<Bird>(
    id: 'sold_to',
    label: (t) => t.export.columns.bird.sold_to,
    value: (bird, _) => ExportValueFormat.text(bird.soldToResolved?.fullName),
  );

  static final notes = ExportColumn<Bird>(
    id: 'notes',
    label: (t) => t.export.columns.bird.notes,
    value: (bird, _) => ExportValueFormat.text(bird.notes),
    width: ExportColumnWidth.wide,
  );

  /// All columns, in the order the "complete" preset renders them.
  static final List<ExportColumn<Bird>> all = [
    ringNumber,
    species,
    color,
    cage,
    sex,
    laidAt,
    hatchedAt,
    fledgedAt,
    bornAt,
    diedAt,
    father,
    mother,
    breederName,
    breederNumber,
    ownerName,
    ownerNumber,
    boughtAt,
    boughtPrice,
    boughtFrom,
    saleStatus,
    askingPrice,
    finalPrice,
    soldAt,
    soldTo,
    notes,
  ];
}

/// The column sets offered when exporting a bird list.
class BirdExportPresets {
  const BirdExportPresets._();

  /// Who the bird is and where it sits — what a roster or a stock list needs.
  static final overview = ExportPreset<Bird>(
    id: 'overview',
    label: (t) => t.export.presets.birds.overview,
    columns: [
      BirdExportColumns.ringNumber,
      BirdExportColumns.species,
      BirdExportColumns.color,
      BirdExportColumns.sex,
      BirdExportColumns.cage,
      BirdExportColumns.bornAt,
    ],
  );

  /// Everything — the preset to pick for archiving or re-importing.
  static final full = ExportPreset<Bird>(
    id: 'full',
    label: (t) => t.export.presets.birds.full,
    columns: BirdExportColumns.all,
  );

  static final List<ExportPreset<Bird>> all = [overview, full];
}
