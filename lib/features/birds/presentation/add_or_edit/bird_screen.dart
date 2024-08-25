import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/bloc/bird_bloc.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/models/bird_mode.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/actions/save_button.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/forms/bird_form.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/forms/edit_bird_form/edit_bird_form.dart';
import 'package:birdbreeder/shared/widgets/navigate_back_button.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

enum BirdActions {
  edit,
  show,
  duplicate,
  delete;

  PopupMenuEntry<BirdActions> getItem(BuildContext context) {
    return switch (this) {
      edit => PopupMenuItem(
          value: BirdActions.edit,
          child: Text(context.l10n.pop_up_menu__bird_edit),
        ),
      show => PopupMenuItem(
          value: BirdActions.show,
          child: Text(context.l10n.pop_up_menu__bird_show),
        ),
      duplicate => PopupMenuItem(
          value: BirdActions.duplicate,
          child: Text(context.l10n.pop_up_menu__bird_duplicate),
        ),
      delete => PopupMenuItem(
          value: BirdActions.delete,
          child: Text(
            context.l10n.pop_up_menu__bird_delete,
            style: const TextStyle(color: Colors.red),
          ),
        )
    };
  }

  Future<void> executeAction(BuildContext context) async {
    return switch (this) {
      edit ||
      show =>
        context.read<BirdBloc>().add(const BirdEvent.toggleEditAndShow()),
      duplicate => context.read<BirdBloc>().add(const BirdEvent.duplicate()),
      delete => {
          await onDelete(
            context,
            () => context.read<BirdBloc>().add(const BirdEvent.delete()),
          ),
        },
    };
  }
}

class BirdScreen extends StatelessWidget {
  const BirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BirdBloc, BirdState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              switch (state.mode) {
                BirdMode.edit => context.l10n.bird__edit,
                BirdMode.create => context.l10n.add_bird__title,
                BirdMode.show => context.l10n.bird__title,
              },
            ),
            leading: NavigateBackButton(
              discardDialogEnabled: context.read<BirdBloc>().isDirty,
            ),
            actions: <Widget>[
              if (context.read<BirdBloc>().isDirty) const SaveButton(),
              if (state.mode == BirdMode.edit || state.mode == BirdMode.show)
                PopupMenuButton<BirdActions>(
                  icon: const Icon(Icons.more_vert),
                  onSelected: (value) async {
                    await value.executeAction(context);
                  },
                  itemBuilder: (BuildContext context) => switch (state.mode) {
                    BirdMode.edit || BirdMode.show => [
                        BirdActions.show.getItem(context),
                        BirdActions.duplicate.getItem(context),
                        BirdActions.delete.getItem(context),
                      ],
                    BirdMode.create => [],
                  },
                ),
            ],
          ),
          body: switch (state.mode) {
            BirdMode.edit || BirdMode.create => const EditBirdForm(),
            BirdMode.show => const BirdForm(),
          },
        );
      },
    );
  }
}
