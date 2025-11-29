import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/bird_fields.dart';
import 'package:birdbreeder/models/bird/bird_actions.dart';
import 'package:birdbreeder/models/bird/bird_mode.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:birdbreeder/shared/widgets/bird_breeder_wrapper.dart';
import 'package:birdbreeder/shared/widgets/navigate_back_button.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

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
                      BirdMode.edit => AppIcons.save,
                      BirdMode.create => AppIcons.accept,
                    },
                  ),
                  onPressed: () async {
                    await context.read<BirdCubit>().save();
                  },
                ),
              if (state.mode == BirdMode.edit)
                moreMenu<Bird>(
                  context,
                  state.bird,
                  [BirdActions.duplicate, BirdActions.delete].map((action) {
                    return (
                      icon: action.icon,
                      label: action.getLabel(context),
                      action: action.executeAction,
                    );
                  }).toList(),
                ),
            ],
          ),
          body: BirdBreederWrapper(
            child: state.maybeWhen(
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
          ),
        );
      },
    );
  }
}
