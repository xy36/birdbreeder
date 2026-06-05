import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/bird_filter_sheet/birds_overview_page.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/bird_filter_sheet/option.dart';
import 'package:birdbreeder/models/finance/finance_category_kind.dart';
import 'package:birdbreeder/models/finance/finance_filter.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/all_or_some_chips.dart';
import 'package:birdbreeder/shared/widgets/bottom_sheet/bottom_sheet_footer.dart';
import 'package:birdbreeder/shared/widgets/inline_two_row_multi_chips.dart';
import 'package:intl/intl.dart';

class FinanceFilterSheet extends StatefulWidget {
  const FinanceFilterSheet({required this.initial, super.key});
  final FinanceFilter initial;

  @override
  State<FinanceFilterSheet> createState() => _FinanceFilterSheetState();
}

class _FinanceFilterSheetState extends State<FinanceFilterSheet> {
  late FinanceFilter f;

  @override
  void initState() {
    super.initState();
    f = widget.initial;
  }

  Future<void> _pickFromDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: f.fromDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) setState(() => f = f.copyWith(fromDate: picked));
  }

  Future<void> _pickToDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: f.toDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) setState(() => f = f.copyWith(toDate: picked));
  }

  String _fmtDate(DateTime? d) =>
      d == null ? '—' : DateFormat('dd.MM.yyyy').format(d);

  @override
  Widget build(BuildContext context) {
    final r = context.read<BirdBreederCubit>().state.birdBreederResources;
    final tr = context.tr;

    final sections = [
      // Kind
      Section(
        title: tr.finances.kind.name,
        child: AllOrSomeChips<FinanceCategoryKind>(
          values: FinanceCategoryKind.values,
          isSelected: (k) => f.kinds.contains(k),
          getLabel: (k) => Text(k.getDisplayData(context).label),
          onChanged: (newSelected) {
            setState(() => f = f.copyWith(kinds: newSelected));
          },
        ),
      ),

      // Categories
      InlineTwoRowMultiChips(
        title: tr.finances.categories.title,
        items: r.financesCategories
            .map((c) => Option(id: c.id, label: c.name))
            .toList(),
        selectedIds: f.categoryIds.toSet(),
        onChanged: (ids) => setState(() {
          f = f.copyWith(categoryIds: ids.toList());
        }),
      ),

      // Bird
      InlineTwoRowMultiChips(
        title: tr.finances.filter.bird,
        items: r.birds
            .map(
              (b) => Option(
                id: b.id,
                label: b.ringNumber ?? b.id,
              ),
            )
            .toList(),
        selectedIds: f.birdIds.toSet(),
        onChanged: (ids) => setState(() {
          f = f.copyWith(birdIds: ids.toList());
        }),
      ),

      // Date range
      Section(
        title: tr.finances.filter.date_range,
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: _pickFromDate,
                child: Text('${tr.finances.filter.from}: ${_fmtDate(f.fromDate)}'),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: OutlinedButton(
                onPressed: _pickToDate,
                child: Text('${tr.finances.filter.to}: ${_fmtDate(f.toDate)}'),
              ),
            ),
            if (f.fromDate != null || f.toDate != null)
              IconButton(
                icon: const Icon(AppIcons.clear),
                onPressed: () => setState(
                  () => f = f.copyWith(fromDate: null, toDate: null),
                ),
              ),
          ],
        ),
      ),

      // Sort
      Section(
        title: tr.common.sorting.name,
        child: DropdownButtonFormField<FinanceSort>(
          initialValue: f.sort,
          isExpanded: true,
          items: FinanceSort.values
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text(e.getDisplayName(context)),
                ),
              )
              .toList(),
          onChanged: (v) {
            if (v != null) setState(() => f = f.copyWith(sort: v));
          },
        ),
      ),
    ];

    return DraggableScrollableSheet(
      expand: false,
      builder: (context, scrollController) => Column(
        children: [
          Expanded(
            child: ListView.separated(
              controller: scrollController,
              padding: const EdgeInsets.all(16),
              itemCount: sections.length,
              separatorBuilder: (_, __) => const Divider(height: 24),
              itemBuilder: (context, i) => sections[i],
            ),
          ),
          BottomSheetFooter(
            secondaryButtonLabel: tr.common.reset,
            onSecondaryButton: () =>
                Navigator.pop(context, const FinanceFilter()),
            primaryButtonLabel: tr.common.apply,
            onPrimaryButton: () => Navigator.pop(context, f),
          ),
        ],
      ),
    );
  }
}
