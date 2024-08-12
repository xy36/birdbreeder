import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';
import 'package:birdbreeder/features/cages/presentation/widgets/buttons/delete_cage_button.dart';
import 'package:birdbreeder/features/cages/presentation/widgets/buttons/edit_cage_button.dart';

class CageItem extends StatelessWidget {
  const CageItem({super.key, required this.cage});

  final Cage cage;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(cage.name ?? '-'),
            Text('${cage.height}m x ${cage.width}m x ${cage.depth}m'),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            EditCageButton(cage: cage),
            DeleteCageButton(cage: cage),
          ],
        ),
        subtitle: Text(cage.description ?? ''),
      ),
    );
  }
}
