import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/bird_documents/data/bird_document_builder.dart';
import 'package:birdbreeder/features/bird_documents/presentation/bird_document_sheet.dart';
import 'package:birdbreeder/features/export/presentation/cubit/export_cubit.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/item_action.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/cubits/currency_cubit/currency_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/utils/formatter/money_formatter.dart';
import 'package:birdbreeder/shared/widgets/dialogs/delete_dialog.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

enum BirdActions implements ItemAction<Bird> {
  edit,
  pedigree,
  documents,
  duplicate,
  delete;

  static Widget buildMenu(
    BuildContext context,
    Bird bird, [
    List<BirdActions>? include,
  ]) {
    return moreMenu<Bird>(
      context,
      bird,
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
      pedigree => const Icon(AppIcons.pedigree),
      documents => const Icon(AppIcons.description),
      delete => const Icon(AppIcons.delete, color: Colors.red),
      duplicate => const Icon(AppIcons.duplicate),
    };
  }

  @override
  String getLabel(BuildContext context) {
    return switch (this) {
      edit => context.tr.pop_up_menu.edit,
      pedigree => context.tr.pop_up_menu.pedigree,
      documents => context.tr.pop_up_menu.documents,
      delete => context.tr.pop_up_menu.delete,
      duplicate => context.tr.pop_up_menu.duplicate,
    };
  }

  @override
  Future<void> execute(
    BuildContext context,
    Bird bird, {
    dynamic extra,
  }) async {
    switch (this) {
      case edit:
        await context.router.push(BirdRoute(bird: bird));
      case pedigree:
        await context.router.push(PedigreeRoute(bird: bird));
      case documents:
        // Built via `read` rather than `context.money`: this runs in a tap
        // callback, where `watch` is not allowed.
        final cubit = context.read<ExportCubit>();
        final t = context.tr;
        final money = MoneyFormatter(
          locale: Localizations.localeOf(context).languageCode,
          currencyCode: context.read<CurrencyCubit>().state,
        );
        final choice = await showBirdDocumentSheet(context, bird);
        if (choice == null) return;
        await cubit.exportDocument(
          buildBytes: () => BirdDocumentBuilder.build(
            type: choice.type,
            bird: bird,
            t: t,
            money: money,
            profile: choice.profile,
          ),
          fileName: choice.fileName,
        );
      case delete:
        if (context.mounted) {
          await DeleteDialog.show(
            context: context,
            title: context.tr.bird.delete,
            onDelete: () async {
              await context.maybePop();

              if (context.mounted) {
                await context.read<BirdBreederCubit>().deleteBird(bird);
              }
            },
          );
        }
      case duplicate:
        await context.read<BirdBreederCubit>().duplicateBird(bird);
    }
  }
}
