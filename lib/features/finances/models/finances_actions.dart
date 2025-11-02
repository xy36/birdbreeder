import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/domain/models/finance.dart';
import 'package:birdbreeder/features/finances/widgets/add_finances_sheet.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/dialogs/delete_dialog.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

enum FinancesActions {
  edit,
  duplicate,
  delete;

  Icon get icon {
    return switch (this) {
      edit => const Icon(AppIcons.edit),
      delete => const Icon(AppIcons.delete, color: Colors.red),
      duplicate => const Icon(AppIcons.duplicate),
    };
  }

  String getLabel(BuildContext context) {
    return switch (this) {
      edit => context.tr.pop_up_menu.edit,
      delete => context.tr.pop_up_menu.delete,
      duplicate => context.tr.pop_up_menu.duplicate,
    };
  }

  Future<void> executeAction(
    BuildContext context,
    Finance finances,
  ) async {
    return switch (this) {
      edit => await openSheet<void>(
          context,
          AddFinancesSheet(finances: finances),
        ),
      delete => {
          if (context.mounted)
            await DeleteDialog.show(
              context: context,
              title: context.tr.finances.delete,
              onDelete: () async {
                await context.maybePop();

                if (context.mounted) {
                  await context
                      .read<BirdBreederCubit>()
                      .deleteFinances(finances);
                }
              },
            ),
        },
      duplicate =>
        await context.read<BirdBreederCubit>().duplicateFinances(finances),
    };
  }
}
