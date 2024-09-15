import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/cubit/bird_cubit.dart';
import 'package:birdbreeder/features/birds/presentation/add_or_edit/widgets/forms/edit_bird_form/bird_fields.dart';

class EditBirdForm extends StatelessWidget {
  const EditBirdForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BirdCubit, BirdState>(
      builder: (context, state) {
        return state.maybeWhen(
          loaded: (bird, isEdit, _) {
            return BirdFields(bird: bird);
          },
          loading: (bird, isEdit, _) {
            return const Center(child: CircularProgressIndicator());
          },
          orElse: () {
            return const Center(child: Text('Something went wrong!'));
          },
        );
      },
    );
  }
}
