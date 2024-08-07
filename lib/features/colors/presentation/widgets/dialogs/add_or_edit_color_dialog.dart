import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';

class AddOrEditColorDialog extends StatefulWidget {
  const AddOrEditColorDialog({super.key, required this.onAdd, this.color});

  final void Function(BirdColor) onAdd;
  final BirdColor? color;

  @override
  State<AddOrEditColorDialog> createState() => _AddOrEditColorDialogState();
}

class _AddOrEditColorDialogState extends State<AddOrEditColorDialog> {
  @override
  void initState() {
    _colors = widget.color ?? BirdColor.create();
    super.initState();
  }

  late BirdColor _colors;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(context.l10n.colors__add_color),
      content: Form(
        key: formKey,
        child: TextFormField(
          initialValue: _colors.name,
          decoration: InputDecoration(
            hintText: context.l10n.colors__color,
          ),
          onChanged: (value) {
            _colors = _colors.copyWith(name: value);
          },
          validator: (value) {
            if (value.isNullOrEmpty) {
              return context.l10n.colors__name_is_required;
            }
            return null;
          },
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
              widget.onAdd(_colors);

              Navigator.of(context).pop();
            }
          },
          child: Text(context.l10n.common__ok),
        ),
      ],
    );
  }
}
