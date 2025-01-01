import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/species/domain/models/species.dart';
import 'package:birdbreeder/features/species/presentation/bloc/species_bloc.dart';
import 'package:birdbreeder/features/species/presentation/widgets/dialogs/add_or_edit_species_dialog.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

class SpeciesItem extends StatelessWidget {
  const SpeciesItem({super.key, required this.species});

  final Species species;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(species.name ?? '-'),
        subtitle: Text(species.latName ?? ''),
        onTap: () async {
          final bloc = context.read<SpeciesBloc>();
          await showChildAsDrawerDialog(
            context,
            AddOrEditSpeciesDialog(
              initialSpecies: species,
              speciesBloc: bloc,
            ),
          );
        },
      ),
    );
  }
}
