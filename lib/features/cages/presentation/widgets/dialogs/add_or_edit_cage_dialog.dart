import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:flutter/services.dart';

class AddOrEditCageDialog extends StatefulWidget {
  const AddOrEditCageDialog({super.key, required this.onAdd, this.cage});

  final void Function(Cage) onAdd;
  final Cage? cage;

  @override
  State<AddOrEditCageDialog> createState() => _AddOrEditCageDialogState();
}

class _AddOrEditCageDialogState extends State<AddOrEditCageDialog> {
  @override
  void initState() {
    _cage = widget.cage ?? Cage.create();
    super.initState();
  }

  late Cage _cage;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(context.l10n.cages__add_cage),
      content: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              initialValue: _cage.name,
              decoration: InputDecoration(
                hintText: context.l10n.cages__name,
              ),
              onChanged: (value) {
                _cage = _cage.copyWith(name: value);
              },
              validator: (value) {
                if (value.isNullOrEmpty) {
                  return context.l10n.cages__name_is_required;
                }
                return null;
              },
            ),
            TextFormField(
              initialValue: _cage.description,
              minLines: 3,
              maxLines: 10,
              decoration: InputDecoration(
                hintText: context.l10n.cages__description,
              ),
              onChanged: (value) {
                _cage = _cage.copyWith(description: value);
              },
            ),
            TextFormField(
              initialValue: _cage.height?.toString(),
              decoration: InputDecoration(
                hintText: context.l10n.cages__height,
                suffix: Text(context.l10n.common__unit_m),
              ),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9]')),
              ],
              onChanged: (value) {
                _cage = _cage.copyWith(height: int.tryParse(value));
              },
            ),
            TextFormField(
              initialValue: _cage.width?.toString(),
              decoration: InputDecoration(
                hintText: context.l10n.cages__width,
                suffix: Text(context.l10n.common__unit_m),
              ),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9]')),
              ],
              onChanged: (value) {
                _cage = _cage.copyWith(width: int.tryParse(value));
              },
            ),
            TextFormField(
              initialValue: _cage.depth?.toString(),
              decoration: InputDecoration(
                hintText: context.l10n.cages__depth,
                suffix: Text(context.l10n.common__unit_m),
              ),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp('[0-9]')),
              ],
              onChanged: (value) {
                _cage = _cage.copyWith(depth: int.tryParse(value));
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
              widget.onAdd(_cage);

              Navigator.of(context).pop();
            }
          },
          child: Text(context.l10n.common__ok),
        ),
      ],
    );
  }
}
