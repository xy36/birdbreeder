// ignore_for_file: invalid_annotation_target

import 'package:birdbreeder/common_imports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'breeding_pair.freezed.dart';

enum BreedingPairStatus {
  active,
  paused,
  finished;

  String getDisplayName(BuildContext context) => switch (this) {
        BreedingPairStatus.active => context.tr.breeding_pairs.status.active,
        BreedingPairStatus.paused => context.tr.breeding_pairs.status.paused,
        BreedingPairStatus.finished =>
          context.tr.breeding_pairs.status.finished,
      };

  Color getForegroundColor(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return switch (this) {
      BreedingPairStatus.active => scheme.primary,
      BreedingPairStatus.paused => scheme.secondary,
      BreedingPairStatus.finished => scheme.tertiary,
    };
  }

  Color getBackgroundColor(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return switch (this) {
      BreedingPairStatus.active => scheme.primaryContainer,
      BreedingPairStatus.paused => scheme.secondaryContainer,
      BreedingPairStatus.finished => scheme.tertiaryContainer,
    };
  }

  Widget getChip(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: getBackgroundColor(context).withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        getDisplayName(context),
        style: TextStyle(
          color: getForegroundColor(context),
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
      ),
    );
  }
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
