import 'package:birdbreeder/common_imports.dart';

class DiscardChangesDialog extends StatelessWidget {
  const DiscardChangesDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(context.l10n.dialog__discard_changes_title),
      content: Text(
        context.l10n.dialog__discard_changes_message,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          child: Text(context.l10n.common__cancel),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: Text(context.l10n.common__ok),
        ),
      ],
    );
  }
}
