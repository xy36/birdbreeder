import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/generic_join.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/models/bird_filter.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/bird_filter_sheet/birds_overview_page.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/bird_filter_sheet/option.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/all_or_some_chips.dart';
import 'package:birdbreeder/shared/widgets/inline_two_row_multi_chips.dart';

class BirdFilterSheet extends StatefulWidget {
  const BirdFilterSheet({super.key, required this.initial});
  final BirdFilter initial;

  @override
  State<BirdFilterSheet> createState() => _BirdFilterSheetState();
}

class _BirdFilterSheetState extends State<BirdFilterSheet> {
  late BirdFilter f;

  @override
  void initState() {
    super.initState();
    f = widget.initial;
  }

  @override
  Widget build(BuildContext context) {
    final r = context.read<BirdBreederCubit>().state.birdBreederResources;

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 12,
          bottom: 12 + MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Handle
            Align(
              child: Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(
                  color: Colors.grey.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InlineTwoRowMultiChips(
                      title: context.tr.common.species,
                      items: r.species
                          .map((s) => Option(id: s.id, label: s.name ?? '-'))
                          .toList(),
                      selectedIds: f.speciesIds.toSet(),
                      onChanged: (ids) => setState(() {
                        f = f.copyWith(
                          speciesIds: ids.toList(),
                          speciesName: null,
                        );
                      }),
                    ),

                    // Sex
                    Section(
                      title: context.tr.common.sex.name,
                      child: AllOrSomeChips<Sex>(
                        values: Sex.values,
                        isSelected: (s) => f.sexes.contains(s),
                        getLabel: (s) => s.getIcon(context),
                        onChanged: (newSelected) {
                          setState(() => f = f.copyWith(sexes: newSelected));
                        },
                      ),
                    ),

                    InlineTwoRowMultiChips(
                      title: context.tr.common.cage,
                      items: r.cages
                          .map((c) => Option(id: c.id, label: c.name ?? '-'))
                          .toList(),
                      selectedIds: f.cageIds.toSet(),
                      onChanged: (ids) => setState(() {
                        f = f.copyWith(
                          cageIds: ids.toList(),
                          speciesName: null,
                        );
                      }),
                    ),

                    // Color
                    InlineTwoRowMultiChips(
                      title: context.tr.common.color,
                      items: r.colors
                          .map((c) => Option(id: c.id, label: c.name ?? '-'))
                          .toList(),
                      selectedIds: f.colorIds.toSet(),
                      onChanged: (ids) => setState(() {
                        f = f.copyWith(
                          colorIds: ids.toList(),
                          speciesName: null,
                        );
                      }),
                    ),

                    // LifeStage + Status
                    Section(
                      title: context.tr.bird.sections.life.title,
                      child: AllOrSomeChips<LifeStage>(
                        values: LifeStage.values,
                        isSelected: (ls) => f.lifeStages.contains(ls),
                        getLabel: (ls) => Text(ls.getDisplayName(context)),
                        onChanged: (newSelected) {
                          setState(
                            () => f = f.copyWith(lifeStages: newSelected),
                          );
                        },
                      ),
                    ),

                    Section(
                      title: context.tr.bird.sections.sale.title,
                      child: AllOrSomeChips<SaleStatus>(
                        values: SaleStatus.values,
                        isSelected: (s) => f.saleStatus.contains(s),
                        getLabel: (s) => Text(s.getDisplayName(context)),
                        onChanged: (newSelected) {
                          setState(
                            () => f = f.copyWith(saleStatus: newSelected),
                          );
                        },
                      ),
                    ),

                    // Sort
                    Section(
                      title: context.tr.common.sorting.name,
                      child: DropdownButtonFormField<BirdSort>(
                        value: f.sort ?? BirdSort.updatedDesc,
                        isExpanded: true,
                        items: BirdSort.values
                            .map(
                              (e) => DropdownMenuItem(
                                value: e,
                                child: Text(
                                  e.getDisplayName(context),
                                ),
                              ),
                            )
                            .toList(),
                        onChanged: (v) =>
                            setState(() => f = f.copyWith(sort: v)),
                      ),
                    ),
                  ].genericJoin(
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: Divider(),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      const BirdFilter(),
                    ); // reset to defaults
                  },
                  child: Text(context.tr.common.reset),
                ),
                const Spacer(),
                FilledButton(
                  onPressed: () {
                    Navigator.pop(context, f);
                  },
                  child: Text(context.tr.common.apply),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
