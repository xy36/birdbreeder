import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/species/domain/models/species.dart';
import 'package:birdbreeder/features/species/presentation/cubit/species_cubit.dart';
import 'package:birdbreeder/features/species/presentation/widgets/buttons/add_new_species_button.dart';
import 'package:birdbreeder/features/species/presentation/widgets/species_item.dart';
import 'package:birdbreeder/shared/widgets/search_bar_widget.dart';

class SpeciesScreen extends StatefulWidget {
  const SpeciesScreen({super.key});

  @override
  State<SpeciesScreen> createState() => _SpeciesScreenState();
}

class _SpeciesScreenState extends State<SpeciesScreen> {
  String searchQuery = '';

  List<Species> filteredSpecies(List<Species> species) {
    return List<Species>.from(
      species.where((element) {
        if (searchQuery.isEmpty) return true;
        return element.name!.toLowerCase().contains(searchQuery.toLowerCase());
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpeciesCubit, SpeciesState>(
      buildWhen: (previous, current) => current.isNotListerner,
      builder: (context, state) {
        return Scaffold(
          appBar: SharedAppBarWithDrawer(
            title: context.l10n.species__title,
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
          body: state.when(
            initial: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (speciesList) {
              final searchedSpecies = filteredSpecies(speciesList);
              return ListView.builder(
                itemCount: searchedSpecies.length,
                itemBuilder: (context, index) {
                  final species = searchedSpecies[index];
                  if (species.name == null) {
                    return const SizedBox.shrink();
                  }

                  return SpeciesItem(
                    species: species,
                  );
                },
              );
            },
            errorScreen: () {
              return Center(
                child: Text(context.l10n.common__something_went_wrong),
              );
            },
          ),
          floatingActionButton: const AddNewSpeciesButton(),
        );
      },
    );
  }
}
