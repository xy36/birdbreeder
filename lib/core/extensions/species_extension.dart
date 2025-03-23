import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/species/domain/models/species.dart';

extension SpeciesListExtension on List<Species> {
  Species? findById(String id) {
    return firstOrNullWhere((element) => element.id == id);
  }
}
