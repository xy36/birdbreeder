import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/presentation/pages/species/bloc/species_bloc.dart';
import 'package:birdbreeder/features/presentation/pages/species/widgets/buttons/add_new_species_button.dart';
import 'package:birdbreeder/features/presentation/pages/species/widgets/species_item.dart';
import 'package:birdbreeder/features/presentation/shared/app_bar_with_drawer.dart';

class SpeciesScreen extends StatelessWidget {
  const SpeciesScreen({super.key});

  //TODO: fix error handling
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpeciesBloc, SpeciesState>(
      buildWhen: (previous, current) => current.isNotListerner,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBarWithDrawer(
            title: context.l10n.species__title,
          ),
          floatingActionButton: const AddNewSpeciesButton(),
          body: state.when(
            initial: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (speciesList) => ListView.builder(
              itemCount: speciesList.length,
              itemBuilder: (context, index) {
                final species = speciesList[index];

                if (species.name == null) return const SizedBox.shrink();
                return SpeciesItem(
                  species: species,
                );
              },
            ),
            error: () {
              return Center(
                child: Text(context.l10n.common__something_went_wrong),
              );
            },
          ),
        );
      },
    );
  }
}
