import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/models/bird_mode.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/forms/edit_bird_form/edit_bird_form.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

enum BirdActions {
  duplicate,
  delete;

  PopupMenuEntry<BirdActions> getItem(BuildContext context) {
    return switch (this) {
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
      duplicate => await context.read<BirdCubit>().duplicate(),
      delete => {
          await onDelete(
            context,
            () async {
              await context.read<BirdCubit>().delete();
            },
          ),
        },
    };
  }
}

class BirdScreen extends StatelessWidget {
  const BirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BirdCubit, BirdState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              switch (state.mode) {
                BirdMode.edit => context.l10n.bird__edit,
                BirdMode.create => context.l10n.bird__add_bird,
              },
            ),
            actions: <Widget>[
              if (state.mode == BirdMode.edit)
                PopupMenuButton<BirdActions>(
                  icon: const Icon(Icons.more_vert),
                  onSelected: (value) async {
                    await value.executeAction(context);
                  },
                  itemBuilder: (BuildContext context) => switch (state.mode) {
                    BirdMode.edit => [
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
          },
        );
      },
    );
  }
}
