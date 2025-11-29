import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/dialogs/delete_dialog.dart';

enum ContactActions {
  delete;

  Icon get icon {
    return switch (this) {
      delete => const Icon(AppIcons.delete, color: Colors.red),
    };
  }

  String getLabel(BuildContext context) {
    return switch (this) {
      delete => context.tr.pop_up_menu.delete,
    };
  }

  Future<void> executeAction(
    BuildContext context,
    Contact contact,
  ) async {
    switch (this) {
      case delete:
        if (context.mounted) {
          await DeleteDialog.show(
            context: context,
            title: context.tr.contacts.delete,
            onDelete: () async {
              await context.maybePop();

              if (context.mounted) {
                await context.read<BirdBreederCubit>().deleteContact(contact);
              }
            },
          );
        }
    }
  }
}
