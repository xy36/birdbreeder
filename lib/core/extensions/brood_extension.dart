import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/breedings/domain/models/brood.dart';

extension BroodListExtension on List<Brood> {
  Brood? findById(String id) {
    return firstOrNullWhere((element) => element.id == id);
  }
}
