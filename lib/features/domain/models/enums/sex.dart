import 'package:birdbreeder/common_imports.dart';

import 'i_dropdown_enum.dart';

enum Sex implements IDropdownEnum {
  male,
  female,
  unknown;

  String name(BuildContext context) => switch (this) {
        Sex.male => context.l10n.common__sex_male,
        Sex.female => context.l10n.common__sex_female,
        Sex.unknown => context.l10n.common__sex_unknown,
      };
}
