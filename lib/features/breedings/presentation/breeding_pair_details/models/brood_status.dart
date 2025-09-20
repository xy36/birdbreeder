import 'package:birdbreeder/common_imports.dart';

enum BroodStatus {
  active,
  inactive,
  completed;

  IconData get iconData => switch (this) {
        inactive => Icons.pause_circle_filled,
        active => Icons.play_circle_fill,
        completed => Icons.check_circle,
      };

  Color get color => switch (this) {
        inactive => Colors.grey,
        active => Colors.green,
        completed => Colors.blue,
      };

  Icon get icon => Icon(iconData, color: color);
}
