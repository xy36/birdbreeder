import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:birdbreeder/shared/icons.dart';

extension SexExtensions on Sex {
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
