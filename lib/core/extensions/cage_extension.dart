import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/cages/domain/models/cage.dart';

extension CageListExtension on List<Cage> {
  Cage? findById(String id) {
    return firstOrNullWhere((element) => element.id == id);
  }
}
