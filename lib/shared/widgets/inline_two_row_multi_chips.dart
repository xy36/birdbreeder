import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/bird_filter_sheet/option.dart';

/// Two-row multi-select chips with an inline searchable list.
/// - Empty selection means "All".
/// - Always 2 chip rows; "More…" button at the end of row 2.
/// - "More…" opens a checkbox list with an Apply button.
class InlineTwoRowMultiChips extends StatefulWidget {
  const InlineTwoRowMultiChips({
    super.key,
    required this.title,
    required this.items,
    required this.selectedIds, // current selection (empty = All)
    required this.onChanged, // returns new selection (empty = All)
    this.searchHint,
    this.moreLabel,
    this.lessLabel,
    this.allLabel,
    this.chipSpacing = 8,
  });

  final String title;
  final List<Option> items;
  final Set<String> selectedIds;
  final void Function(Set<String> newSelected) onChanged;

  final String? searchHint;
  final String? moreLabel;
  final String? lessLabel;
  final String? allLabel;
  final double chipSpacing;

  @override
  State<InlineTwoRowMultiChips> createState() => _InlineTwoRowMultiChipsState();
}

class _InlineTwoRowMultiChipsState extends State<InlineTwoRowMultiChips> {
  bool _showList = false;
  String _q = '';
  late Set<String> _working; // local copy while list is open

  @override
  void initState() {
    super.initState();
    _working = {...widget.selectedIds};
  }

  @override
  void didUpdateWidget(covariant InlineTwoRowMultiChips oldWidget) {
    super.didUpdateWidget(oldWidget);
    // sync local working set if the external selection changed
    _working = {...widget.selectedIds};
  }

  String get _moreLabel => widget.moreLabel ?? context.l10n.common__more_label;
  String get _lessLabel => widget.lessLabel ?? context.l10n.common__less_label;
  String get _allLabel => widget.allLabel ?? context.l10n.common__all_label;
  String get _searchHint =>
      widget.searchHint ?? context.l10n.common__search_hint;

  @override
  Widget build(BuildContext context) {
    final isAll = widget.selectedIds.isEmpty;

    // Build two measured rows (auto layout) with an "All" chip first
    return LayoutBuilder(
      builder: (ctx, constraints) {
        final maxW = constraints.maxWidth;

        // Build candidate list: pseudo "All" chip + real item chips
        final allPseudo = Option(id: '__ALL__', label: _allLabel);
        final candidates = <Option>[allPseudo, ...widget.items];

        // Measure chips
        final chipW = <String, double>{};
        for (final o in candidates) {
          chipW[o.id] = _estimateChipWidth(context, o.label);
        }
        final moreW = _estimateActionButtonWidth(context, _moreLabel);

        // Distribute into 2 rows
        final row1 = <Option>[];
        final row2 = <Option>[];
        double row1W = 0;
        double row2W = 0;

        // Put "All" first in row1
        row1.add(allPseudo);
        row1W = chipW[allPseudo.id] ?? 0;

        double needW(List<Option> row, double current, double next) {
          return row.isEmpty ? next : current + widget.chipSpacing + next;
        }

        var splitIndex = -1;
        for (var i = 1; i < candidates.length; i++) {
          final o = candidates[i];
          final w = chipW[o.id] ?? 0;
          final need = needW(row1, row1W, w);
          if (need <= maxW) {
            row1.add(o);
            row1W = need;
          } else {
            splitIndex = i;
            break;
          }
        }

        if (splitIndex != -1) {
          for (var j = splitIndex; j < candidates.length; j++) {
            final o = candidates[j];
            final w = chipW[o.id] ?? 0;
            final add = row2.isEmpty ? w : widget.chipSpacing + w;
            final moreWithSpacing =
                row2.isEmpty ? moreW : widget.chipSpacing + moreW;
            if (row2W + add + moreWithSpacing <= maxW) {
              row2.add(o);
              row2W += add;
            } else {
              break;
            }
          }
        }

        // How many hidden items (for badge)?
        final visibleIds = {
          ...row1.where((o) => o.id != '__ALL__').map((o) => o.id),
          ...row2.map((o) => o.id),
        };
        final hiddenCount = widget.items.length - visibleIds.length;
        final showMoreChip =
            hiddenCount > 0 || widget.items.length > visibleIds.length;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                widget.title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),

            // Row 1
            Wrap(
              spacing: widget.chipSpacing,
              runSpacing: widget.chipSpacing,
              children: row1.map((o) => _buildChip(context, o, isAll)).toList(),
            ),
            const SizedBox(height: 8),

            // Row 2 + More button at the end
            Wrap(
              spacing: widget.chipSpacing,
              runSpacing: widget.chipSpacing,
              children: [
                ...row2.map((o) => _buildChip(context, o, isAll)),
                if (showMoreChip)
                  ActionChip(
                    label: Text(
                      _showList ? _lessLabel : _moreLabel,
                    ),
                    onPressed: () => setState(() => _showList = !_showList),
                  ),
              ],
            ),

            // Expandable checkbox list
            AnimatedCrossFade(
              crossFadeState: _showList
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 180),
              firstChild: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText: _searchHint,
                        isDense: true,
                        border: const OutlineInputBorder(),
                      ),
                      onChanged: (v) => setState(() => _q = v),
                    ),
                    const SizedBox(height: 8),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxHeight: 280),
                      child: _buildCheckboxList(context),
                    ),
                  ],
                ),
              ),
              secondChild: const SizedBox.shrink(),
            ),
          ],
        );
      },
    );
  }

  /// Builds a FilterChip that toggles membership in the multi-select set.
  Widget _buildChip(BuildContext context, Option o, bool isAll) {
    if (o.id == '__ALL__') {
      // "All" chip: selected if current selection is empty
      return FilterChip(
        showCheckmark: false,
        label: Text(_allLabel),
        selected: isAll,
        onSelected: (_) => widget.onChanged(<String>{}), // empty = All
      );
    }

    final selected = widget.selectedIds.contains(o.id);
    return FilterChip(
      showCheckmark: false,
      label: Text(o.label),
      selected: selected ||
          (isAll /* optional: show them as unselected when All */ && false),
      onSelected: (sel) {
        final next = <String>{...widget.selectedIds};
        if (sel) {
          next.add(o.id);
        } else {
          next.remove(o.id);
        }
        // If everything selected, collapse to All (empty set)
        if (next.length == widget.items.length) next.clear();
        widget.onChanged(next);
      },
    );
  }

  /// Searchable checkbox list used in the "Mehr…" section.
  Widget _buildCheckboxList(BuildContext context) {
    final q = _q.trim().toLowerCase();
    final filtered = widget.items.where((o) {
      if (q.isEmpty) return true;
      return o.label.toLowerCase().contains(q);
    }).toList();

    return ListView.builder(
      shrinkWrap: true,
      itemCount: filtered.length,
      itemBuilder: (_, i) {
        final o = filtered[i];
        final checked = _working.contains(o.id);
        return CheckboxListTile(
          dense: true,
          value: checked,
          onChanged: (v) => setState(() {
            if (v == true) {
              _working.add(o.id);
            } else {
              _working.remove(o.id);
            }
            if (_working.length == widget.items.length) {
              // Collapse full selection to "All" semantics
              _working.clear();
            }
            widget.onChanged(_working);
          }),
          title: Text(o.label),
          controlAffinity: ListTileControlAffinity.leading,
        );
      },
    );
  }

  // --- width estimates (pragmatic) ---
  double _estimateChipWidth(BuildContext context, String label) {
    final style = Theme.of(context).chipTheme.labelStyle ??
        Theme.of(context).textTheme.labelLarge;
    final tp = TextPainter(
      text: TextSpan(text: label, style: style),
      textDirection: TextDirection.ltr,
    )..layout();
    const pad = 24.0; // horizontal padding total
    const margin = 16.0;
    return tp.width + pad + margin;
  }

  double _estimateActionButtonWidth(BuildContext context, String label) {
    final style = Theme.of(context).textTheme.labelLarge;
    final tp = TextPainter(
      text: TextSpan(text: label, style: style),
      textDirection: TextDirection.ltr,
    )..layout();
    const pad = 20.0;
    const icon = 18.0 + 6.0;
    return tp.width + pad + icon;
  }
}
