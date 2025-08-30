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
        BreedingPairStatus.active =>
          Icon(Icons.play_arrow, color: color, size: size),
        BreedingPairStatus.paused =>
          Icon(Icons.pause, color: color, size: size),
        BreedingPairStatus.finished =>
          Icon(Icons.stop, color: color, size: size),
      };

  Color get color => switch (this) {
        BreedingPairStatus.active => Colors.blue,
        BreedingPairStatus.paused => Colors.pink,
        BreedingPairStatus.finished => Colors.grey,
      };
}
