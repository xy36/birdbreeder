import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/domain/models/entities/cage.dart';
import 'package:birdbreeder/features/presentation/pages/cages/bloc/cages_bloc.dart';
import 'package:birdbreeder/features/presentation/pages/cages/widgets/dialogs/delete_cage_dialog.dart';

class DeleteCageButton extends StatelessWidget {
  const DeleteCageButton({
    super.key,
    required this.cage,
  });

  final Cage cage;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.delete),
      onPressed: () async {
        final bloc = context.read<CagesBloc>();
        await showDialog<String>(
          context: context,
          builder: (context) => DeleteCageDialog(
            cage: cage,
            onDelete: (cage) {
              bloc.add(DeleteCage(cage));
            },
          ),
        );
      },
    );
  }
}
