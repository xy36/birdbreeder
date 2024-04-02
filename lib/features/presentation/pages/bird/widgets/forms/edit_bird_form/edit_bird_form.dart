import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/presentation/pages/bird/bloc/bird_bloc.dart';
import 'package:birdbreeder/features/presentation/pages/bird/widgets/forms/edit_bird_form/bird_fields.dart';

class EditBirdForm extends StatelessWidget {
  const EditBirdForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<BirdBloc, BirdState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (bird, isEdit, _) {
              return BirdFields(bird: bird);
            },
            loading: (bird, isEdit, _) {
              return const Center(child: CircularProgressIndicator());
            },
            orElse: () {
              return Container();
            },
          );
        },
      ),
    );
  }
}
