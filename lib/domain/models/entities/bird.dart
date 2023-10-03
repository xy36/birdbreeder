import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/origin.dart';
import '../enums/sex.dart';
import 'entities.dart';

part 'bird.freezed.dart';

@freezed
class Bird with _$Bird {
  factory Bird({
    required String? id,
    required String? ringnumber,
    required Species? species,
    required BirdColor? color,
    required String? cageId,
    required Sex? sex,
    required Origin? origin,
    required DateTime? bornDate,
    required DateTime? diedDate,
    required DateTime? boughtDate,
    required DateTime? sellDate,
    required double? boughtPrice,
    required double? sellPriceOffer,
    required double? sellPriceReal,
    required String? fatherRingnumber,
    required String? motherRingnumber,
    required String? partnerRingnumber,
    required bool? isForSale,
  }) = _Bird;
}
