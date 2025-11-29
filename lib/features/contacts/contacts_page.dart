import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/birds/presentation/birds_overview/widgets/birds_overview_header.dart';
import 'package:birdbreeder/features/contacts/cubit/contact_search_cubit.dart';
import 'package:birdbreeder/features/contacts/widgets/contact_item.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/cubits/generic_search_cubit/base_search.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/buttons/app_action_button.dart';

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
        actions: [
          BlocBuilder<ContactSearchCubit, BaseSearch>(
            builder: (context, state) {
              return IconButton(
                onPressed: () {
                  context.read<ContactSearchCubit>().toggleActive();
                },
                icon: AnimatedCrossFade(
                  firstChild: const Icon(AppIcons.search),
                  secondChild: const Icon(AppIcons.searchOff),
                  crossFadeState: state.isActive
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  duration: const Duration(milliseconds: 300),
                ),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<BirdBreederCubit, BirdBreederState>(
        builder: (context, state) => state.map(
          initial: (_) => const SharedLoadingWidget(),
          loading: (_) => const SharedLoadingWidget(),
          loaded: (state) {
            context
                .watch<ContactSearchCubit>()
                .setItems(state.birdBreederResources.contacts);
            final list = context.watch<ContactSearchCubit>().searchedItems;

            return Column(
              children: [
                BlocBuilder<ContactSearchCubit, BaseSearch>(
                  builder: (context, state) {
                    return AnimatedCrossFade(
                      firstChild: const SizedBox.shrink(),
                      secondChild: GenericSearchBar(
                        initialQuery: state.query,
                        onSearch: (query) {
                          context.read<ContactSearchCubit>().setSearch(query);
                        },
                      ),
                      crossFadeState: state.isActive
                          ? CrossFadeState.showSecond
                          : CrossFadeState.showFirst,
                      duration: const Duration(milliseconds: 300),
                    );
                  },
                ),
                Expanded(
                  child: ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(
                      parent: BouncingScrollPhysics(),
                    ),
                    itemCount: list.length,
                    itemBuilder: (context, i) => ContactCard(
                      contact: list[i],
                      onTap: () {
                        context.router.push(
                          ContactDetailsRoute(initialContact: list[i]),
                        );
                      },
                      onDelete: () {
                        context.read<BirdBreederCubit>().deleteContact(
                              list[i],
                            );
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AppActionButton(
            type: ButtonType.floatingActionButton,
            actionButtonType: ActionButtonType.contactAdd,
            onPressed: () async {
              await context.router.push(
                ContactDetailsRoute(),
              );
            },
          ),
        ],
      ),
    );
  }
}
