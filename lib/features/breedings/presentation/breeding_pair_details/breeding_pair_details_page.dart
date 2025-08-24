import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/birds_extension.dart';
import 'package:birdbreeder/core/extensions/breeding_pairs_extension.dart';
import 'package:birdbreeder/core/extensions/brood_extension.dart';
import 'package:birdbreeder/core/extensions/sex_extensions.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/features/breedings/domain/models/brood.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/search_bar_widget.dart';
import 'package:collection/collection.dart';

@RoutePage()
class BreedingPairDetailsPage extends StatefulWidget {
  const BreedingPairDetailsPage({super.key, required this.breedingPairId});

  final String breedingPairId;

  @override
  State<BreedingPairDetailsPage> createState() =>
      _BreedingPairDetailsPageState();
}

class _BreedingPairDetailsPageState extends State<BreedingPairDetailsPage> {
  String searchQuery = '';

  List<Brood> filteredBreedingPairs(List<Brood> broods) {
    return List<Brood>.from(
      broods.where((broods) {
        if (searchQuery.isEmpty) return true;
        return true;
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    // return const TableExample();
    return BlocBuilder<BirdBreederCubit, BirdBreederState>(
      builder: (context, state) {
        final breedingPair = state.birdBreederResources.breedingPairs
            .firstWhereOrNull((pair) => pair.id == widget.breedingPairId)!;

        final father = breedingPair.fatherResolved;
        final mother = breedingPair.motherResolved;
        final broods = breedingPair.broodsResolved;

        return Scaffold(
          appBar: SharedAppBarWithDrawer(
            titleWidget: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: 16,
              children: [
                Column(
                  children: [
                    Row(
                      spacing: 4,
                      children: [
                        if (father?.sex != null) father!.sex.getIcon(context),
                        Text(
                          father?.ringNumber ?? '',
                          style: context.titleSmall,
                        ),
                      ],
                    ),
                    Row(
                      spacing: 4,
                      children: [
                        if (mother?.sex != null) mother!.sex.getIcon(context),
                        Text(
                          mother?.ringNumber ?? '',
                          style: context.titleSmall,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    if (father?.cageResolved?.name != null)
                      Text(
                        '${father!.cageResolved!.name}',
                        style: context.titleSmall
                            ?.copyWith(fontStyle: FontStyle.italic),
                      ),
                    if (father?.speciesResolved?.name != null)
                      Text(
                        '${father!.speciesResolved!.name}',
                        style: context.titleSmall
                            ?.copyWith(fontStyle: FontStyle.italic),
                      ),
                  ],
                ),
              ],
            ),
            hideMenuButton: true,
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
          floatingActionButton: AddBroodButton(
            breedingPair: breedingPair,
          ),
          body: ListView.builder(
            itemCount: broods.length + 1, // +1 for the header
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: BroodOverview(
                    broods: filteredBreedingPairs(broods),
                  ),
                );
              }
              final brood = filteredBreedingPairs(broods)[index - 1];
              final children = context
                  .read<BirdBreederCubit>()
                  .state
                  .birdBreederResources
                  .birds
                  .where((bird) => bird.broodId == brood.id)
                  .toList();

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: ListTile(
                  title: Text(
                    brood.start != null
                        ? 'Brut vom ${brood.start!.toDateFormat(context)}'
                        : 'Brut',
                  ),
                  subtitle: Text(
                    'Anzahl Küken: ${children.length}',
                  ),
                  onTap: () async {
                    await context.router.push(
                      BroodRoute(broodId: brood.id),
                    );
                  },
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class AddBroodButton extends StatelessWidget {
  const AddBroodButton({super.key, required this.breedingPair});

  final BreedingPair breedingPair;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        await context.read<BirdBreederCubit>().addBrood(breedingPair);
      },
      tooltip: 'Neue Brut hinzufügen',
      child: const Icon(Icons.add),
    );
  }
}

class BroodOverview extends StatelessWidget {
  const BroodOverview({super.key, required this.broods});

  final List<Brood> broods;

  @override
  Widget build(BuildContext context) {
    // return a nice looking header for the list of broods. Containing the number of broods, the number of chicks and the average number of chicks per brood
    final totalBroods = broods.length;
    final totalLaidEggs = broods.fold<int>(
      0,
      (sum, brood) => sum + brood.laidEggs,
    );

    final totalChicks = broods.fold<int>(
      0,
      (sum, brood) => sum + brood.childrenResolved.length,
    );
    final averageChicks = totalBroods > 0
        ? (totalChicks / totalBroods).toStringAsFixed(1)
        : '0.0';
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Anzahl Bruten: $totalBroods',
              style: context.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              'Anzahl Küken insgesamt: $totalChicks',
              style: context.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              'Anzahl gelegte Eier insgesamt: $totalLaidEggs',
              style: context.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              'Durchschnittliche Anzahl Küken pro Brut: $averageChicks',
              style: context.bodyMedium?.copyWith(fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}

class BroodTable extends StatelessWidget {
  const BroodTable({super.key, required this.brood});

  final Brood brood;

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
