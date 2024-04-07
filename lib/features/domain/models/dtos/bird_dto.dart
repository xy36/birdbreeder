import 'package:birdbreeder/features/domain/models/dtos/timestamp.dart';
import 'package:birdbreeder/features/domain/models/enums/origin.dart';
import 'package:birdbreeder/features/domain/models/enums/sex.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_dto.freezed.dart';
part 'bird_dto.g.dart';

@freezed
class BirdDto with _$BirdDto, Timestamp {
  @With<Timestamp>()
  factory BirdDto({
    required String? id,
    required String? ringnumber,
    required String? speciesId,
    required String? colorId,
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
  }) = _BirdDto;

  factory BirdDto.fromJson(Map<String, dynamic> json) =>
      _$BirdDtoFromJson(json);
}
