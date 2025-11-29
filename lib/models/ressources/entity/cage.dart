import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cage.freezed.dart';

@freezed
abstract class Cage with _$Cage {
  factory Cage({
    required CageId id,
    required String? name,
    required String? description,
    required int? width,
    required int? height,
    required int? depth,
  }) = _Cage;

  factory Cage.create({
    String? name,
    String? description,
    int? width,
    int? height,
    int? depth,
  }) =>
      Cage(
        id: '',
        name: name,
        description: description,
        width: width,
        height: height,
        depth: depth,
      );
}
