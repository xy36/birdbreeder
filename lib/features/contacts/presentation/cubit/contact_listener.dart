import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/utils/flash_helper.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';
import 'package:birdbreeder/features/contacts/presentation/cubit/contact_cubit.dart';
import 'package:birdbreeder/features/contacts/presentation/cubit/contact_cubit_event.dart';
import 'package:bloc_presentation/bloc_presentation.dart';

class ContactListener
    extends BlocPresentationListener<ContactCubit, ContactCubitEvent> {
  ContactListener({
    super.key,
    super.child,
  }) : super(
          listener: (context, event) {
            switch (event) {
              case ContactCubitEventDeleted():
                context.showInfoBar<Contact>(
                  content: Text(context.l10n.contacts__deleted),
                );
                context.router.maybePop();
                break;

              case ContactCubitEventError():
                context.showErrorBar<bool>(
                  content: const Text('Something went wrong!'),
                );
                break;
              case ContactCubitEventSaved():
                context.showSuccessBar<bool>(
                  content: Text(context.l10n.contacts__saved),
                );
                context.pop();
                break;
            }
          },
        );
}
