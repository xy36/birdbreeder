import 'package:freezed_annotation/freezed_annotation.dart';

part 'cage.freezed.dart';

@freezed
class Cage with _$Cage {
  factory Cage({
    required String id,
    required String? name,
    required String? description,
    required int? width,
    required int? height,
    required int? depth,
  }) = _Cage;

  factory Cage.create() => Cage(
        id: '',
        name: null,
        description: null,
        width: null,
        height: null,
        depth: null,
      );
}
