import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/colors/domain/models/bird_color.dart';

extension BirdColorListExtension on List<BirdColor> {
  BirdColor? findById(String id) {
    return firstOrNullWhere((element) => element.id == id);
  }
}
