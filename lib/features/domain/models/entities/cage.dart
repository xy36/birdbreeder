import 'package:freezed_annotation/freezed_annotation.dart';

part 'cage.freezed.dart';

@freezed
class Cage with _$Cage {
  factory Cage({
    required String? id,
    required String? name,
  }) = _Cage;
}
