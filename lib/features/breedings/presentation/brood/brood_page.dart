import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/bird_color.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/buttons/app_action_button.dart';
import 'package:birdbreeder/shared/widgets/buttons/button_brood_delete.dart';
import 'package:birdbreeder/shared/widgets/buttons/generic_button.dart';
import 'package:data_table_2/data_table_2.dart';

@RoutePage()
class BroodPage extends StatelessWidget {
  const BroodPage({super.key, required this.broodId});

  final String broodId;

  @override
  Widget build(BuildContext context) {
    final broods =
        context.watch<BirdBreederCubit>().state.birdBreederResources.broods;
    final resolvedBrood = broods.where((b) => b.id == broodId).firstOrNull;

    return GestureDetector(
      onPanDown: (_) => FocusScope.of(context).unfocus(),
      behavior: HitTestBehavior.translucent,
      child: Scaffold(
        appBar: SharedAppBarWithDrawer(
          hideMenuButton: true,
          title: resolvedBrood?.start != null
              ? 'Brut vom ${resolvedBrood!.start!.toDateFormat(context)}'
              : 'Brut',
          actions: [
            if (resolvedBrood != null)
              ButtonBroodDelete.icon(
                brood: resolvedBrood,
              ),
          ],
        ),
        floatingActionButton: GenericButton.floating(
          actionButtonType: ActionButtonType.eggAdd,
          onTap: () {
            final pair = s1
                .get<BirdBreederCubit>()
                .state
                .birdBreederResources
                .breedingPairs
                .where((pair) => pair.id == resolvedBrood?.breedingPair)
                .firstOrNull;

            final newEgg = Bird.egg(
              broodId: broodId,
              laidAt: DateTime.now(),
              speciesId: pair?.fatherResolved?.speciesId,
              fatherId: pair?.fatherId,
              motherId: pair?.motherId,
            );

            context.read<BirdBreederCubit>().addBird(
                  newEgg,
                );
          },
        ),
        body: _buildDataGrid(context),
      ),
    );
  }

  Widget _buildDataGrid(BuildContext context) {
    final children = context
        .read<BirdBreederCubit>()
        .state
        .birdBreederResources
        .birds
        .where((bird) => bird.broodId == broodId)
        .toList();
    return DataTable2(
      columnSpacing: 12,
      horizontalMargin: 12,
      minWidth: 600,
      isHorizontalScrollBarVisible: true,
      columns: const [
        DataColumn2(
          label: Text('Legedatum'),
          size: ColumnSize.S,
        ),
        DataColumn2(
          label: Text('Ringnummer'),
          size: ColumnSize.L,
        ),
        DataColumn(
          label: Text('Farbe'),
        ),
        DataColumn(
          label: Text('Geschlüpft'),
        ),
        DataColumn(
          label: Text('Ausgeflogen'),
        ),
      ],
      rows: children
          .map(
            (child) => DataRow(
              onLongPress: () async {
                await s1.get<BirdBreederCubit>().deleteBird(child);
              },
              cells: [
                DataCell(
                  onTap: () async {
                    final pickedDate = await showDatePicker(
                      context: context,
                      initialDate: child.laidAt ?? DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    if (pickedDate != null) {
                      final updatedBird = child.copyWith(laidAt: pickedDate);
                      await s1.get<BirdBreederCubit>().updateBird(updatedBird);
                    }
                  },
                  Text(
                    child.laidAt != null
                        ? child.laidAt!.toDateFormat(context)
                        : '',
                  ),
                ),
                DataCell(
                  Focus(
                    child: Builder(
                      builder: (context) {
                        final isFocused = Focus.of(context).hasFocus;
                        return TextFormField(
                          initialValue: child.ringNumber ?? '',
                          decoration: InputDecoration(
                            isDense: true,
                            border: InputBorder.none,
                            fillColor: isFocused
                                ? Theme.of(context).colorScheme.primaryContainer
                                : Colors.transparent,
                            filled: true,
                            contentPadding: EdgeInsets.zero,
                          ),
                          onChanged: (value) {
                            final updatedBird =
                                child.copyWith(ringNumber: value);
                            s1.get<BirdBreederCubit>().updateBird(
                                  updatedBird,
                                );
                          },
                        );
                      },
                    ),
                  ),
                ),
                DataCell(
                  onTap: () async {
                    final colors = context
                        .read<BirdBreederCubit>()
                        .state
                        .birdBreederResources
                        .colors;
                    final selected = await showDialog<BirdColor>(
                      context: context,
                      builder: (context) => SimpleDialog(
                        title: const Text('Farbe auswählen'),
                        children: colors
                            .map(
                              (color) => SimpleDialogOption(
                                onPressed: () {
                                  Navigator.of(context).pop(color);
                                },
                                child: Text(color.name ?? 'Unbekannt'),
                              ),
                            )
                            .toList(),
                      ),
                    );
                    if (selected != null) {
                      final updatedBird = child.copyWith(colorId: selected.id);
                      s1.get<BirdBreederCubit>().updateBird(updatedBird);
                    }
                  },
                  Text(
                    child.colorResolved?.name ?? 'Unbekannt',
                  ),
                ),
                DataCell(
                  onTap: () async {
                    final pickedDate = await showDatePicker(
                      context: context,
                      initialDate: child.hatchedAt ?? DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    if (pickedDate != null) {
                      final updatedBird = child.copyWith(hatchedAt: pickedDate);
                      await s1.get<BirdBreederCubit>().updateBird(updatedBird);
                    }
                  },
                  Text(
                    child.hatchedAt != null
                        ? child.hatchedAt!.toDateFormat(context)
                        : '',
                  ),
                ),
                DataCell(
                  onTap: () async {
                    final pickedDate = await showDatePicker(
                      context: context,
                      initialDate: child.fledgedAt ?? DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    if (pickedDate != null) {
                      final updatedBird = child.copyWith(fledgedAt: pickedDate);
                      await s1.get<BirdBreederCubit>().updateBird(updatedBird);
                    }
                  },
                  Text(
                    child.fledgedAt != null
                        ? child.fledgedAt!.toDateFormat(context)
                        : '',
                  ),
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}
