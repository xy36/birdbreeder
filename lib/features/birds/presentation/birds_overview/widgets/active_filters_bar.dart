import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/contact_extension.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/cubit/birds_filter_cubit.dart';
import 'package:birdbreeder/models/bird/bird_filter.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';

/// A single removable active-filter entry.
class _Token {
  const _Token({required this.label, required this.next});

  /// Localised chip text.
  final String label;

  /// The filter that results from removing this token.
  final BirdFilter next;
}

/// Horizontal bar of removable chips showing the currently applied filters.
///
/// Only filters that differ from [BirdsFilterCubit.defaultFilter] are shown,
/// so the implicit owner/sale/life-stage defaults stay hidden. Tapping a
/// chip's delete icon removes that single value; a trailing reset chip
/// restores the default filter.
class ActiveFiltersBar extends StatelessWidget {
  const ActiveFiltersBar({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<BirdsFilterCubit>();
    final f = cubit.state;
    final def = cubit.defaultFilter;
    final r = context.watch<BirdBreederCubit>().state.birdBreederResources;

    String nameOf<T>(
      List<T> source,
      String id,
      String Function(T) idOf,
      String? Function(T) labelOf,
    ) {
      for (final e in source) {
        if (idOf(e) == id) return labelOf(e) ?? '-';
      }
      return '-';
    }

    String ownerName(String id) {
      for (final c in r.contacts) {
        if (c.id == id) {
          return c.fullName.isNotEmpty ? c.fullName : c.number ?? '-';
        }
      }
      return '-';
    }

    final tokens = <_Token>[];

    for (final id in f.speciesIds) {
      tokens.add(
        _Token(
          label: nameOf(r.species, id, (e) => e.id, (e) => e.name),
          next: f.copyWith(
            speciesIds: f.speciesIds.where((e) => e != id).toList(),
          ),
        ),
      );
    }

    for (final id in f.cageIds) {
      tokens.add(
        _Token(
          label: nameOf(r.cages, id, (e) => e.id, (e) => e.name),
          next: f.copyWith(
            cageIds: f.cageIds.where((e) => e != id).toList(),
          ),
        ),
      );
    }

    for (final id in f.colorIds) {
      tokens.add(
        _Token(
          label: nameOf(r.colors, id, (e) => e.id, (e) => e.name),
          next: f.copyWith(
            colorIds: f.colorIds.where((e) => e != id).toList(),
          ),
        ),
      );
    }

    // Owners: hide the implicit default owner(s).
    for (final id in f.ownerIds.where((e) => !def.ownerIds.contains(e))) {
      tokens.add(
        _Token(
          label: ownerName(id),
          next: f.copyWith(
            ownerIds: f.ownerIds.where((e) => e != id).toList(),
          ),
        ),
      );
    }

    for (final s in f.sexes) {
      tokens.add(
        _Token(
          label: s.getDisplayName(context),
          next: f.copyWith(
            sexes: f.sexes.where((e) => e != s).toList(),
          ),
        ),
      );
    }

    // Sale status only when it diverges from the default selection.
    if (!_sameSet(f.saleStatus, def.saleStatus)) {
      for (final s in f.saleStatus) {
        tokens.add(
          _Token(
            label: s.getDisplayName(context),
            next: f.copyWith(
              saleStatus: f.saleStatus.where((e) => e != s).toList(),
            ),
          ),
        );
      }
    }

    // Life stage only when it diverges from the default selection.
    if (!_sameSet(f.lifeStages, def.lifeStages)) {
      for (final s in f.lifeStages) {
        tokens.add(
          _Token(
            label: s.getDisplayName(context),
            next: f.copyWith(
              lifeStages: f.lifeStages.where((e) => e != s).toList(),
            ),
          ),
        );
      }
    }

    if ((f.sort ?? BirdSort.updatedDesc) !=
        (def.sort ?? BirdSort.updatedDesc)) {
      tokens.add(
        _Token(
          label: (f.sort ?? BirdSort.updatedDesc).getDisplayName(context),
          next: f.copyWith(sort: def.sort),
        ),
      );
    }

    if (tokens.isEmpty) return const SizedBox.shrink();

    final cs = Theme.of(context).colorScheme;

    return SizedBox(
      height: 48,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        children: [
          for (final t in tokens)
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Center(
                child: InputChip(
                  label: Text(t.label),
                  backgroundColor: cs.secondaryContainer,
                  labelStyle: TextStyle(color: cs.onSecondaryContainer),
                  side: BorderSide(color: cs.outlineVariant),
                  onDeleted: () =>
                      context.read<BirdsFilterCubit>().applyFilter(t.next),
                  deleteIcon: const Icon(AppIcons.close, size: 18),
                  deleteIconColor: cs.onSecondaryContainer,
                ),
              ),
            ),
          Center(
            child: ActionChip(
              avatar: Icon(
                AppIcons.filterAltOff,
                size: 18,
                color: cs.onErrorContainer,
              ),
              label: Text(context.tr.common.reset),
              backgroundColor: cs.errorContainer,
              labelStyle: TextStyle(color: cs.onErrorContainer),
              side: BorderSide(color: cs.outlineVariant),
              onPressed: () => context.read<BirdsFilterCubit>().resetFilter(),
            ),
          ),
        ],
      ),
    );
  }

  static bool _sameSet<T>(List<T> a, List<T> b) =>
      a.length == b.length && a.toSet().containsAll(b);
}
