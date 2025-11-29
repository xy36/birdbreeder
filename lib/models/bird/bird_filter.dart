import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/bird/sex_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_filter.freezed.dart';

enum BirdSort {
  updatedDesc,
  ageAsc,
  ringAsc;

  String getDisplayName(BuildContext context) {
    switch (this) {
      case BirdSort.updatedDesc:
        return context.tr.common.sorting.updated;
      case BirdSort.ageAsc:
        return context.tr.common.sorting.age;
      case BirdSort.ringAsc:
        return context.tr.common.sorting.ringnumber;
    }
  }
}

@freezed
abstract class BirdFilter with _$BirdFilter {
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
