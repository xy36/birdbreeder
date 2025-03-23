import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';
import 'package:birdbreeder/features/contacts/presentation/widgets/buttons/add_new_contact_button.dart';
import 'package:birdbreeder/features/contacts/presentation/widgets/contact_item.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/widgets/search_bar_widget.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  String searchQuery = '';

  List<Contact> filteredContacts(List<Contact> contacts) {
    return List<Contact>.from(
      contacts.where((contact) {
        if (searchQuery.isEmpty) return true;
        return contact.name!
                .toLowerCase()
                .contains(searchQuery.toLowerCase()) ||
            contact.firstName!
                .toLowerCase()
                .contains(searchQuery.toLowerCase());
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    final contacts = context.watch<BirdBreederCubit>().state.maybeWhen(
          loaded: (birdBreederResources) => birdBreederResources.contacts,
          orElse: () => <Contact>[],
        );

    final searchedContacts = filteredContacts(contacts);

    return Scaffold(
      appBar: SharedAppBarWithDrawer(
        title: context.l10n.contacts__title,
        actions: [
          SearchBarWidget(
            onChanged: (value) {
              setState(() {
                searchQuery = value;
              });
            },
          ),
        ],
      ),
      floatingActionButton: const AddNewContactButton(),
      body: ListView.builder(
        itemCount: searchedContacts.length,
        itemBuilder: (context, index) {
          final contact = searchedContacts[index];

          if (contact.name == null) return const SizedBox.shrink();
          return ContactItem(
            contact: contact,
          );
        },
      ),
    );
  }
}
