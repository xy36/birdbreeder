import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:birdbreeder/features/cages/presentation/cage/cubit/cage_cubit.dart';
import 'package:birdbreeder/shared/widgets/dialogs/delete_dialog.dart';

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
        final bloc = context.read<CageCubit>();
        await showDialog<String>(
          context: context,
          builder: (context) => DeleteDialog(
            title: context.l10n.cages__delete_cage,
            onDelete: () => bloc.delete(cage),
          ),
        );

        if (!context.mounted) return;

        Navigator.of(context).pop();
      },
    );
  }
}
