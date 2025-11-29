import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

extension SpeciesListExtension on List<Species> {
  Species? findById(String id) {
    return firstOrNullWhere((element) => element.id == id);
  }
}

extension SpeciesExtension on Species {
  int get usageCount => s1
      .get<BirdBreederCubit>()
      .state
      .birdBreederResources
      .birds
      .where((s) => s.speciesId == id)
      .length;
}

enum ChipType {
  cage,
  species,
  color,
  ;
}

class GenericChip extends StatelessWidget {
  const GenericChip({required this.label, required this.type, super.key});

  final String label;

  final ChipType type;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      label: Text(label),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    );
  }
}
