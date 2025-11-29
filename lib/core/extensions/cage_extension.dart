import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

extension CageListExtension on List<Cage> {
  Cage? findById(String id) {
    return firstOrNullWhere((element) => element.id == id);
  }
}

extension CageExtension on Cage {
  int get usageCount => s1
      .get<BirdBreederCubit>()
      .state
      .birdBreederResources
      .birds
      .where((c) => c.cageId == id)
      .length;
}
