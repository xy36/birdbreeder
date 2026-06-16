import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/bird/sex_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_filter.freezed.dart';

enum BirdSort {
  updated,
  age,
  ring;

  String getDisplayName(BuildContext context) {
    switch (this) {
      case BirdSort.updated:
        return context.tr.common.sorting.updated;
      case BirdSort.age:
        return context.tr.common.sorting.age;
      case BirdSort.ring:
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
    @Default([]) List<String> ownerIds,
    @Default([LifeStage.adult]) List<LifeStage> lifeStages,
    @Default([]) List<Sex> sexes,
    @Default([SaleStatus.notForSale, SaleStatus.listed, SaleStatus.reserved])
    List<SaleStatus> saleStatus,
    @Default(false) bool showDeceased,
    @Default(BirdSort.updated) BirdSort? sort,
    @Default(false) bool sortAscending,
  }) = _BirdFilter;
}
