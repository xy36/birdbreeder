import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/icons.dart';

enum BroodStatus {
  active,
  inactive,
  completed;

  IconData get iconData => switch (this) {
        inactive => AppIcons.broodStatusInactive,
        active => AppIcons.broodStatusActive,
        completed => AppIcons.broodStatusCompleted,
      };

  Color get color => switch (this) {
        inactive => Colors.grey,
        active => Colors.green,
        completed => Colors.blue,
      };

  Icon get icon => Icon(iconData, color: color);
}
