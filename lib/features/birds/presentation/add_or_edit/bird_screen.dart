import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/models/bird_mode.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields/bird_fields.dart';
import 'package:birdbreeder/shared/widgets/dialogs/delete_dialog.dart';
import 'package:birdbreeder/shared/widgets/navigate_back_button.dart';

enum BirdActions {
  duplicate,
  delete;

  PopupMenuEntry<BirdActions> getItem(BuildContext context) {
    return switch (this) {
      duplicate => PopupMenuItem(
          value: BirdActions.duplicate,
          child: Text(context.tr.pop_up_menu.bird.duplicate),
        ),
      delete => PopupMenuItem(
          value: BirdActions.delete,
          child: Text(
            context.tr.pop_up_menu.bird.delete,
            style: const TextStyle(color: Colors.red),
          ),
        )
    };
  }

  Future<void> executeAction(BuildContext context) async {
    return switch (this) {
      duplicate => await context.read<BirdCubit>().duplicate(),
      delete => {
          if (context.mounted)
            await DeleteDialog.show(
              context: context,
              title: context.tr.bird.delete,
              onDelete: () => context.read<BirdCubit>().delete(),
            ),
        }
    };
  }
}

final neutralFocus = FocusNode();

class BirdScreen extends StatelessWidget {
  const BirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BirdCubit, BirdState>(
      builder: (context, state) {
        final isDirty = context.read<BirdCubit>().initialBird != state.bird;
        return Scaffold(
          appBar: AppBar(
            title: Text(
              switch (state.mode) {
                BirdMode.edit => context.tr.bird.edit,
                BirdMode.create => context.tr.bird.add,
              },
            ),
            centerTitle: false,
            leading: NavigateBackButton(discardDialogEnabled: isDirty),
            actions: <Widget>[
              if (isDirty)
                IconButton(
                  icon: Icon(
                    switch (state.mode) {
                      BirdMode.edit => Icons.save,
                      BirdMode.create => Icons.check,
                    },
                  ),
                  onPressed: () async {
                    await context.read<BirdCubit>().save();
                  },
                ),
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
          body: state.maybeWhen(
            loaded: (bird, isEdit) {
              return BirdFields(bird: bird);
            },
            loading: (bird, isEdit) {
              return const Center(child: CircularProgressIndicator());
            },
            orElse: () {
              return Center(
                child: Text(context.tr.common.something_went_wrong),
              );
            },
          ),
        );
      },
    );
  }
}
