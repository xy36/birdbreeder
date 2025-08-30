// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'breeding_pair.freezed.dart';

enum BreedingPairStatus {
  active,
  paused,
  finished;
}

@freezed
class BreedingPair with _$BreedingPair {
  factory BreedingPair({
    required String id,
    required DateTime? start,
    required DateTime? end,
    required String fatherId,
    required String motherId,
    required String? cageId,
    required BreedingPairStatus status,
    required String? notes,
  }) = _BreedingPair;

  factory BreedingPair.create({
    required String fatherId,
    required String motherId,
    DateTime? start,
    String? notes,
    String? cageId,
    BreedingPairStatus status = BreedingPairStatus.active,
  }) =>
      BreedingPair(
        id: '',
        start: start,
        end: null,
        fatherId: fatherId,
        motherId: motherId,
        cageId: cageId,
        status: status,
        notes: notes,
      );
}
