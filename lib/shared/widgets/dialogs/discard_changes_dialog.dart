import 'package:birdbreeder/common_imports.dart';

class DiscardChangesDialog extends StatelessWidget {
  const DiscardChangesDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(context.tr.dialog.discard_changes.title),
      content: Text(
        context.tr.dialog.discard_changes.content,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          child: Text(context.tr.common.cancel),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: Text(context.tr.common.ok),
        ),
      ],
    );
  }
}
