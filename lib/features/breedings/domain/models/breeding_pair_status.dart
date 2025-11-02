// ignore_for_file: invalid_annotation_target

import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/widgets/color_chip.dart';

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
    return ColorChip(
      text: getDisplayName(context),
      color: getBackgroundColor(context).withValues(alpha: 0.5),
      fg: getForegroundColor(context),
    );
  }
}
