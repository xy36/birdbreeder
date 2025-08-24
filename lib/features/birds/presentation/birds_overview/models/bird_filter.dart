import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_filter.freezed.dart';

enum BirdSort {
  updatedDesc,
  ageAsc,
  ringAsc;

  String getDisplayName(BuildContext context) {
    switch (this) {
      case BirdSort.updatedDesc:
        return context.l10n.filter_sheet__sorting_updated;
      case BirdSort.ageAsc:
        return context.l10n.filter_sheet__sorting_age;
      case BirdSort.ringAsc:
        return context.l10n.filter_sheet__sorting_ringnumber;
    }
  }
}

@freezed
class BirdFilter with _$BirdFilter {
  const factory BirdFilter({
    @Default([]) List<String> speciesIds,
    String? speciesName,
    @Default([]) List<String> cageIds,
    String? cageName,
    @Default([]) List<String> colorIds,
    String? colorName,
    @Default([LifeStage.adult]) List<LifeStage> lifeStages,
    @Default([]) List<Sex> sexes,
    @Default([SaleStatus.notForSale, SaleStatus.listed, SaleStatus.reserved])
    List<SaleStatus> saleStatus,
    @Default(BirdSort.updatedDesc) BirdSort? sort,
  }) = _BirdFilter;
}
