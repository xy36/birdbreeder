import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/domain/models/entities/species.dart';

class AddOrEditSpeciesDialog extends StatefulWidget {
  const AddOrEditSpeciesDialog({super.key, required this.onAdd, this.species});

  final void Function(Species) onAdd;
  final Species? species;

  @override
  State<AddOrEditSpeciesDialog> createState() => _AddOrEditSpeciesDialogState();
}

class _AddOrEditSpeciesDialogState extends State<AddOrEditSpeciesDialog> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController latNameController = TextEditingController();

  @override
  void initState() {
    if (widget.species != null) {
      nameController.text = widget.species?.name ?? '';
      latNameController.text = widget.species?.latName ?? '';
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(context.l10n.species__add_species),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: context.l10n.species__name,
            ),
            controller: nameController,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: context.l10n.species__latin_name,
            ),
            controller: latNameController,
          ),
        ],
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
            if (nameController.text.isEmpty) return;

            if (widget.species != null) {
              widget.onAdd(
                widget.species!.copyWith(
                  name: nameController.text,
                  latName: latNameController.text,
                ),
              );
              Navigator.of(context).pop();
              return;
            }

            // create new species if species is null
            widget.onAdd(
              Species(
                name: nameController.text,
                latName: latNameController.text,
              ),
            );
            Navigator.of(context).pop();
          },
          child: Text(context.l10n.common__ok),
        ),
      ],
    );
  }
}
