import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:birdbreeder/features/cages/presentation/cubit/cages_cubit.dart';
import 'package:birdbreeder/features/cages/presentation/widgets/dialogs/delete_cage_dialog.dart';

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
        final bloc = context.read<CagesCubit>();
        await showDialog<String>(
          context: context,
          builder: (context) => DeleteCageDialog(
            cage: cage,
            onDelete: bloc.delete,
          ),
        );
        // ignore: use_build_context_synchronously
        Navigator.of(context).pop();
      },
    );
  }
}
