import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/i_dropdown_enum.dart';

enum Sex implements IDropdownEnum {
  male,
  female,
  unknown;

  @override
  String name(BuildContext context) => switch (this) {
        Sex.male => context.l10n.common__sex_male,
        Sex.female => context.l10n.common__sex_female,
        Sex.unknown => context.l10n.common__sex_unknown,
      };

  Widget icon(BuildContext context) => switch (this) {
        Sex.male => const Icon(Icons.male),
        Sex.female => const Icon(Icons.female),
        Sex.unknown => const Icon(Icons.help),
      };
}
