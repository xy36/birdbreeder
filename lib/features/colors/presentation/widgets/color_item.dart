import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';
import 'package:birdbreeder/features/colors/presentation/cubit/colors_cubit.dart';
import 'package:birdbreeder/features/colors/presentation/widgets/dialogs/add_or_edit_color_dialog.dart';
import 'package:birdbreeder/shared/widgets/utils.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.color});

  final BirdColor color;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(color.name ?? '-'),
        onTap: () async {
          final bloc = context.read<ColorsCubit>();
          await showChildAsDrawerDialog(
            context,
            AddOrEditColorDialog(
              initialColor: color,
              colorsBloc: bloc,
            ),
          );
        },
      ),
    );
  }
}
