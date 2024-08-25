import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:birdbreeder/features/cages/presentation/bloc/cages_bloc.dart';
import 'package:birdbreeder/features/cages/presentation/widgets/dialogs/add_or_edit_cage_dialog.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

class EditCageButton extends StatelessWidget {
  const EditCageButton({
    super.key,
    required this.cage,
  });

  final Cage cage;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.edit),
      onPressed: () async {
        final bloc = context.read<CagesBloc>();
        await showChildAsDrawerDialog(
          context,
          AddOrEditCageDialog(
            initialCage: cage,
            onAdd: (cage) {
              bloc.add(EditCage(cage));
            },
          ),
        );
      },
    );
  }
}
