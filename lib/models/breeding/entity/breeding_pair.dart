import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair_status.dart';
import 'package:birdbreeder/models/searchable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'breeding_pair.freezed.dart';

@freezed
abstract class BreedingPair with _$BreedingPair, Searchable {
  factory BreedingPair({
    required String id,
    required DateTime? start,
    required DateTime? end,
    required String fatherId,
    required String motherId,
    required String? cageId,
    required BreedingPairStatus status,
    required String? notes,
    DateTime? created,
    DateTime? updated,
  }) = _BreedingPair;

  const BreedingPair._();

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

  @override
  String get searchIndex {
    final fatherResolved = this.fatherResolved;
    final motherResolved = this.motherResolved;

    return [
      fatherResolved?.ringNumber,
      fatherResolved?.speciesResolved?.name,
      motherResolved?.ringNumber,
      motherResolved?.speciesResolved?.name,
      cageResolved?.name,
      notes,
    ]
        .where((e) => e != null && e.trim().isNotEmpty)
        .map((e) => e!.toLowerCase())
        .join(' ');
  }
}
