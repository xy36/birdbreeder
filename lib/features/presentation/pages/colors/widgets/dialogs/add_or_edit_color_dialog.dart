import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/domain/models/entities/bird_color.dart';

class AddOrEditColorDialog extends StatefulWidget {
  const AddOrEditColorDialog({super.key, required this.onAdd, this.color});

  final void Function(BirdColor) onAdd;
  final BirdColor? color;

  @override
  State<AddOrEditColorDialog> createState() => _AddOrEditColorDialogState();
}

class _AddOrEditColorDialogState extends State<AddOrEditColorDialog> {
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    if (widget.color != null) {
      controller.text = widget.color!.name!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(context.l10n.colors__add_color),
      content: TextField(
        controller: controller,
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
            if (controller.text.isEmpty) return;

            if (widget.color != null) {
              widget.onAdd(widget.color!.copyWith(name: controller.text));
              Navigator.of(context).pop();
              return;
            }

            // create new color if color is null
            widget.onAdd(BirdColor(name: controller.text));
            Navigator.of(context).pop();
          },
          child: Text(context.l10n.common__ok),
        ),
      ],
    );
  }
}
