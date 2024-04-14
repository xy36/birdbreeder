import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/cages/domain/entities/cage.dart';

class DeleteCageDialog extends StatelessWidget {
  const DeleteCageDialog({
    super.key,
    required this.cage,
    required this.onDelete,
  });

  final void Function(Cage) onDelete;
  final Cage cage;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(context.l10n.cages__delete_cage),
      content: Text(
        cage.name ?? '-',
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(context.l10n.common_cancel),
        ),
        ElevatedButton(
          onPressed: () {
            onDelete(cage);
            Navigator.of(context).pop();
          },
          child: Text(context.l10n.common__ok),
        ),
      ],
    );
  }
}
