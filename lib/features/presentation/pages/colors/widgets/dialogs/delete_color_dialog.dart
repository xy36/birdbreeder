import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/domain/models/entities/bird_color.dart';

class DeleteColorDialog extends StatelessWidget {
  const DeleteColorDialog({
    super.key,
    required this.color,
    required this.onDelete,
  });

  final void Function(BirdColor) onDelete;
  final BirdColor color;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(context.l10n.colors__delete_color),
      content: Text(
        color.name ?? '-',
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
            onDelete(color);
            Navigator.of(context).pop();
          },
          child: Text(context.l10n.common__ok),
        ),
      ],
    );
  }
}
