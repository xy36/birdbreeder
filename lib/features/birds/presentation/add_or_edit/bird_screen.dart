import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/bloc/bird_bloc.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/models/bird_mode.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/actions/delete_button.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/actions/edit_button.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/actions/save_button.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/forms/bird_form.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/forms/edit_bird_form/edit_bird_form.dart';

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
