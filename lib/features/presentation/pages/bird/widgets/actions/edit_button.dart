import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/presentation/pages/bird/bloc/bird_bloc.dart';
import 'package:birdbreeder/features/presentation/pages/bird/models/bird_mode.dart';

class EditButton extends StatelessWidget {
  const EditButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BirdBloc, BirdState>(
      builder: (context, state) {
        final icon = state.mode == BirdMode.edit ? Icons.edit_off : Icons.edit;
        return IconButton(
          onPressed: () {
            context.read<BirdBloc>().add(const BirdEvent.toggleEditAndShow());
          },
          icon: Icon(icon),
        );
      },
    );
  }
}
