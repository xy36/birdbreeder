import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:birdbreeder/features/cages/presentation/widgets/buttons/delete_cage_button.dart';
import 'package:birdbreeder/features/cages/presentation/widgets/buttons/edit_cage_button.dart';

class CageItem extends StatelessWidget {
  const CageItem({super.key, required this.cage});

  final Cage cage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(cage.name ?? '-'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          EditCageButton(cage: cage),
          DeleteCageButton(cage: cage),
        ],
      ),
    );
  }
}
