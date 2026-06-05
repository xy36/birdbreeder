import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/features/ressourcen_center/colors/color_details_sheet.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/resource_bird_row.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/resource_ui.dart';
import 'package:birdbreeder/models/bird/sex_enum.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/utils.dart';
import 'package:birdbreeder/shared/widgets/dialogs/delete_dialog.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';
import 'package:birdbreeder/theme/app_colors.dart';

@RoutePage(name: 'ColorDetailRoute')
class ColorDetailPage extends StatelessWidget {
  const ColorDetailPage({required this.color, super.key});

  final BirdColor color;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final res = context.watch<BirdBreederCubit>().state.birdBreederResources;
    final current = res.colors.firstWhere(
      (c) => c.id == color.id,
      orElse: () => color,
    );
    final birds =
        res.birds.relevantBirds.where((b) => b.colorId == current.id).toList();
    final swatch = (current.hex != null && current.hex!.isNotEmpty)
        ? hexToColor(current.hex!)
        : cs.surfaceContainer;

    final males = birds.where((b) => b.sex == Sex.male).length;
    final females = birds.where((b) => b.sex == Sex.female).length;

    final colorsTr = context.tr.colors;
    return ResourceScaffold(
      titleMain: (current.name?.isNotEmpty ?? false)
          ? current.name!
          : colorsTr.detail_title,
      titleSub: current.hex?.toUpperCase() ?? '',
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: cs.surface,
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
              alignment: Alignment.center,
              child: Container(
                width: 96,
                height: 96,
                decoration: BoxDecoration(
                  color: swatch,
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: cs.outline, width: 2),
                ),
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.4),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            StatsStrip(
              cells: [
                StatCell(
                  value: '${birds.length}',
                  label: colorsTr.stats.birds,
                  color: cs.tertiary,
                ),
                StatCell(
                  value: '$males',
                  label: '${Sex.male.symbol} ${colorsTr.stats.male_roosters}',
                  color: context.appColors.sexMale,
                ),
                StatCell(
                  value: '$females',
                  label: '${Sex.female.symbol} ${colorsTr.stats.female_hens}',
                  color: context.appColors.sexFemale,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 6, 12, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SectionLabel(
                    icon: AppIcons.species,
                    label: colorsTr.birds_with_color,
                    count: birds.length,
                  ),
                  if (birds.isEmpty)
                    _emptyList(context)
                  else
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        color: cs.surface,
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: cs.outlineVariant),
                      ),
                      child: ListView.builder(
                        itemCount: birds.length,
                        itemBuilder: (context, i) => ResourceBirdRow(
                          bird: birds[i],
                          last: i == birds.length - 1,
                        ),
                      ),
                    ),
                  SectionLabel(
                    icon: AppIcons.notes,
                    label: context.tr.common.notes,
                  ),
                  NotesCard(text: current.notes),
                  DetailActionRow(
                    onEdit: () => openSheet<void>(
                      context,
                      ColorDetailsSheet(initialColor: current),
                    ),
                    secondaryIcon: AppIcons.delete,
                    onSecondary: () =>
                        _confirmDelete(context, current, birds.length),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _confirmDelete(BuildContext context, BirdColor color, int usage) {
    final cubit = context.read<BirdBreederCubit>();
    final router = context.router;
    final tr = context.tr;
    DeleteDialog.show(
      context: context,
      title: tr.colors.delete,
      content: usage > 0
          ? tr.resources.delete.with_usage(Usage: usage)
          : tr.dialog.delete_entry.content,
      onDelete: () async {
        await cubit.deleteColor(color);
        router.pop();
      },
    );
  }

  Widget _emptyList(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 22),
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: cs.outlineVariant),
      ),
      child: Text(
        context.tr.colors.no_birds_with_color,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: cs.onSurfaceVariant,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
