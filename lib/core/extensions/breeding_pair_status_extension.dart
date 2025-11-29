import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair_status.dart';
import 'package:birdbreeder/shared/icons.dart';

extension BreedingPairStatusExtension on BreedingPairStatus {
  String getDisplayName(BuildContext context) => switch (this) {
        BreedingPairStatus.active => context.tr.breeding_pairs.status.active,
        BreedingPairStatus.paused => context.tr.breeding_pairs.status.paused,
        BreedingPairStatus.finished =>
          context.tr.breeding_pairs.status.finished,
      };

  Widget getIcon(BuildContext context, {double size = 24}) => switch (this) {
        BreedingPairStatus.active => Icon(
            AppIcons.breedingPairStatusActive,
            color: getForegroundColor(context),
            size: size,
          ),
        BreedingPairStatus.paused => Icon(
            AppIcons.breedingPairStatusPaused,
            color: getForegroundColor(context),
            size: size,
          ),
        BreedingPairStatus.finished => Icon(
            AppIcons.breedingPairStatusFinished,
            color: getForegroundColor(context),
            size: size,
          ),
      };

  Color getBackgroundColor(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return switch (this) {
      BreedingPairStatus.active => scheme.primaryContainer,
      BreedingPairStatus.paused => scheme.secondaryContainer,
      BreedingPairStatus.finished => scheme.surfaceTint,
    };
  }

  Color getForegroundColor(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return switch (this) {
      BreedingPairStatus.active => scheme.onPrimaryContainer,
      BreedingPairStatus.paused => scheme.onSecondaryContainer,
      BreedingPairStatus.finished => scheme.onSurface,
    };
  }
}
