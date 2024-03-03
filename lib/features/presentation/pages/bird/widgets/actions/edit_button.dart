import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/presentation/pages/bird/bloc/bird_bloc.dart';

class EditButton extends StatelessWidget {
  const EditButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BirdBloc, BirdState>(
      builder: (context, state) {
        return IconButton(
          onPressed: () {
            context.read<BirdBloc>().add(BirdEvent.edit(on: !state.isEdit));
          },
          icon: Icon(state.isEdit ? Icons.edit_off : Icons.edit),
        );
      },
    );
  }
}
