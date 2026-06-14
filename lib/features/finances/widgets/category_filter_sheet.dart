import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/finance/entity/finance_category.dart';
import 'package:birdbreeder/models/finance/finance_category_kind.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/utils.dart';
import 'package:birdbreeder/theme/app_colors.dart';

class CategoryFilterSheet extends StatefulWidget {
  const CategoryFilterSheet({
    required this.initial,
    required this.categories,
    super.key,
  });

  final Set<String> initial;
  final List<FinanceCategory> categories;

  @override
  State<CategoryFilterSheet> createState() => _CategoryFilterSheetState();
}

class _CategoryFilterSheetState extends State<CategoryFilterSheet> {
  late Set<String> _selected;
  String _query = '';

  @override
  void initState() {
    super.initState();
    _selected = {...widget.initial};
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tr = context.tr;
    final sorted = [...widget.categories]
      ..sort((a, b) {
        final ki = a.kind.index.compareTo(b.kind.index);
        if (ki != 0) return ki;
        return a.name.toLowerCase().compareTo(b.name.toLowerCase());
      });
    final filtered = _query.isEmpty
        ? sorted
        : sorted
            .where((c) => c.name.toLowerCase().contains(_query.toLowerCase()))
            .toList();
    final showSearch = sorted.length > 10;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  tr.finances.view.filter_sheet_title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: cs.onSurface,
                  ),
                ),
              ),
              if (_selected.isNotEmpty)
                TextButton(
                  onPressed: () => setState(_selected.clear),
                  child: Text(tr.finances.view.filter_clear_all),
                ),
            ],
          ),
        ),
        if (showSearch)
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: TextField(
              decoration: InputDecoration(
                isDense: true,
                hintText: tr.finances.view.filter_search_hint,
                prefixIcon: const Icon(AppIcons.search, size: 18),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (v) => setState(() => _query = v),
            ),
          ),
        Flexible(
          child: filtered.isEmpty
              ? Padding(
                  padding: const EdgeInsets.all(32),
                  child: Text(
                    tr.finances.view.empty,
                    style: TextStyle(color: cs.onSurfaceVariant),
                  ),
                )
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: filtered.length,
                  itemBuilder: (_, i) {
                    final c = filtered[i];
                    final checked = _selected.contains(c.id);
                    final isIncome = c.kind == FinanceCategoryKind.income;
                    final accent = isIncome
                        ? context.appColors.income
                        : context.appColors.expense;
                    return CheckboxListTile(
                      value: checked,
                      onChanged: (v) {
                        setState(() {
                          if (v ?? false) {
                            _selected.add(c.id);
                          } else {
                            _selected.remove(c.id);
                          }
                        });
                      },
                      title: Text(c.name),
                      secondary: Container(
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                          color: accent,
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: cs.outline, width: 0.5),
                        ),
                      ),
                      controlAffinity: ListTileControlAffinity.trailing,
                      dense: true,
                    );
                  },
                ),
        ),
        SafeArea(
          top: false,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(tr.common.cancel),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: FilledButton.icon(
                    icon: const Icon(AppIcons.accept),
                    onPressed: () => Navigator.pop(context, _selected),
                    label: Text(tr.finances.view.filter_apply),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
