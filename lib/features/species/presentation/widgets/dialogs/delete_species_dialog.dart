import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/species/domain/models/species.dart';

class DeleteSpeciesDialog extends StatelessWidget {
  const DeleteSpeciesDialog({
    super.key,
    required this.species,
    required this.onDelete,
  });

  final void Function(Species) onDelete;
  final Species species;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(context.l10n.species__delete_species),
      content: Text(
        species.name ?? '-',
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(context.l10n.common__cancel),
        ),
        ElevatedButton(
          onPressed: () {
            onDelete(species);
            Navigator.of(context).pop();
          },
          child: Text(context.l10n.common__ok),
        ),
      ],
    );
  }
}
