import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/theme/app_colors.dart';

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

  Color colorOf(BuildContext context) {
    final c = context.appColors;
    return switch (this) {
      Sex.male => c.sexMale,
      Sex.female => c.sexFemale,
      Sex.unknown => c.sexUnknown,
    };
  }

  String getDisplayName(BuildContext context) => switch (this) {
        Sex.male => context.tr.common.sex.male,
        Sex.female => context.tr.common.sex.female,
        Sex.unknown => context.tr.common.sex.unknown,
      };

  Widget getIcon(BuildContext context, {double size = 24}) {
    return Icon(iconData, color: colorOf(context), size: size);
  }
}
