import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/species/domain/models/species.dart';
import 'package:birdbreeder/features/species/presentation/widgets/buttons/add_new_species_button.dart';
import 'package:birdbreeder/features/species/presentation/widgets/species_item.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
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
        return element.name!
                .toLowerCase()
                .contains(searchQuery.toLowerCase()) ||
            element.latName!.toLowerCase().contains(searchQuery.toLowerCase());
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    final species = context.watch<BirdBreederCubit>().state.maybeWhen(
          loaded: (birdBreederResources) => birdBreederResources.species,
          orElse: () => <Species>[],
        );

    final searchedSpecies = filteredSpecies(species);

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
      floatingActionButton: const AddNewSpeciesButton(),
      body: ListView.builder(
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
      ),
    );
  }
}
