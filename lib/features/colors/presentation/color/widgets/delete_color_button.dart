import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';
import 'package:birdbreeder/features/colors/presentation/color/cubit/color_cubit.dart';
import 'package:birdbreeder/shared/widgets/dialogs/delete_dialog.dart';

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
        final bloc = context.read<ColorCubit>();
        await showDialog<String>(
          context: context,
          builder: (context) => DeleteDialog(
            title: context.l10n.colors__delete_color,
            onDelete: () => bloc.delete(color),
          ),
        );
        // ignore: use_build_context_synchronously
        Navigator.of(context).pop();
      },
    );
  }
}
