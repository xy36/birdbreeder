import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cage.freezed.dart';

enum CageType {
  aviary,
  breedingBox,
  quarantine;

  String getDisplayName(BuildContext context) {
    switch (this) {
      case CageType.aviary:
        return 'Voliere';
      case CageType.breedingBox:
        return 'Zuchtbox';
      case CageType.quarantine:
        return 'Quarantäne';
    }
  }
}

@freezed
abstract class Cage with _$Cage {
  factory Cage({
    required CageId id,
    required String? name,
    required String? description,
    required int? width,
    required int? height,
    required int? depth,
    CageType? type,
    String? location,
    int? capacity,
    String? notes,
    DateTime? created,
    DateTime? updated,
  }) = _Cage;

  factory Cage.create({
    String? name,
    String? description,
    int? width,
    int? height,
    int? depth,
    CageType? type,
    String? location,
    int capacity = 2,
    String? notes,
  }) =>
      Cage(
        id: '',
        name: name,
        description: description,
        width: width,
        height: height,
        depth: depth,
        type: type,
        location: location,
        capacity: capacity,
        notes: notes,
      );
}
