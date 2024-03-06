import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/domain/models/entities/bird_color.dart';
import 'package:birdbreeder/features/presentation/pages/colors/bloc/colors_bloc.dart';
import 'package:birdbreeder/features/presentation/pages/colors/widgets/dialogs/delete_color_dialog.dart';

class DeleteColorButton extends StatelessWidget {
  const DeleteColorButton({
    super.key,
    required this.color,
  });

  final BirdColor color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.delete),
      onPressed: () async {
        final bloc = context.read<ColorsBloc>();
        await showDialog<String>(
          context: context,
          builder: (context) => DeleteColorDialog(
            color: color,
            onDelete: (color) {
              bloc.add(DeleteColor(color));
            },
          ),
        );
      },
    );
  }
}
