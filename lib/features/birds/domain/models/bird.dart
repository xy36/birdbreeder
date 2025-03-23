import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:birdbreeder/core/extensions/birds_extension.dart';

part 'bird.freezed.dart';

@freezed
class Bird with _$Bird {
  factory Bird({
    required String id,
    required DateTime? created,
    required DateTime? updated,
    required String? ringnumber,
    required DateTime? born,
    required DateTime? died,
    required DateTime? bought,
    required DateTime? sell,
    required double? boughtPrice,
    required double? sellPriceOffer,
    required double? sellPriceReal,
    required String? species,
    required String? color,
    required String? cage,
    required String? father,
    required String? mother,
    @Default(Sex.unknown) Sex sex,
    required bool? sold,
    required bool? isEgg,
    required DateTime? laid,
    required DateTime? hatched,
    required DateTime? flowOut,
    required String? brood,
    required List<String> children,
  }) = _Bird;

  factory Bird.create() => Bird(
        id: '',
        created: null,
        updated: null,
        ringnumber: null,
        born: null,
        died: null,
        bought: null,
        sell: null,
        boughtPrice: null,
        sellPriceOffer: null,
        sellPriceReal: null,
        species: null,
        color: null,
        cage: null,
        father: null,
        mother: null,
        sold: null,
        isEgg: null,
        laid: null,
        hatched: null,
        flowOut: null,
        brood: null,
        children: [],
      );
}
