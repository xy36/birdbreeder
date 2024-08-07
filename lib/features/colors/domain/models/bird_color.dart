import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_color.freezed.dart';

@freezed
class BirdColor with _$BirdColor {
  factory BirdColor({
    required String id,
    String? name,
  }) = _BirdColor;

  factory BirdColor.create() => BirdColor(
        id: '',
      );
}
