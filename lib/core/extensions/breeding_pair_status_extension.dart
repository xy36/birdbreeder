import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';

extension BreedingPairStatusExtension on BreedingPairStatus {
  String getDisplayName(BuildContext context) => switch (this) {
        BreedingPairStatus.active => context.tr.breeding_pairs.status.active,
        BreedingPairStatus.paused => context.tr.breeding_pairs.status.paused,
        BreedingPairStatus.finished =>
          context.tr.breeding_pairs.status.finished,
      };

  Widget getIcon(BuildContext context, {double size = 24}) => switch (this) {
        BreedingPairStatus.active => Icon(
            Icons.play_arrow,
            color: getForegroundColor(context),
            size: size,
          ),
        BreedingPairStatus.paused =>
          Icon(Icons.pause, color: getForegroundColor(context), size: size),
        BreedingPairStatus.finished =>
          Icon(Icons.stop, color: getForegroundColor(context), size: size),
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
