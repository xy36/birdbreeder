import 'package:birdbreeder/features/birds/domain/entities/origin.dart';
import 'package:birdbreeder/features/birds/domain/entities/sex.dart';
import 'package:birdbreeder/features/cages/domain/entities/cage.dart';
import 'package:birdbreeder/features/colors/domain/entities/bird_color.dart';
import 'package:birdbreeder/features/species/domain/entities/species.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird.freezed.dart';

@freezed
class Bird with _$Bird {
  factory Bird({
    required String? id,
    required String? ringnumber,
    required Species? species,
    required BirdColor? color,
    required Cage? cage,
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

  factory Bird.empty() => Bird(
        bornDate: null,
        boughtDate: null,
        boughtPrice: null,
        cage: null,
        color: null,
        diedDate: null,
        fatherRingnumber: null,
        id: null,
        isForSale: null,
        motherRingnumber: null,
        origin: null,
        partnerRingnumber: null,
        ringnumber: null,
        sellDate: null,
        sellPriceOffer: null,
        species: null,
        sex: null,
        sellPriceReal: null,
      );
}
