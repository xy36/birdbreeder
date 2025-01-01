import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';
import 'package:birdbreeder/features/contacts/presentation/cubit/contacts_cubit.dart';
import 'package:birdbreeder/features/contacts/presentation/widgets/dialogs/add_or_edit_contact_dialog.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({super.key, required this.contact});

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(contact.name ?? '-'),
        subtitle: Text(contact.firstName ?? ''),
        trailing: Text(contact.number ?? ''),
        onTap: () async {
          final cubit = context.read<ContactsCubit>();
          await showChildAsDrawerDialog(
            context,
            AddOrEditContactDialog(
              initialContact: contact,
              contactsCubit: cubit,
            ),
          );
        },
      ),
    );
  }
}
