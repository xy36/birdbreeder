import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/presentation/pages/bird/bloc/bird_bloc.dart';
import 'package:birdbreeder/features/presentation/pages/bird/models/bird_mode.dart';
import 'package:birdbreeder/features/presentation/pages/bird/widgets/actions/delete_button.dart';
import 'package:birdbreeder/features/presentation/pages/bird/widgets/actions/edit_button.dart';
import 'package:birdbreeder/features/presentation/pages/bird/widgets/actions/save_button.dart';
import 'package:birdbreeder/features/presentation/pages/bird/widgets/forms/bird_form.dart';
import 'package:birdbreeder/features/presentation/pages/bird/widgets/forms/edit_bird_form/edit_bird_form.dart';

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
            actions: [
              ...switch (state.mode) {
                BirdMode.edit => [
                    const SaveButton(),
                    const DeleteButton(),
                    const EditButton(),
                  ],
                BirdMode.create => [
                    const SaveButton(),
                  ],
                BirdMode.show => [
                    const EditButton(),
                  ],
              },
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
