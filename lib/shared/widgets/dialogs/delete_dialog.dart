import 'package:birdbreeder/common_imports.dart';

class DeleteDialog extends StatelessWidget {
  const DeleteDialog({
    super.key,
    required this.onDelete,
    required this.title,
  });

  final String title;
  final void Function() onDelete;

  static Future<void> show({
    required BuildContext context,
    required String title,
    required void Function() onDelete,
  }) async {
    await showDialog<String>(
      context: context,
      builder: (context) => DeleteDialog(
        title: title,
        onDelete: onDelete,
      ),
    );

    if (!context.mounted) return;

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(context.l10n.dialog__delete_content),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(context.l10n.common__cancel),
        ),
        ElevatedButton(
          onPressed: () {
            onDelete();
            Navigator.of(context).pop();
          },
          child: Text(context.l10n.common__ok),
        ),
      ],
    );
  }
}
