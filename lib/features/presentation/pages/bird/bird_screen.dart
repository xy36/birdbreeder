import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/presentation/pages/bird/bloc/bird_bloc.dart';
import 'package:birdbreeder/features/presentation/pages/bird/widgets/actions/delete_button.dart';
import 'package:birdbreeder/features/presentation/pages/bird/widgets/actions/edit_button.dart';
import 'package:birdbreeder/features/presentation/pages/bird/widgets/actions/save_button.dart';
import 'package:birdbreeder/features/presentation/pages/bird/widgets/forms/bird_form.dart';
import 'package:birdbreeder/features/presentation/pages/bird/widgets/forms/edit_bird_form.dart';

class BirdScreen extends StatelessWidget {
  const BirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BirdBloc, BirdState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              state.isEdit ? context.l10n.bird__edit : context.l10n.bird__title,
            ),
            actions: [
              if (state.isEdit) ...[
                const SaveButton(),
                const DeleteButton(),
              ],
              const EditButton(),
            ],
          ),
          body: state.isEdit ? const EditBirdForm() : const BirdForm(),
        );
      },
    );
  }
}
