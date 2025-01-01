import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/contacts/presentation/cubit/contacts_cubit.dart';
import 'package:birdbreeder/features/contacts/presentation/widgets/dialogs/add_or_edit_contact_dialog.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

class AddNewContactButton extends StatefulWidget {
  const AddNewContactButton({super.key});

  @override
  State<AddNewContactButton> createState() => _AddNewContactButtonState();
}

class _AddNewContactButtonState extends State<AddNewContactButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        final cubit = context.read<ContactsCubit>();
        await showChildAsDrawerDialog(
          context,
          AddOrEditContactDialog(
            contactsCubit: cubit,
          ),
        );
      },
      child: const Icon(Icons.add),
    );
  }
}
