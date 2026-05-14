import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/finances/cubit/finances_filter_cubit.dart';
import 'package:birdbreeder/models/finance/entity/finance.dart';
import 'package:birdbreeder/models/finance/finance_filter.dart';

class YearChips extends StatelessWidget {
  const YearChips({required this.finances, super.key});
  final List<Finance> finances;

  List<int> _yearsFrom(List<Finance> list) {
    final set = <int>{};
    for (final f in list) {
      final d = f.date ?? f.created;
      if (d != null) set.add(d.year);
    }
    final years = set.toList()..sort((a, b) => b.compareTo(a));
    return years;
  }

  @override
  Widget build(BuildContext context) {
    final years = _yearsFrom(finances);
    if (years.isEmpty) return const SizedBox.shrink();

    return BlocBuilder<FinancesFilterCubit, FinanceFilter>(
      builder: (context, _) {
        final cubit = context.read<FinancesFilterCubit>();
        final allSelected = !cubit.hasAnyYearSelected;

        return SizedBox(
          height: 48,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: ChoiceChip(
                  label: Text(context.tr.finances.filter.all_years),
                  selected: allSelected,
                  onSelected: (_) => cubit.selectYear(null),
                ),
              ),
              ...years.map(
                (y) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: ChoiceChip(
                    label: Text('$y'),
                    selected: cubit.isYearSelected(y),
                    onSelected: (_) => cubit.selectYear(y),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
