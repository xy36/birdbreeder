import 'package:birdbreeder/common_imports.dart';

class DeleteDialog extends StatelessWidget {
  const DeleteDialog({
    required this.onDelete,
    required this.title,
    super.key,
    this.content,
  });

  final String title;
  final String? content;
  final void Function() onDelete;

  static Future<void> show({
    required BuildContext context,
    required String title,
    required void Function() onDelete,
    String? content,
  }) async {
    await showDialog<String>(
      context: context,
      builder: (context) => DeleteDialog(
        title: title,
        onDelete: onDelete,
        content: content,
      ),
    );

    if (!context.mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content ?? context.tr.dialog.delete_entry.content),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(context.tr.common.cancel),
        ),
        ElevatedButton(
          onPressed: () {
            onDelete();
            Navigator.of(context).pop();
          },
          child: Text(context.tr.common.ok),
        ),
      ],
    );
  }
}
