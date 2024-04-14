import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_color.freezed.dart';

@freezed
class BirdColor with _$BirdColor {
  factory BirdColor({
    String? id,
    String? name,
  }) = _BirdColor;
}
