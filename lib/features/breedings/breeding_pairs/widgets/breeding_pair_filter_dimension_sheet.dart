import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/breeding/breeding_pair_filter.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/bottom_sheet/bottom_sheet_footer.dart';
import 'package:birdbreeder/shared/widgets/bottom_sheet/bottom_sheet_header.dart';

/// A single filter dimension surfaced from the breeding pairs filter bar.
enum BreedingPairFilterDimension { species, color }

/// A focused, single-dimension filter selector shown as a checkbox list.
///
/// Mirrors `BirdFilterDimensionSheet`; returns the edited [BreedingPairFilter]
/// on apply. The apply button shows a live count of matching pairs.
class BreedingPairFilterDimensionSheet extends StatefulWidget {
  const BreedingPairFilterDimensionSheet({
    required this.dimension,
    required this.initial,
    required this.countFor,
    super.key,
  });

  final BreedingPairFilterDimension dimension;
  final BreedingPairFilter initial;

  /// Returns the number of pairs matching a given filter.
  final int Function(BreedingPairFilter filter) countFor;

  @override
  State<BreedingPairFilterDimensionSheet> createState() =>
      _BreedingPairFilterDimensionSheetState();
}

class _BreedingPairFilterDimensionSheetState
    extends State<BreedingPairFilterDimensionSheet> {
  late BreedingPairFilter f;
  String _query = '';

  @override
  void initState() {
    super.initState();
    f = widget.initial;
  }

  String get _title => switch (widget.dimension) {
        BreedingPairFilterDimension.species => context.tr.common.species,
        BreedingPairFilterDimension.color => context.tr.common.color,
      };

  void _clearDimension() {
    setState(() {
      f = switch (widget.dimension) {
        BreedingPairFilterDimension.species => f.copyWith(speciesIds: const []),
        BreedingPairFilterDimension.color => f.copyWith(colorIds: const []),
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final rows = _rows(context);
    final showSearch = rows.length > 10;
    final query = _query.trim().toLowerCase();
    final filtered = query.isEmpty
        ? rows
        : rows.where((r) => r.label.toLowerCase().contains(query)).toList();

    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.6,
      minChildSize: 0.3,
      builder: (context, scrollController) => Column(
        children: [
          BottomSheetHeader(title: _title),
          if (showSearch)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
              child: TextField(
                decoration: InputDecoration(
                  isDense: true,
                  hintText: context.tr.common.search,
                  prefixIcon: const Icon(AppIcons.search, size: 18),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (v) => setState(() => _query = v),
              ),
            ),
          Expanded(
            child: filtered.isEmpty
                ? Center(
                    child: Text(
                      context.tr.birds.overview.empty,
                      style: TextStyle(color: cs.onSurfaceVariant),
                    ),
                  )
                : ListView.builder(
                    controller: scrollController,
                    itemCount: filtered.length,
                    itemBuilder: (_, i) {
                      final row = filtered[i];
                      return CheckboxListTile(
                        value: row.selected,
                        onChanged: (v) =>
                            setState(() => row.onChanged(v ?? false)),
                        title: Text(row.label),
                        secondary: row.secondary,
                        controlAffinity: ListTileControlAffinity.trailing,
                        dense: true,
                      );
                    },
                  ),
          ),
          BottomSheetFooter(
            secondaryButtonLabel: context.tr.common.reset,
            onSecondaryButton: _clearDimension,
            primaryButtonLabel: context.tr.breeding_pairs.filter
                .show_results(Count: widget.countFor(f)),
            onPrimaryButton: () => Navigator.pop(context, f),
          ),
        ],
      ),
    );
  }

  List<_FilterRow> _rows(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final r = context.read<BirdBreederCubit>().state.birdBreederResources;

    switch (widget.dimension) {
      case BreedingPairFilterDimension.species:
        return [
          for (final s in r.species)
            _FilterRow(
              label: s.name ?? '-',
              selected: f.speciesIds.contains(s.id),
              onChanged: (v) =>
                  f = f.copyWith(speciesIds: _toggle(f.speciesIds, s.id, v)),
            ),
        ];
      case BreedingPairFilterDimension.color:
        return [
          for (final c in r.colors)
            _FilterRow(
              label: c.name ?? '-',
              selected: f.colorIds.contains(c.id),
              secondary: _swatch(cs, c.hex),
              onChanged: (v) =>
                  f = f.copyWith(colorIds: _toggle(f.colorIds, c.id, v)),
            ),
        ];
    }
  }

  static List<T> _toggle<T>(List<T> source, T value, bool selected) {
    final set = {...source};
    if (selected) {
      set.add(value);
    } else {
      set.remove(value);
    }
    return set.toList();
  }

  Widget? _swatch(ColorScheme cs, String? hex) {
    if (hex == null || hex.isEmpty) return null;
    return Container(
      width: 14,
      height: 14,
      decoration: BoxDecoration(
        color: _parseHex(hex),
        shape: BoxShape.circle,
        border: Border.all(color: cs.outline, width: 0.5),
      ),
    );
  }
}

class _FilterRow {
  const _FilterRow({
    required this.label,
    required this.selected,
    required this.onChanged,
    this.secondary,
  });

  final String label;
  final bool selected;
  final void Function(bool selected) onChanged;
  final Widget? secondary;
}

Color _parseHex(String hex) {
  var value = hex.replaceAll('#', '').trim();
  if (value.length == 6) value = 'ff$value';
  final parsed = int.tryParse(value, radix: 16);
  return parsed == null ? Colors.transparent : Color(parsed);
}
