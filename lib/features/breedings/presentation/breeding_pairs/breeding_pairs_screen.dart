import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/core/extensions/mapper_extensions.dart';
import 'package:birdbreeder/core/extensions/screen_size_extensions.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/birds/data/dtos/bird_dto.dart';
import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/birds/domain/models/sex_enum.dart';
import 'package:birdbreeder/features/breedings/data/dtos/breeding_pair_dto.dart';
import 'package:birdbreeder/features/breedings/data/dtos/brood_dto.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/features/breedings/domain/models/brood.dart';
import 'package:birdbreeder/features/breedings/presentation/breeding_pair/breeding_pair_page.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/repositories/ressource_repository.dart';
import 'package:birdbreeder/shared/widgets/search_bar_widget.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

class BreedingPairsScreen extends StatefulWidget {
  const BreedingPairsScreen({super.key});

  @override
  State<BreedingPairsScreen> createState() => _BreedingPairsScreenState();
}

class _BreedingPairsScreenState extends State<BreedingPairsScreen> {
  String searchQuery = '';

  List<BreedingPair> filteredBreedingPairs(List<BreedingPair> breedingPairs) {
    return List<BreedingPair>.from(
      breedingPairs.where((breedingPair) {
        if (searchQuery.isEmpty) return true;
        return breedingPair.filter(searchQuery);
      }),
    );
  }

  Future<void> _onAddOrEditBreedingPair(
    BuildContext context,
    BreedingPair? initialBreedingPair,
  ) async {
    if (context.isMobile) {
      await context.router.push(
        BreedingPairRoute(initialBreedingPair: initialBreedingPair),
      );
    } else {
      await showChildAsDrawerDialog(
        context,
        BreedingPairPage(
          initialBreedingPair: initialBreedingPair,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBarWithDrawer(
        title: context.l10n.breedings__title,
        actions: [
          SearchBarWidget(
            onChanged: (value) {
              setState(() {
                searchQuery = value;
              });
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _onAddOrEditBreedingPair(context, null),
        child: const Icon(Icons.add),
      ),
      body: BlocBuilder<BirdBreederCubit, BirdBreederState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const SharedLoadingWidget(),
            loading: (_) => const SharedLoadingWidget(),
            loaded: (loadedState) {
              final breedingPairs = filteredBreedingPairs(
                loadedState.birdBreederResources.breedingPairs,
              );

              return ListView.separated(
                itemCount: breedingPairs.length,
                separatorBuilder: (_, __) => const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  final breedingPair =
                      loadedState.birdBreederResources.breedingPairs[index];

                  final father = breedingPair.fatherResolved;
                  final mother = breedingPair.motherResolved;

                  final species =
                      mother?.speciesResolved ?? father?.speciesResolved;
                  var differentSpecies = false;

                  if (mother?.species != null && father?.species != null) {
                    if (mother?.species != father?.species) {
                      differentSpecies = true;
                    }
                  }

                  // final columns = [
                  //   TrinaColumn(
                  //     title: 'Gelegt',
                  //     field: 'laid',
                  //     type: TrinaColumnType.date(),
                  //   ),
                  //   TrinaColumn(
                  //     title: 'Geschlüpft',
                  //     field: 'hatched',
                  //     type: TrinaColumnType.text(),
                  //   ),
                  // ];

                  // final rows = (breedingPair.children ?? []).map(
                  //   (birdId) {
                  //     final bird = loadedState.birdBreederResources.birds
                  //         .findById(birdId);
                  //     return TrinaRow(
                  //       cells: {
                  //         'laid': TrinaCell(
                  //           value: bird?.laid?.toDateFormat(context) ?? '-',
                  //         ),
                  //         'hatched': TrinaCell(
                  //           value: bird?.hatched?.toDateFormat(context) ?? '-',
                  //         ),
                  //       },
                  //     );
                  //   },
                  // ).toList();

                  // final grid = TrinaGrid(

                  //   columns: columns,
                  //   rows: rows,
                  //   onLoaded: (TrinaGridOnLoadedEvent event) {
                  //     stateManager = event.stateManager;
                  //   },
                  // );

                  return Card(
                    child: ExpansionTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            spacing: 8,
                            children: [
                              Sex.male.getIcon(context),
                              Text(
                                father?.ringnumber ?? '-',
                                style: context.titleLarge,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              if (differentSpecies)
                                Text(
                                  '${father?.speciesResolved?.name ?? '-'}/${mother?.speciesResolved?.name ?? '-'}',
                                )
                              else ...[
                                Text(species?.name ?? 'Keine Art angegeben'),
                                if (species?.latName != null)
                                  Text(
                                    species!.latName!,
                                    style: context.bodyMedium,
                                  ),
                              ],
                              Text(
                                breedingPair.end.toDateFormat(context),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            spacing: 8,
                            children: [
                              Text(
                                mother?.ringnumber ?? '-',
                                style: context.titleLarge,
                              ),
                              Sex.female.getIcon(context),
                            ],
                          ),
                        ].map((e) => Expanded(child: e)).toList(),
                      ),
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () async {
                                final brood = Brood.create().copyWith(
                                  start: DateTime.now(),
                                  notes: 'Brood 3',
                                );

                                final broodResult = await s1
                                    .get<RessourceRepository<BroodDto>>()
                                    .create(brood.toDto());

                                if (broodResult.isError) {
                                  return;
                                }

                                final bird = Bird.create().copyWith(
                                  father: father?.id,
                                  mother: mother?.id,
                                  isEgg: true,
                                  brood: broodResult.asValue?.value.id,
                                );

                                final birdResult = await s1
                                    .get<RessourceRepository<BirdDto>>()
                                    .create(bird.toDto());

                                if (birdResult.isError) {
                                  return;
                                }

                                final updatedPair = breedingPair.copyWith(
                                  broods: [
                                    ...breedingPair.broods ?? [],
                                    birdResult.asValue!.value.id,
                                  ],
                                );

                                await s1
                                    .get<RessourceRepository<BreedingPairDto>>()
                                    .update(
                                      breedingPair.id,
                                      updatedPair.toDto(),
                                    );
                              },
                              label: const Text('Brut hinzufügen'),
                              icon: const Icon(Icons.add),
                            ),
                            ElevatedButton.icon(
                              onPressed: () => _onAddOrEditBreedingPair(
                                context,
                                loadedState
                                    .birdBreederResources.breedingPairs[index],
                              ),
                              label: const Text('Ändern'),
                              icon: const Icon(Icons.edit),
                            ),
                          ],
                        ),

                        /// get all broods of children distinceted

                        ExpansionPanelList.radio(
                          children: [
                            // ...breedingPair.childrenResolved
                            //     .map((e) => e.broodResolved)
                            //     .distinct()
                            //     .whereType<Brood>()
                            //     .map((e) {
                            //   return ExpansionPanelRadio(
                            //     headerBuilder: (context, bool) =>
                            //         Text(e.notes ?? '-'),
                            //     body: Column(
                            //       children: breedingPair.childrenResolved
                            //           .where((b) => b.brood == e.id)
                            //           .map(
                            //             (b2) => Row(
                            //               mainAxisAlignment:
                            //                   MainAxisAlignment.spaceBetween,
                            //               children: [
                            //                 Text(b2.laid.toDateFormat(context)),
                            //                 Text(
                            //                   b2.hatched.toDateFormat(context),
                            //                 ),
                            //                 Checkbox(
                            //                   value: b2.isEgg,
                            //                   onChanged: null,
                            //                 ),
                            //               ],
                            //             ),
                            //           )
                            //           .toList(),
                            //     ),
                            //     value: e.id,
                            //   );
                            // }),
                            ExpansionPanelRadio(
                              headerBuilder: (context, bool) =>
                                  const Text('test'),
                              body: const Text('test1'),
                              value: 1,
                            ),
                            ExpansionPanelRadio(
                              headerBuilder: (context, bool) =>
                                  const Text('test'),
                              body: const Text('test1'),
                              value: 2,
                            ),
                          ],
                        ),

                        /// split children by brood
                        // ...breedingPair.childrenResolved
                        //     .groupBy((element) => element.brood)
                        //     .entries
                        //     .map((e) {
                        //   final brood = e.value.first.broodResolved;
                        //   return Column(
                        //     children: [
                        //       if (brood != null)
                        //         EggRowHeader(
                        //           brood: brood,
                        //         ),
                        //       //...e.value.map((bird) => EggRow(egg: bird)),
                        //     ],
                        //   );
                        // }),

                        // ...(breedingPair.children ?? []).map(
                        //   (birdId) {
                        //     final birds = breedingPair.childrenResolved;
                        //     final bird = birds.firstWhereOrNull(
                        //       (element) => element.id == birdId,
                        //     );

                        //     if (bird == null || bird.isEgg == false)
                        //       return const SizedBox();

                        //     return EggRow(egg: bird);

                        //     final brood = bird.broodResolved;
                        //     return ListTile(
                        //       title: Row(
                        //         mainAxisAlignment:
                        //             MainAxisAlignment.spaceBetween,
                        //         spacing: 8,
                        //         children: [
                        //           DecoratedBox(
                        //             decoration: BoxDecoration(
                        //               border: Border.all(
                        //                 color: Theme.of(context).primaryColor,
                        //               ),
                        //               borderRadius: BorderRadius.circular(25),
                        //             ),
                        //             child: Padding(
                        //               padding: const EdgeInsets.all(8),
                        //               child: Text(
                        //                 brood?.start.toDateFormat(context) ??
                        //                     '-',
                        //               ),
                        //             ),
                        //           ),
                        //           Text(
                        //             bird.ringnumber ?? '-',
                        //           ),
                        //           Text(
                        //             bird.laid.toDateFormat(context) ?? '-',
                        //           ),
                        //           Text(
                        //             brood?.start.toDateFormat(context) ?? '--',
                        //           ),
                        //           Text(
                        //             brood?.notes ?? '-',
                        //           ),
                        //         ],
                        //       ),
                        //     );
                        //   },
                        // ),
                      ],
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

class EggRowHeader extends StatelessWidget {
  const EggRowHeader({super.key, required this.brood});

  final Brood brood;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(brood.notes ?? '-'),
        const Row(
          children: [
            Expanded(child: Text('Gelegt')),
            Expanded(
              child: Text('Geschlüpft'),
            ),
            Expanded(
              child: Text('Ausgeflossen'),
            ),
            Expanded(
              child: Text('Brut'),
            ),
          ],
        ),
      ],
    );
  }
}

class EggRow extends StatelessWidget {
  const EggRow({super.key, required this.egg});

  final Bird egg;

  @override
  Widget build(BuildContext context) {
    Widget widget = const SizedBox();

    widget = Row(
      children: [
        Expanded(
          child: Text(egg.laid.toDateFormat(context)),
        ),
        Expanded(
          child: Text(egg.hatched.toDateFormat(context)),
        ),
        Expanded(
          child: Text(egg.flowOut.toDateFormat(context)),
        ),
        Expanded(
          child: Text(egg.broodResolved?.notes ?? '-'),
        ),
      ],
    );

    return Padding(
      padding: const EdgeInsets.all(8),
      child: widget,
    );
  }
}
