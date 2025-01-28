import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';
import 'package:birdbreeder/features/contacts/presentation/cubit/contacts_cubit.dart';
import 'package:birdbreeder/features/contacts/presentation/widgets/buttons/add_new_contact_button.dart';
import 'package:birdbreeder/features/contacts/presentation/widgets/contact_item.dart';
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
        return contact.name!.toLowerCase().contains(searchQuery.toLowerCase());
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactsCubit, ContactsState>(
      buildWhen: (previous, current) => current.isNotListerner,
      builder: (context, state) {
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
          body: state.when(
            initial: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (contacts) {
              final searchedColors = filteredContacts(contacts);

              return ListView.builder(
                itemCount: searchedColors.length,
                itemBuilder: (context, index) {
                  final contact = searchedColors[index];

                  if (contact.name == null) {
                    return const SizedBox.shrink();
                  }
                  return ContactItem(
                    contact: contact,
                  );
                },
              );
            },
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
