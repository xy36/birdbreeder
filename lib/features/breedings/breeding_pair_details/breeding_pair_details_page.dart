import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/core/extensions/brood_extension.dart';
import 'package:birdbreeder/core/extensions/egg_extension.dart';
import 'package:birdbreeder/core/extensions/generic_join.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/breedings/breeding_pair_details/broods_tab/add_brood_sheet.dart';
import 'package:birdbreeder/features/breedings/shared/mini_stats.dart';
import 'package:birdbreeder/models/bird/sex_enum.dart';
import 'package:birdbreeder/models/breeding/breeding_pair_actions.dart';
import 'package:birdbreeder/models/breeding/brood_actions.dart';
import 'package:birdbreeder/models/breeding/brood_status.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair_status.dart';
import 'package:birdbreeder/models/breeding/entity/brood.dart';
import 'package:birdbreeder/models/egg/entity/egg.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/utils.dart';
import 'package:birdbreeder/shared/widgets/navigate_back_button.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';
import 'package:birdbreeder/theme/app_colors.dart';
import 'package:collection/collection.dart';

@RoutePage()
class BreedingPairDetailsPage extends StatelessWidget {
  const BreedingPairDetailsPage({required this.breedingPairId, super.key});

  final String breedingPairId;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tr = context.tr;
    return BlocBuilder<BirdBreederCubit, BirdBreederState>(
      builder: (context, state) {
        final res = state.birdBreederResources;
        final pair =
            res.breedingPairs.firstWhereOrNull((p) => p.id == breedingPairId);
        if (pair == null) {
          return const Scaffold(body: SizedBox());
        }
        final broods =
            res.broods.where((b) => b.breedingPair == pair.id).toList()
              ..sort((a, b) {
                final ad = a.start ?? DateTime(1970);
                final bd = b.start ?? DateTime(1970);
                return bd.compareTo(ad);
              });
        final eggsByBrood = <String, List<Egg>>{
          for (final b in broods)
            b.id: res.eggs.where((e) => e.broodId == b.id).toList()
              ..sort((x, y) => x.number.compareTo(y.number)),
        };
        final allEggs = eggsByBrood.values.expand((e) => e).toList();
        final totalLaid = allEggs.length;
        final totalFertilized =
            allEggs.where((e) => e.fertilizedAt != null).length;
        final totalHatched = allEggs.where((e) => e.hatchedAt != null).length;
        final totalFledged = allEggs.where((e) => e.fledgedAt != null).length;

        final currentBrood = broods.firstWhereOrNull(
          (b) => b.status == BroodStatus.active,
        );
        final history = broods.where((b) => b != currentBrood).toList();

        return Scaffold(
          appBar: AppBar(
            title: Text(tr.breeding_pairs.title),
            centerTitle: false,
            leading: const NavigateBackButton(discardDialogEnabled: false),
            actions: [BreedingPairActions.buildMenu(context, pair)],
          ),
          body: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics(),
            ),
            slivers: [
              PinnedHeaderSliver(
                child: Material(
                  color: cs.surface,
                  child: _IdentityHeader(
                    pair: pair,
                    totalBroods: broods.length,
                    totalLaid: totalLaid,
                    totalFertilized: totalFertilized,
                    totalHatched: totalHatched,
                    totalFledged: totalFledged,
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(12, 16, 12, 110),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    if (currentBrood != null) ...[
                      _SectionLabel(
                        icon: Icons.local_fire_department,
                        label: tr.pair_detail.current_brood,
                        accent: cs.tertiary,
                      ),
                      const SizedBox(height: 8),
                      _CurrentBroodHero(
                        brood: currentBrood,
                        pair: pair,
                        eggs: eggsByBrood[currentBrood.id] ?? [],
                        onTap: () => onOpenBrood(context, currentBrood),
                      ),
                      const SizedBox(height: 14),
                    ],
                    _SectionLabel(
                      icon: AppIcons.history,
                      label: history.isEmpty
                          ? tr.pair_detail.history
                          : '${tr.pair_detail.history} · ${history.length == 1 ? tr.pair_detail.history_count_one(Count: history.length) : tr.pair_detail.history_count_other(Count: history.length)}',
                      accent: cs.onSurfaceVariant,
                    ),
                    const SizedBox(height: 8),
                    if (history.isEmpty && currentBrood == null)
                      Padding(
                        padding: const EdgeInsets.all(24),
                        child: Center(
                          child: Text(
                            tr.brood.empty,
                            style: TextStyle(color: cs.onSurfaceVariant),
                          ),
                        ),
                      )
                    else
                      for (final b in history) ...[
                        _HistoryBroodCard(
                          brood: b,
                          pair: pair,
                          eggs: eggsByBrood[b.id] ?? [],
                          onTap: () => onOpenBrood(context, b),
                        ),
                        const SizedBox(height: 8),
                      ],
                  ]),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () async {
              await openSheet<Brood>(
                context,
                AddBroodSheet(breedingPair: pair),
              );
            },
            icon: const Icon(AppIcons.add),
            label: Text(tr.pair_detail.new_brood),
          ),
        );
      },
    );
  }
}

class _IdentityHeader extends StatelessWidget {
  const _IdentityHeader({
    required this.pair,
    required this.totalBroods,
    required this.totalLaid,
    required this.totalFertilized,
    required this.totalHatched,
    required this.totalFledged,
  });

  final BreedingPair pair;
  final int totalBroods;
  final int totalLaid;
  final int totalFertilized;
  final int totalHatched;
  final int totalFledged;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tr = context.tr;
    final father = pair.fatherResolved;
    final mother = pair.motherResolved;
    return Container(
      decoration: BoxDecoration(
        color: cs.surface,
        border: Border(bottom: BorderSide(color: cs.outlineVariant)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: _ParentBox(
                          sex: Sex.male,
                          ring: father?.ringNumber,
                          color: father?.colorResolved,
                          age: _ageOf(father?.effectiveBornAt),
                          onTap: father == null
                              ? null
                              : () =>
                                  context.router.push(BirdRoute(bird: father)),
                        ),
                      ),
                      Container(
                        width: 28,
                        height: 28,
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: cs.surfaceContainer,
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: Icon(
                          AppIcons.close,
                          size: 14,
                          color: cs.onSurfaceVariant,
                        ),
                      ),
                      Expanded(
                        child: _ParentBox(
                          sex: Sex.female,
                          ring: mother?.ringNumber,
                          color: mother?.colorResolved,
                          age: _ageOf(mother?.effectiveBornAt),
                          onTap: mother == null
                              ? null
                              : () =>
                                  context.router.push(BirdRoute(bird: mother)),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _StatusChip(status: pair.status),
                      if (pair.cageResolved?.name != null) ...[
                        const SizedBox(width: 6),
                        _Pill(
                          icon: AppIcons.cage,
                          label: pair.cageResolved!.name!,
                        ),
                      ],
                      if (pair.start != null) ...[
                        const SizedBox(width: 6),
                        _Pill(
                          icon: AppIcons.date,
                          label:
                              tr.pair_detail.since(Date: '${pair.start!.year}'),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 0, 14, 12),
            child: Row(
              children: [
                _BroodsCounter(count: totalBroods),
                const SizedBox(width: 8),
                Expanded(
                  child: MiniStats(
                    laid: totalLaid,
                    fertilized: totalFertilized,
                    hatched: totalHatched,
                    fledged: totalFledged,
                    expanded: true,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String? _ageOf(DateTime? born) {
    if (born == null) return null;
    final now = DateTime.now();
    final years = now.year - born.year;
    final months = now.month - born.month;
    final totalMonths = years * 12 + months;
    if (totalMonths < 12) return '${totalMonths}M';
    return '${(totalMonths / 12).floor()}J';
  }
}

class _ParentBox extends StatelessWidget {
  const _ParentBox({
    required this.sex,
    required this.ring,
    required this.color,
    required this.age,
    this.onTap,
  });

  final Sex sex;
  final String? ring;
  final BirdColor? color;
  final String? age;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tr = context.tr;
    final sexColor = sex == Sex.male
        ? context.appColors.sexMale
        : context.appColors.sexFemale;
    final label = sex == Sex.male
        ? tr.pair_detail.father_label
        : tr.pair_detail.mother_label;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
        decoration: BoxDecoration(
          color: cs.surfaceContainer,
          borderRadius: BorderRadius.circular(12),
          border: Border(left: BorderSide(color: sexColor, width: 3)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.6,
                color: sexColor,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              ring ?? '???',
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: cs.onSurface,
                letterSpacing: 0.3,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Row(
              spacing: 4,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (color != null) Flexible(child: _ColorWidget(color!)),
                if (age != null)
                  Text(
                    age!,
                    style: TextStyle(
                      fontSize: 10,
                      color: cs.onSurfaceVariant,
                    ),
                  ),
              ].genericJoin(
                Text(
                  '·',
                  style: TextStyle(
                    fontSize: 10,
                    color: cs.onSurfaceVariant,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ColorWidget extends StatelessWidget {
  const _ColorWidget(this.color);

  final BirdColor color;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if ((color.hex?.isNotEmpty ?? false)) ...[
          _ColorDot(hex: color.hex!),
          const SizedBox(width: 4),
        ],
        Flexible(
          child: Text(
            color.name ?? '—',
            style: TextStyle(
              fontSize: 10,
              color: cs.onSurfaceVariant,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

class _ColorDot extends StatelessWidget {
  const _ColorDot({required this.hex});
  final String hex;
  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    Color c;
    try {
      c = hexToColor(hex);
    } on FormatException {
      c = cs.surfaceContainer;
    }
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: c,
        shape: BoxShape.circle,
        border: Border.all(color: cs.outline, width: 0.5),
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  const _StatusChip({required this.status});
  final BreedingPairStatus status;
  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final bg = switch (status) {
      BreedingPairStatus.active => cs.primaryContainer,
      BreedingPairStatus.paused => cs.tertiaryContainer,
      BreedingPairStatus.finished => cs.surfaceContainerHighest,
    };
    final fg = switch (status) {
      BreedingPairStatus.active => cs.onPrimaryContainer,
      BreedingPairStatus.paused => cs.onTertiaryContainer,
      BreedingPairStatus.finished => cs.onSurfaceVariant,
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      decoration:
          BoxDecoration(color: bg, borderRadius: BorderRadius.circular(100)),
      child: Text(
        status.getDisplayName(context).toUpperCase(),
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
          color: fg,
        ),
      ),
    );
  }
}

class _Pill extends StatelessWidget {
  const _Pill({required this.icon, required this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: cs.surfaceContainer,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 11, color: cs.onSurfaceVariant),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: cs.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

class _BroodsCounter extends StatelessWidget {
  const _BroodsCounter({required this.count});
  final int count;
  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tr = context.tr;
    return Container(
      constraints: const BoxConstraints(minWidth: 50),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
      decoration: BoxDecoration(
        color: cs.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            tr.pair_detail.kpi.broods.toUpperCase(),
            style: TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.w700,
              color: cs.onSurfaceVariant,
              letterSpacing: 0.5,
            ),
          ),
          Text(
            '$count',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: cs.onSurface,
              letterSpacing: 0.3,
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  const _SectionLabel({
    required this.icon,
    required this.label,
    required this.accent,
  });
  final IconData icon;
  final String label;
  final Color accent;
  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Row(
        children: [
          Icon(icon, size: 13, color: accent),
          const SizedBox(width: 6),
          Text(
            label.toUpperCase(),
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.2,
              color: cs.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

class _CurrentBroodHero extends StatelessWidget {
  const _CurrentBroodHero({
    required this.brood,
    required this.pair,
    required this.eggs,
    required this.onTap,
  });
  final Brood brood;
  final BreedingPair pair;
  final List<Egg> eggs;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final fertilized = eggs.where((e) => e.fertilizedAt != null).length;
    final hatched = eggs.where((e) => e.hatchedAt != null).length;
    final fledged = eggs.where((e) => e.fledgedAt != null).length;
    final tr = context.tr;
    final start = brood.start;
    final day =
        start == null ? null : DateTime.now().difference(start).inDays + 1;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: BoxDecoration(
          color: cs.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: cs.tertiary, width: 2),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              color: cs.tertiaryContainer,
              child: Column(
                children: [
                  Row(
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
                          '#${broodIndex(brood) ?? '?'}',
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
                      BroodActions.buildMenu(context, brood, pair),
                    ],
                  ),
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
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (start != null)
                    Text(
                      tr.pair_detail.start_label(
                        Date: MaterialLocalizations.of(context)
                            .formatShortDate(start),
                      ),
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: 'monospace',
                        color: cs.onSurfaceVariant,
                      ),
                    ),
                  const SizedBox(height: 8),
                  if (eggs.isEmpty)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Center(
                        child: Text(
                          tr.egg.add,
                          style: TextStyle(color: cs.onSurfaceVariant),
                        ),
                      ),
                    )
                  else
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: eggs.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 6,
                        mainAxisSpacing: 6,
                        mainAxisExtent: 92,
                      ),
                      itemBuilder: (_, i) => _EggMiniTile(egg: eggs[i]),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  int? broodIndex(Brood b) {
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

class _EggMiniTile extends StatelessWidget {
  const _EggMiniTile({required this.egg});
  final Egg egg;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final (bg, fg, icon, label) = egg.effectiveStatus.getDisplayData(context);
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: bg.withValues(alpha: 0.4),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: bg, width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '#${egg.number}',
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  color: cs.onSurfaceVariant,
                ),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
                  decoration: BoxDecoration(
                    color: bg,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(icon, size: 9, color: fg),
                      const SizedBox(width: 3),
                      Flexible(
                        child: Text(
                          label.toUpperCase(),
                          style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5,
                            color: fg,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (egg.birdResolved != null) ...[
                const SizedBox(width: 4),
                InkWell(
                  onTap: () => context.router.push(
                    BirdRoute(bird: egg.birdResolved),
                  ),
                  borderRadius: BorderRadius.circular(100),
                  child: Tooltip(
                    message: context.tr.egg.in_stock,
                    child: Icon(
                      AppIcons.birdAvatar,
                      size: 16,
                      color: cs.primary,
                    ),
                  ),
                ),
              ],
            ],
          ),
          const SizedBox(height: 4),
          if (egg.ringnumber != null)
            Text(
              egg.ringnumber!,
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 11,
                fontWeight: FontWeight.w700,
                color: cs.onSurface,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          if (egg.colorResolved != null) ...[
            const SizedBox(height: 2),
            Row(
              children: [
                if (egg.colorResolved?.hex?.isNotEmpty ?? false) ...[
                  _ColorDot(hex: egg.colorResolved!.hex!),
                  const SizedBox(width: 3),
                ],
                Flexible(
                  child: Text(
                    egg.colorResolved?.name ?? '',
                    style: TextStyle(
                      fontSize: 9,
                      color: cs.onSurfaceVariant,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ],
          const Spacer(),
          Row(
            children: [
              _MiniDate(date: egg.laidAt, icon: AppIcons.egg),
              if (egg.hatchedAt != null) ...[
                const SizedBox(width: 4),
                _MiniDate(
                  date: egg.hatchedAt!,
                  icon: AppIcons.hatched,
                  color: cs.tertiary,
                ),
              ],
              if (egg.fledgedAt != null) ...[
                const SizedBox(width: 4),
                _MiniDate(
                  date: egg.fledgedAt!,
                  icon: AppIcons.fledged,
                  color: cs.primary,
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}

class _MiniDate extends StatelessWidget {
  const _MiniDate({required this.date, required this.icon, this.color});
  final DateTime date;
  final IconData icon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 9, color: color ?? cs.onSurfaceVariant),
        const SizedBox(width: 2),
        Text(
          '${date.day.toString().padLeft(2, '0')}.${date.month.toString().padLeft(2, '0')}',
          style: TextStyle(
            fontFamily: 'monospace',
            fontSize: 9,
            color: cs.onSurfaceVariant,
            letterSpacing: 0.2,
          ),
        ),
      ],
    );
  }
}

class _HistoryBroodCard extends StatelessWidget {
  const _HistoryBroodCard({
    required this.brood,
    required this.pair,
    required this.eggs,
    required this.onTap,
  });
  final Brood brood;
  final BreedingPair pair;
  final List<Egg> eggs;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final fertilized = eggs.where((e) => e.fertilizedAt != null).length;
    final hatched = eggs.where((e) => e.hatchedAt != null).length;
    final fledged = eggs.where((e) => e.fledgedAt != null).length;
    final start = brood.start;
    final end = brood.end;
    final dates = (start != null)
        ? '${MaterialLocalizations.of(context).formatShortDate(start)} – ${end != null ? MaterialLocalizations.of(context).formatShortDate(end) : '—'}'
        : '—';
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Container(
        decoration: BoxDecoration(
          color: cs.surface,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: cs.outlineVariant),
        ),
        padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(AppIcons.egg, size: 14, color: cs.onSurfaceVariant),
                const SizedBox(width: 6),
                Text(
                  '${context.tr.pair_detail.brood_short} #${_index(brood) ?? '?'}',
                  style: TextStyle(
                    fontFamily: 'monospace',
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: cs.onSurface,
                  ),
                ),
                const Spacer(),
                _StatusBadge(status: brood.status),
                BroodActions.buildMenu(context, brood, pair),
              ],
            ),
            MiniStats(
              laid: eggs.length,
              fertilized: fertilized,
              hatched: hatched,
              fledged: fledged,
              expanded: true,
            ),
            const SizedBox(height: 8),
            Text(
              dates,
              style: TextStyle(
                fontFamily: 'monospace',
                fontSize: 11,
                color: cs.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }

  int? _index(Brood b) {
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

class _StatusBadge extends StatelessWidget {
  const _StatusBadge({required this.status});
  final BroodStatus status;
  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tr = context.tr;
    final label = switch (status) {
      BroodStatus.active => tr.breeding_pairs.brood_status.active,
      BroodStatus.inactive => tr.breeding_pairs.brood_status.inactive,
      BroodStatus.completed => tr.breeding_pairs.brood_status.completed,
    };
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: cs.surfaceContainer,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        label.toUpperCase(),
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
          color: cs.onSurfaceVariant,
        ),
      ),
    );
  }
}
