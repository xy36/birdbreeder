import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/species/domain/models/species.dart';
import 'package:birdbreeder/features/species/presentation/cubit/species_cubit.dart';
import 'package:birdbreeder/shared/widgets/dialogs/delete_dialog.dart';

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
        final bloc = context.read<SpeciesCubit>();
        await showDialog<String>(
          context: context,
          builder: (context) => DeleteDialog(
            title: context.l10n.species__delete_species,
            onDelete: () => bloc.delete(species),
          ),
        );

        if (!context.mounted) return;

        Navigator.of(context).pop();
      },
    );
  }
}
