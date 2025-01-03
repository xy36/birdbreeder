import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/colors/presentation/cubit/colors_cubit.dart';
import 'package:birdbreeder/features/colors/presentation/widgets/dialogs/add_or_edit_color_dialog.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

class AddNewColorButton extends StatefulWidget {
  const AddNewColorButton({super.key});

  @override
  State<AddNewColorButton> createState() => _AddNewColorButtonState();
}

class _AddNewColorButtonState extends State<AddNewColorButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        final bloc = context.read<ColorsCubit>();
        await showChildAsDrawerDialog(
          context,
          AddOrEditColorDialog(
            colorsBloc: bloc,
          ),
        );
      },
      child: const Icon(Icons.add),
    );
  }
}
