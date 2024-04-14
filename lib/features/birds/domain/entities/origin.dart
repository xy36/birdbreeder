import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/i_dropdown_enum.dart';

enum Origin implements IDropdownEnum {
  bought,
  bred,
  stock,
  unknown;

  @override
  String name(BuildContext context) => switch (this) {
        Origin.bought => context.l10n.common__origin_bought,
        Origin.bred => context.l10n.common__origin_bred,
        Origin.stock => context.l10n.common__origin_stock,
        Origin.unknown => context.l10n.common__origin_unknown,
      };
}
