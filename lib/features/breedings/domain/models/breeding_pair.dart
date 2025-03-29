// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'breeding_pair.freezed.dart';

@freezed
class BreedingPair with _$BreedingPair {
  factory BreedingPair({
    required String id,
    required DateTime? start,
    required DateTime? end,
    required String? father,
    required String? mother,
    required List<String>? broods,
  }) = _BreedingPair;

  factory BreedingPair.create() => BreedingPair(
        id: '',
        start: null,
        end: null,
        father: null,
        mother: null,
        broods: [],
      );
}
