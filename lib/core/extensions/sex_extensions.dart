import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';

extension SexExtensions on Sex {
  String getDisplayName(BuildContext context) => switch (this) {
        Sex.male => context.l10n.common__sex_male,
        Sex.female => context.l10n.common__sex_female,
        Sex.unknown => context.l10n.common__sex_unknown,
      };

  Widget getIcon(BuildContext context, {double size = 24}) => switch (this) {
        Sex.male => Icon(Icons.male, color: Colors.blue, size: size),
        Sex.female => Icon(Icons.female, color: Colors.pink, size: size),
        Sex.unknown =>
          Icon(Icons.question_mark, color: Colors.grey, size: size),
      };
}
