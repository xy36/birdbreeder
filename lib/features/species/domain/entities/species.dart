import 'package:freezed_annotation/freezed_annotation.dart';

part 'species.freezed.dart';

@freezed
class Species with _$Species {
  factory Species({
    String? id,
    String? name,
    String? latName,
  }) = _Species;
}
