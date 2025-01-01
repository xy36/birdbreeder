import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';
import 'package:birdbreeder/features/contacts/presentation/cubit/contacts_cubit.dart';
import 'package:birdbreeder/features/contacts/presentation/widgets/dialogs/delete_contact_dialog.dart';

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
          builder: (context) => DeleteContactDialog(
            contact: contact,
            onDelete: cubit.delete,
          ),
        );
        // ignore: use_build_context_synchronously
        Navigator.of(context).pop();
      },
    );
  }
}
