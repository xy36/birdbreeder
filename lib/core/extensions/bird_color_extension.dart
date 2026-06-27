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

  /// The color's swatch parsed from its [hex] string, or null when unset or
  /// malformed.
  Color? get swatch {
    final value = hex?.replaceAll('#', '').trim();
    if (value == null || value.isEmpty) return null;
    final normalized = value.length == 6 ? 'FF$value' : value;
    final parsed = int.tryParse(normalized, radix: 16);
    return parsed == null ? null : Color(parsed);
  }
}
