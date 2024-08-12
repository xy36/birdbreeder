import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/species/domain/models/species.dart';
import 'package:birdbreeder/features/species/presentation/widgets/buttons/delete_species_button.dart';
import 'package:birdbreeder/features/species/presentation/widgets/buttons/edit_species_button.dart';

class SpeciesItem extends StatelessWidget {
  const SpeciesItem({super.key, required this.species});

  final Species species;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(species.name ?? '-'),
        subtitle: Text(species.latName ?? ''),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            EditSpeciesButton(species: species),
            DeleteSpeciesButton(species: species),
          ],
        ),
      ),
    );
  }
}
