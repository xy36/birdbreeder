import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/ressourcen_center/widgets/resource_list.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

@RoutePage(name: 'ContactsTabRoute')
class ContactsTab extends StatelessWidget {
  const ContactsTab({super.key});
  @override
  Widget build(BuildContext context) {
    return ResourceList<Contact>(
      title: 'Contacts',
      items:
          context.watch<BirdBreederCubit>().state.birdBreederResources.contacts,
      onCreate: () => context.router.push(ContactDetailsRoute()),
      onDelete: (contact) =>
          context.read<BirdBreederCubit>().deleteContact(contact),
      onEdit: (x) =>
          context.router.push(ContactDetailsRoute(initialContact: x)),
    );
  }
}
