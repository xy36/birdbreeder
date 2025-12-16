import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/extensions/widget_extensions.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/contacts/cubit/contact_search_cubit.dart';
import 'package:birdbreeder/features/contacts/widgets/contact_item.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/cubits/generic_search_cubit/base_search.dart';
import 'package:birdbreeder/shared/widgets/bird_breeder_wrapper.dart';
import 'package:birdbreeder/shared/widgets/bottom_search_bar.dart';

@RoutePage()
class ContactsPage extends StatefulWidget {
  const ContactsPage({
    super.key,
  });

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    final contacts = context.watch<ContactSearchCubit>().searchedItems.length;
    return Scaffold(
      appBar: SharedAppBarWithDrawer(
        title: context.tr.contacts.title(Count: contacts),
      ),
      body: BirdBreederWrapper(
        child: BlocBuilder<BirdBreederCubit, BirdBreederState>(
          builder: (context, state) {
            context
                .read<ContactSearchCubit>()
                .setItems(state.birdBreederResources.contacts);

            context
                .watch<ContactSearchCubit>()
                .setItems(state.birdBreederResources.contacts);

            return BlocBuilder<ContactSearchCubit, BaseSearch>(
              builder: (context, state) {
                final searchedContacts =
                    context.read<ContactSearchCubit>().searchedItems;

                return ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(
                    parent: BouncingScrollPhysics(),
                  ),
                  itemCount: searchedContacts.length,
                  itemBuilder: (context, i) => ContactCard(
                    contact: searchedContacts[i],
                    onTap: () async {
                      await context.router.push(
                        ContactDetailsRoute(
                          initialContact: searchedContacts[i],
                        ),
                      );
                    },
                    onDelete: () async {
                      await context.read<BirdBreederCubit>().deleteContact(
                            searchedContacts[i],
                          );
                    },
                  ),
                ).withRefresher(
                  onRefresh: () async {
                    await context.read<BirdBreederCubit>().fetchContacts();
                  },
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: BottomSearchBar(
        onSearch: (query) {
          context.read<ContactSearchCubit>().setSearch(query);
        },
        onAdd: () async {
          await context.router.push(
            ContactDetailsRoute(),
          );
        },
      ),
    );
  }
}
