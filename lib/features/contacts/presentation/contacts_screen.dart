import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/contacts/presentation/cubit/contacts_cubit.dart';
import 'package:birdbreeder/features/contacts/presentation/widgets/buttons/add_new_contact_button.dart';
import 'package:birdbreeder/features/contacts/presentation/widgets/contact_item.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactsCubit, ContactsState>(
      buildWhen: (previous, current) => current.isNotListerner,
      builder: (context, state) {
        return Scaffold(
          appBar: SharedAppBarWithDrawer(
            title: context.l10n.contacts__title,
          ),
          floatingActionButton: const AddNewContactButton(),
          body: state.when(
            initial: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (contacts) => ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                final contact = contacts[index];

                if (contact.name == null) return const SizedBox.shrink();
                return ContactItem(
                  contact: contact,
                );
              },
            ),
            errorScreen: () {
              return Center(
                child: Text(context.l10n.common__something_went_wrong),
              );
            },
          ),
        );
      },
    );
  }
}
