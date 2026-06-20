import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/core/extensions/brood_extension.dart';
import 'package:birdbreeder/core/extensions/egg_extension.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/breedings/shared/mini_stats.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/breeding/entity/brood.dart';
import 'package:birdbreeder/models/egg/egg_actions.dart';
import 'package:birdbreeder/models/egg/entity/egg.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/utils.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';
import 'package:birdbreeder/shared/widgets/value_selector.dart';

class BroodSheetContent extends StatelessWidget {
  const BroodSheetContent({
    required this.brood,
    required this.scrollController,
    super.key,
  });

  final Brood brood;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tr = context.tr;
    return BlocBuilder<BirdBreederCubit, BirdBreederState>(
      builder: (context, state) {
        final eggs = state.birdBreederResources.eggs
            .where((e) => e.broodId == brood.id)
            .sortedBy((e) => e.laidAt)
            .toList();
        final fertilized = eggs.where((e) => e.fertilizedAt != null).length;
        final hatched = eggs.where((e) => e.hatchedAt != null).length;
        final fledged = eggs.where((e) => e.fledgedAt != null).length;
        final start = brood.start;
        final end = brood.end;
        final day = start == null
            ? null
            : DateTime.now().difference(start).inDays + 1;
        final number = _broodIndex(brood);
        return Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(12, 4, 12, 12),
              decoration: BoxDecoration(
                color: cs.surface,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: cs.tertiary, width: 2),
              ),
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 8,
                    ),
                    color: cs.tertiaryContainer,
                    child: Row(
                      children: [
                        Icon(
                          AppIcons.egg,
                          size: 16,
                          color: cs.onTertiaryContainer,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          tr.pair_detail.brood_short,
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.6,
                            color: cs.onTertiaryContainer,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Expanded(
                          child: Text(
                            '#${number ?? '?'}',
                            style: TextStyle(
                              fontFamily: 'monospace',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.3,
                              color: cs.onTertiaryContainer,
                            ),
                          ),
                        ),
                        if (day != null)
                          Text(
                            tr.pair_detail.day(Day: day),
                            style: TextStyle(
                              fontFamily: 'monospace',
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: cs.onTertiaryContainer,
                            ),
                          ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 10, 12, 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (start != null)
                          Text(
                            end != null
                                ? '${MaterialLocalizations.of(context).formatShortDate(start)} – ${MaterialLocalizations.of(context).formatShortDate(end)}'
                                : tr.pair_detail.start_label(
                                    Date: MaterialLocalizations.of(context)
                                        .formatShortDate(start),
                                  ),
                            style: TextStyle(
                              fontSize: 11,
                              fontFamily: 'monospace',
                              color: cs.onSurfaceVariant,
                            ),
                          ),
                        const SizedBox(height: 10),
                        MiniStats(
                          laid: eggs.length,
                          fertilized: fertilized,
                          hatched: hatched,
                          fledged: fledged,
                          expanded: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: eggs.isEmpty
                  ? Center(
                      child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: Text(
                          tr.egg.add,
                          style: TextStyle(color: cs.onSurfaceVariant),
                        ),
                      ),
                    )
                  : ListView.separated(
                      controller: scrollController,
                      padding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
                      itemCount: eggs.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 8),
                      itemBuilder: (_, i) => _EggCard(egg: eggs[i]),
                    ),
            ),
            SafeArea(
              top: false,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                child: Row(
                  children: [
                    Expanded(
                      child: FilledButton.icon(
                        icon: const Icon(AppIcons.add),
                        onPressed: () async {
                          final laidDate = await promptDateValue(
                            context,
                            title: tr.egg.pick_laid_date,
                          );
                          if (!context.mounted || laidDate == null) return;
                          final species =
                              brood.breedingPairResolved?.speciesResolved;
                          await context.read<BirdBreederCubit>().addEgg(
                                Egg.create(
                                  broodId: brood.id,
                                  number: state
                                          .birdBreederResources.eggs.length +
                                      1,
                                  laidAt: laidDate,
                                ).copyWith(
                                  cageId: brood.cage,
                                  speciesId: species?.id,
                                ),
                              );
                        },
                        label: Text(tr.egg.add),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  int? _broodIndex(Brood b) {
    final pair = b.breedingPairResolved;
    if (pair == null) return null;
    final all = pair.broodsResolved
      ..sort((x, y) {
        final xd = x.start ?? DateTime(1970);
        final yd = y.start ?? DateTime(1970);
        return xd.compareTo(yd);
      });
    final idx = all.indexWhere((e) => e.id == b.id);
    return idx == -1 ? null : idx + 1;
  }
}

class _EggCard extends StatelessWidget {
  const _EggCard({required this.egg});
  final Egg egg;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final (bg, fg, icon, label) = egg.status.getDisplayData(context);
    final statusColor = fg;
    return Container(
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: BorderRadius.circular(10),
        border: Border(left: BorderSide(color: statusColor, width: 4)),
      ),
      padding: const EdgeInsets.fromLTRB(12, 10, 4, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '#${egg.number}',
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: cs.onSurfaceVariant,
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: bg,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  label.toUpperCase(),
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5,
                    color: fg,
                  ),
                ),
              ),
              const Spacer(),
              EggActions.buildMenu(context, egg),
            ],
          ),
          if (egg.ringnumber != null || egg.colorResolved != null) ...[
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Wrap(
                spacing: 10,
                runSpacing: 4,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  if (egg.ringnumber != null)
                    Text(
                      egg.ringnumber!,
                      style: TextStyle(
                        fontFamily: 'monospace',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: cs.onSurface,
                      ),
                    ),
                  if (egg.colorResolved != null)
                    Text(
                      egg.colorResolved?.name ?? '—',
                      style: TextStyle(
                        fontSize: 11,
                        color: cs.onSurfaceVariant,
                      ),
                    ),
                ],
              ),
            ),
          ],
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Row(
              children: [
                _DateChip(
                  date: egg.laidAt,
                  label: context.tr.breeding_pairs.stats.abbr.laid,
                ),
                if (egg.fertilizedAt != null) ...[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      '→',
                      style: TextStyle(
                        fontSize: 11,
                        color: cs.outline,
                      ),
                    ),
                  ),
                  _DateChip(
                    date: egg.fertilizedAt!,
                    label: context.tr.breeding_pairs.stats.abbr.fertilized,
                    color: cs.tertiary,
                  ),
                ],
                if (egg.hatchedAt != null) ...[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      '→',
                      style: TextStyle(
                        fontSize: 11,
                        color: cs.outline,
                      ),
                    ),
                  ),
                  _DateChip(
                    date: egg.hatchedAt!,
                    label: context.tr.breeding_pairs.stats.abbr.hatched,
                    color: cs.primary,
                  ),
                ],
                if (egg.fledgedAt != null) ...[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      '→',
                      style: TextStyle(
                        fontSize: 11,
                        color: cs.outline,
                      ),
                    ),
                  ),
                  _DateChip(
                    date: egg.fledgedAt!,
                    label: context.tr.breeding_pairs.stats.abbr.fledged,
                    color: cs.secondary,
                  ),
                ],
              ],
            ),
          ),
          if (egg.birdResolved != null) ...[
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Align(
                alignment: Alignment.centerLeft,
                child: _StockLink(bird: egg.birdResolved!),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

/// Tappable marker shown when an egg has been turned into a stock bird.
///
/// Surfaces the linked [bird] (via `egg.birdId`) and navigates to its detail
/// page on tap.
class _StockLink extends StatelessWidget {
  const _StockLink({required this.bird});

  final Bird bird;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final ring = bird.ringNumber;
    final label = ring != null && ring.isNotEmpty
        ? '${context.tr.egg.in_stock} · $ring'
        : context.tr.egg.in_stock;

    return InkWell(
      onTap: () => context.router.push(BirdRoute(bird: bird)),
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        decoration: BoxDecoration(
          color: cs.primaryContainer,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(AppIcons.birdAvatar, size: 14, color: cs.onPrimaryContainer),
            const SizedBox(width: 6),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: cs.onPrimaryContainer,
              ),
            ),
            const SizedBox(width: 2),
            Icon(AppIcons.chevronRight, size: 16, color: cs.onPrimaryContainer),
          ],
        ),
      ),
    );
  }
}

class _DateChip extends StatelessWidget {
  const _DateChip({required this.date, required this.label, this.color});
  final DateTime date;
  final String label;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final fg = color ?? cs.onSurfaceVariant;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 9,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.5,
            color: fg,
          ),
        ),
        const SizedBox(width: 3),
        Text(
          '${date.day.toString().padLeft(2, '0')}.${date.month.toString().padLeft(2, '0')}.',
          style: TextStyle(
            fontFamily: 'monospace',
            fontSize: 11,
            color: cs.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
