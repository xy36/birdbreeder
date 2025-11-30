import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/models/item_action.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/dialogs/delete_dialog.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

enum ContactActions implements ItemAction<Contact> {
  delete;

  static Widget buildMenu(
    BuildContext context,
    Contact contact,
  ) {
    return moreMenu<Contact>(
      context,
      contact,
      values
          .map(
            (action) => (
              icon: null,
              label: action.getLabel(context),
              action: action.execute,
            ),
          )
          .toList(),
    );
  }

  @override
  Icon get icon {
    return switch (this) {
      delete => const Icon(AppIcons.delete, color: Colors.red),
    };
  }

  @override
  String getLabel(BuildContext context) {
    return switch (this) {
      delete => context.tr.pop_up_menu.delete,
    };
  }

  @override
  Future<void> execute(
    BuildContext context,
    Contact contact, {
    dynamic extra,
  }) async {
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
