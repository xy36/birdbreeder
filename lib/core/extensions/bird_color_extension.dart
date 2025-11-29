import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

extension BirdColorListExtension on List<BirdColor> {
  BirdColor? findById(String id) {
    return firstOrNullWhere((element) => element.id == id);
  }
}

extension BirdColorExtension on BirdColor {
  int get usageCount => s1
      .get<BirdBreederCubit>()
      .state
      .birdBreederResources
      .birds
      .where((c) => c.colorId == id)
      .length;
}
