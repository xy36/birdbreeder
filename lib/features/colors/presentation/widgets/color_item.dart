import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/colors/presentation/widgets/buttons/delete_color_button.dart';
import 'package:birdbreeder/features/colors/presentation/widgets/buttons/edit_color_button.dart';
import 'package:birdbreeder/features/colors/domain/entities/bird_color.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.color});

  final BirdColor color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(color.name ?? '-'),
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
