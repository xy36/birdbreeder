import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/bird/sex_enum.dart';
import 'package:birdbreeder/shared/icons.dart';
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
        return context.tr.common.life_stage.egg;
      case LifeStage.chick:
        return context.tr.common.life_stage.chick;
      case LifeStage.adult:
        return context.tr.common.life_stage.adult;
      case LifeStage.deceased:
        return context.tr.common.life_stage.deceased;
    }
  }

  IconData get icon => switch (this) {
        LifeStage.egg => AppIcons.lifeStageEgg,
        LifeStage.chick => AppIcons.lifeStageChick,
        LifeStage.adult => AppIcons.lifeStageAdult,
        LifeStage.deceased => AppIcons.lifeStageDeceased,
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
        return context.tr.common.sale_status.not_for_sale;
      case SaleStatus.listed:
        return context.tr.common.sale_status.listed;
      case SaleStatus.reserved:
        return context.tr.common.sale_status.reserved;
      case SaleStatus.sold:
        return context.tr.common.sale_status.sold;
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
abstract class Bird with _$Bird {
  @JsonSerializable(explicitToJson: true)
  const factory Bird({
    required BirdId id,

    // Audit
    DateTime? created,
    DateTime? updated,

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
    DateTime? bornAt,
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

    // Lifecycle
    bool? unknownLifecycle,

    // Notes
    String? notes,
  }) = _Bird;

  factory Bird.fromJson(Map<String, dynamic> json) => _$BirdFromJson(json);

  /// Factory to create a new empty bird object (id is '', created/updated are null)
  factory Bird.create() => const Bird(
        id: '',
        unknownLifecycle: true,
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
      created: now,
      updated: now,
      ringNumber: ringNumber,
      speciesId: speciesId,
      fatherId: fatherId,
      motherId: motherId,
      broodId: broodId,
      laidAt: laidAt,
    );
  }
}
