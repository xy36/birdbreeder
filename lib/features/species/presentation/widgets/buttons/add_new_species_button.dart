import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/species/presentation/cubit/species_cubit.dart';
import 'package:birdbreeder/features/species/presentation/widgets/dialogs/add_or_edit_species_dialog.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

class AddNewSpeciesButton extends StatefulWidget {
  const AddNewSpeciesButton({super.key});

  @override
  State<AddNewSpeciesButton> createState() => _AddNewSpeciesButtonState();
}

class _AddNewSpeciesButtonState extends State<AddNewSpeciesButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        final bloc = context.read<SpeciesCubit>();
        await showChildAsDrawerDialog(
          context,
          AddOrEditSpeciesDialog(
            speciesBloc: bloc,
          ),
        );
      },
      child: const Icon(Icons.add),
    );
  }
}
