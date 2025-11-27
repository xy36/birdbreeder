import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
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
                context.snackInfo(
                  context.tr.contacts.deleted,
                );
                context.router.maybePop();

              case ContactCubitEventError():
                context.snackError(
                  context.tr.common.something_went_wrong,
                );
              case ContactCubitEventSaved():
                context.snackSuccess(
                  context.tr.contacts.saved,
                );
                context.maybePop();
            }
          },
        );
}
