import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';

extension SexExtensions on Sex {
  String getTranslatedName(BuildContext context) => switch (this) {
        Sex.male => context.l10n.common__sex_male,
        Sex.female => context.l10n.common__sex_female,
        Sex.unknown => context.l10n.common__sex_unknown,
      };

  Widget getIcon(BuildContext context) => switch (this) {
        Sex.male => const Icon(Icons.male),
        Sex.female => const Icon(Icons.female),
        Sex.unknown => const Icon(Icons.help),
      };
}
