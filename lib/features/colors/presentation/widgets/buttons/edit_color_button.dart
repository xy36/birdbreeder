import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';
import 'package:birdbreeder/features/colors/presentation/bloc/colors_bloc.dart';
import 'package:birdbreeder/features/colors/presentation/widgets/dialogs/add_or_edit_color_dialog.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

class EditColorButton extends StatelessWidget {
  const EditColorButton({
    super.key,
    required this.color,
  });

  final BirdColor color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.edit),
      onPressed: () async {
        final bloc = context.read<ColorsBloc>();
        await showChildAsDrawerDialog(
          context,
          AddOrEditColorDialog(
            color: color,
            onAdd: (color) {
              bloc.add(EditColor(color));
            },
          ),
        );
      },
    );
  }
}
