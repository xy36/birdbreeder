import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_color.freezed.dart';

@freezed
abstract class BirdColor with _$BirdColor {
  factory BirdColor({
    required String id,
    required String? name,
    DateTime? created,
    DateTime? updated,
  }) = _BirdColor;

  factory BirdColor.create({
    String? name,
  }) =>
      BirdColor(
        id: '',
        name: name,
      );
}
