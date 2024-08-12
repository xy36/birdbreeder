import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';
import 'package:birdbreeder/features/species/domain/models/species.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird.freezed.dart';

@freezed
class Bird with _$Bird {
  factory Bird({
    required String id,
    DateTime? created,
    DateTime? updated,
    String? ringnumber,
    DateTime? born,
    DateTime? died,
    DateTime? bought,
    DateTime? sell,
    double? boughtPrice,
    double? sellPriceOffer,
    double? sellPriceReal,
    Species? species,
    BirdColor? color,
    Cage? cage,
    Bird? father,
    Bird? mother,
    @Default(Sex.unknown) Sex sex,
    bool? sold,
    @Default([]) List<String> children,
  }) = _Bird;

  factory Bird.create() => Bird(
        id: '',
      );
}
