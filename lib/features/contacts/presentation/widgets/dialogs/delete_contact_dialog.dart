import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';

class DeleteContactDialog extends StatelessWidget {
  const DeleteContactDialog({
    super.key,
    required this.contact,
    required this.onDelete,
  });

  final void Function(Contact) onDelete;
  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(context.l10n.colors__delete_color),
      content: Text(
        contact.name ?? '-',
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(context.l10n.common__cancel),
        ),
        ElevatedButton(
          onPressed: () {
            onDelete(contact);
            Navigator.of(context).pop();
          },
          child: Text(context.l10n.common__ok),
        ),
      ],
    );
  }
}
