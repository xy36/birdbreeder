// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'finances.freezed.dart';
part 'finances.g.dart';

@freezed
class Finances with _$Finances {
  const factory Finances({
    required String id,
    required String financesCategoriesId,
    String? birdId,
    DateTime? date,
    required double amount,
  }) = _Finances;

  factory Finances.fromJson(Map<String, dynamic> json) =>
      _$FinancesFromJson(json);
}
