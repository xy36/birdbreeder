import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/icons.dart';

export 'package:birdbreeder/core/extensions/sex_extensions.dart';

enum Sex {
  male,
  female,
  unknown;

  IconData get iconData => switch (this) {
        Sex.male => AppIcons.sexMale,
        Sex.female => AppIcons.sexFemale,
        Sex.unknown => AppIcons.sexUnknown,
      };

  Color get color => switch (this) {
        Sex.male => Colors.blue,
        Sex.female => Colors.pink,
        Sex.unknown => Colors.grey,
      };

  String getDisplayName(BuildContext context) => switch (this) {
        Sex.male => context.tr.common.sex.male,
        Sex.female => context.tr.common.sex.female,
        Sex.unknown => context.tr.common.sex.unknown,
      };

  Widget getIcon(BuildContext context, {double size = 24}) => switch (this) {
        Sex.male => Icon(AppIcons.sexMale, color: Colors.blue, size: size),
        Sex.female => Icon(AppIcons.sexFemale, color: Colors.pink, size: size),
        Sex.unknown =>
          Icon(AppIcons.sexUnknown, color: Colors.grey, size: size),
      };
}
