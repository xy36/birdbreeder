import 'package:freezed_annotation/freezed_annotation.dart';

part 'brood.freezed.dart';

@freezed
abstract class Brood with _$Brood {
  factory Brood({
    required String id,
    required DateTime? start,
    required DateTime? end,
    required String? notes,
    required String? cage,
    required String? breedingPair,
    DateTime? created,
    DateTime? updated,
  }) = _Brood;

  factory Brood.create({
    required String breedingPairId,
    DateTime? start,
    DateTime? end,
    String? notes,
    String? cage,
  }) =>
      Brood(
        id: '',
        start: start,
        end: end,
        notes: notes,
        cage: cage,
        breedingPair: breedingPairId,
      );
}
