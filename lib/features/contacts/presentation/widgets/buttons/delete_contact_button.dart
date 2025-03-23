import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';
import 'package:birdbreeder/features/contacts/presentation/cubit/contacts_cubit.dart';
import 'package:birdbreeder/shared/widgets/dialogs/delete_dialog.dart';

class DeleteContactButton extends StatelessWidget {
  const DeleteContactButton({
    super.key,
    required this.contact,
  });

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.delete),
      onPressed: () async {
        final cubit = context.read<ContactsCubit>();
        await showDialog<String>(
          context: context,
          builder: (context) => DeleteDialog(
            title: context.l10n.contacts__delete_contact,
            onDelete: () => cubit.delete(contact),
          ),
        );

        if (!context.mounted) return;

        Navigator.of(context).pop();
      },
    );
  }
}
