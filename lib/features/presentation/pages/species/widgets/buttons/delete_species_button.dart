import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/domain/models/entities/species.dart';
import 'package:birdbreeder/features/presentation/pages/species/bloc/species_bloc.dart';
import 'package:birdbreeder/features/presentation/pages/species/widgets/dialogs/delete_species_dialog.dart';

class DeleteSpeciesButton extends StatelessWidget {
  const DeleteSpeciesButton({
    super.key,
    required this.species,
  });

  final Species species;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.delete),
      onPressed: () async {
        final bloc = context.read<SpeciesBloc>();
        await showDialog<String>(
          context: context,
          builder: (context) => DeleteSpeciesDialog(
            species: species,
            onDelete: (species) {
              bloc.add(DeleteSpecies(species));
            },
          ),
        );
      },
    );
  }
}
