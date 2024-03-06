import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/domain/models/entities/bird_color.dart';
import 'package:birdbreeder/features/presentation/pages/colors/widgets/buttons/delete_color_button.dart';
import 'package:birdbreeder/features/presentation/pages/colors/widgets/buttons/edit_color_button.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.color});

  final BirdColor color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(color.name!),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          EditColorButton(color: color),
          DeleteColorButton(color: color),
        ],
      ),
    );
  }
}
