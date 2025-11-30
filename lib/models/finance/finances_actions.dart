import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/finances/widgets/add_finances_sheet.dart';
import 'package:birdbreeder/models/finance/entity/finance.dart';
import 'package:birdbreeder/models/item_action.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/dialogs/delete_dialog.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

enum FinancesActions implements ItemAction<Finance> {
  edit,
  duplicate,
  delete;

  static Widget buildMenu(
    BuildContext context,
    Finance finances,
  ) {
    return moreMenu<Finance>(
      context,
      finances,
      values
          .map(
            (action) => (
              icon: action.icon,
              label: action.getLabel(context),
              action: action.execute,
            ),
          )
          .toList(),
    );
  }

  @override
  Icon get icon {
    return switch (this) {
      edit => const Icon(AppIcons.edit),
      delete => const Icon(AppIcons.delete, color: Colors.red),
      duplicate => const Icon(AppIcons.duplicate),
    };
  }

  @override
  String getLabel(BuildContext context) {
    return switch (this) {
      edit => context.tr.pop_up_menu.edit,
      delete => context.tr.pop_up_menu.delete,
      duplicate => context.tr.pop_up_menu.duplicate,
    };
  }

  @override
  Future<void> execute(
    BuildContext context,
    Finance finances, {
    dynamic extra,
  }) async {
    switch (this) {
      case edit:
        await openSheet<void>(
          context,
          AddFinancesSheet(finances: finances),
        );
      case delete:
        if (context.mounted) {
          await DeleteDialog.show(
            context: context,
            title: context.tr.finances.delete,
            onDelete: () async {
              await context.maybePop();

              if (context.mounted) {
                await context.read<BirdBreederCubit>().deleteFinances(finances);
              }
            },
          );
        }
      case duplicate:
        await context.read<BirdBreederCubit>().duplicateFinances(finances);
    }
  }
}
