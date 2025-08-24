import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird.freezed.dart';
part 'bird.g.dart';

typedef BirdId = String;
typedef CageId = String;
typedef SpeciesId = String;
typedef ColorId = String;
typedef BroodId = String;
typedef ContactId = String;

enum LifeStage {
  egg,
  chick,
  adult,
  deceased;

  String getDisplayName(BuildContext context) {
    switch (this) {
      case LifeStage.egg:
        return context.l10n.bird__life_stage_egg;
      case LifeStage.chick:
        return context.l10n.bird__life_stage_chick;
      case LifeStage.adult:
        return context.l10n.bird__life_stage_adult;
      case LifeStage.deceased:
        return context.l10n.bird__life_stage_deceased;
    }
  }

  IconData get icon => switch (this) {
        LifeStage.egg => Icons.egg,
        LifeStage.chick => Icons.child_care,
        LifeStage.adult => Icons.emoji_nature,
        LifeStage.deceased => Icons.health_and_safety,
      };
}

enum SaleStatus {
  notForSale,
  listed,
  reserved,
  sold;

  String getDisplayName(BuildContext context) {
    switch (this) {
      case SaleStatus.notForSale:
        return context.l10n.bird__sale_status_not_for_sale;
      case SaleStatus.listed:
        return context.l10n.bird__sale_status_listed;
      case SaleStatus.reserved:
        return context.l10n.bird__sale_status_reserved;
      case SaleStatus.sold:
        return context.l10n.bird__sale_status_sold;
    }
  }

  String getSubtitle(BuildContext context) {
    switch (this) {
      case SaleStatus.notForSale:
        return 'Dieser Vogel steht aktuell nicht zum Verkauf.';
      case SaleStatus.listed:
        return 'Dieser Vogel ist zum Verkauf angeboten.';
      case SaleStatus.reserved:
        return 'Dieser Vogel ist reserviert.';
      case SaleStatus.sold:
        return 'Dieser Vogel wurde verkauft.';
    }
  }
}

@freezed
class Bird with _$Bird {
  @JsonSerializable(explicitToJson: true)
  const factory Bird({
    required BirdId id,

    // Audit
    DateTime? createdAt,
    DateTime? updatedAt,

    // Identity
    String? ringNumber,
    SpeciesId? speciesId,
    ColorId? colorId,
    ContactId? ownerId,

    // Sex & parents
    @Default(Sex.unknown) Sex sex,
    BirdId? fatherId,
    BirdId? motherId,

    // Housing & brood
    CageId? cageId,
    BroodId? broodId,

    // Lifecycle
    DateTime? laidAt,
    DateTime? hatchedAt,
    DateTime? fledgedAt,
    DateTime? diedAt,

    // Commerce
    @Default(SaleStatus.notForSale) SaleStatus saleStatus,
    DateTime? listedAt,
    DateTime? soldAt,
    double? askingPrice,
    double? finalPrice,
    DateTime? boughtAt,
    double? boughtPrice,
    ContactId? boughtFromId,
    ContactId? soldToId,

    // Notes
    String? notes,
  }) = _Bird;

  factory Bird.fromJson(Map<String, dynamic> json) => _$BirdFromJson(json);

  /// Factory to create a new empty bird object (id is '', created/updated are null)
  factory Bird.create() => const Bird(
        id: '',
      );

  /// Factory to create a new egg bird object
  factory Bird.egg({
    String? ringNumber,
    DateTime? laidAt,
    BirdId? fatherId,
    BirdId? motherId,
    String? speciesId,
    BroodId? broodId,
  }) {
    final now = DateTime.now();
    return Bird.create().copyWith(
      createdAt: now,
      updatedAt: now,
      ringNumber: ringNumber,
      speciesId: speciesId,
      fatherId: fatherId,
      motherId: motherId,
      broodId: broodId,
      laidAt: laidAt,
    );
  }
}
