import 'package:freezed_annotation/freezed_annotation.dart';

part 'cage.freezed.dart';

@freezed
class Cage with _$Cage {
  factory Cage({
    required String id,
    String? name,
    String? description,
    int? width,
    int? height,
    int? depth,
  }) = _Cage;

  factory Cage.create() => Cage(
        id: '',
      );
}
