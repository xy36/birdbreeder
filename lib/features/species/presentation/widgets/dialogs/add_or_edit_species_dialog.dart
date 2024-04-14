import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/species/domain/entities/species.dart';

class AddOrEditSpeciesDialog extends StatefulWidget {
  const AddOrEditSpeciesDialog({super.key, required this.onAdd, this.species});

  final void Function(Species) onAdd;
  final Species? species;

  @override
  State<AddOrEditSpeciesDialog> createState() => _AddOrEditSpeciesDialogState();
}

class _AddOrEditSpeciesDialogState extends State<AddOrEditSpeciesDialog> {
  @override
  void initState() {
    _species = widget.species ?? Species();
    super.initState();
  }

  late Species _species;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(context.l10n.species__add_species),
      content: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              initialValue: _species.name,
              decoration: InputDecoration(
                hintText: context.l10n.species__name,
              ),
              onChanged: (value) {
                _species = _species.copyWith(name: value);
              },
              validator: (value) {
                if (value.isNullOrEmpty) {
                  return context.l10n.species__name_is_required;
                }
                return null;
              },
            ),
            TextFormField(
              initialValue: _species.latName,
              decoration: InputDecoration(
                hintText: context.l10n.species__latin_name,
              ),
              onChanged: (value) {
                _species = _species.copyWith(latName: value);
              },
            ),
          ],
        ),
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
            if (formKey.currentState?.validate() == true) {
              widget.onAdd(_species);

              Navigator.of(context).pop();
            }
          },
          child: Text(context.l10n.common__ok),
        ),
      ],
    );
  }
}
