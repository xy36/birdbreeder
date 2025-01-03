import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/utils/flash_helper.dart';
import 'package:birdbreeder/features/contacts/domain/repositories/i_contacts_repository.dart';
import 'package:birdbreeder/features/contacts/presentation/contacts_screen.dart';
import 'package:birdbreeder/features/contacts/presentation/cubit/contacts_cubit.dart';
import 'package:birdbreeder/features/contacts/presentation/cubit/contacts_cubit_event.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:bloc_presentation/bloc_presentation.dart';

@RoutePage()
class ContactsPage extends StatelessWidget {
  const ContactsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactsCubit(s1.get<IContactsRepository>())..load(),
      child: BlocPresentationListener<ContactsCubit, ContactsCubitEvent>(
        listener: (context, event) {
          switch (event) {
            case ContactsEventCreateFailed():
              context.showErrorBar<bool>(
                content: Text(context.l10n.snackbar__create_failed),
              );
              break;
            case ContactsEventUpdateFailed():
              context.showErrorBar<bool>(
                content: Text(context.l10n.snackbar__update_failed),
              );
              break;
            case ContactsEventDeleteFailed():
              context.showErrorBar<bool>(
                content: Text(context.l10n.snackbar__delete_failed),
              );
              break;
          }
        },
        child: const ContactsScreen(),
      ),
    );
  }
}
