import 'package:freezed_annotation/freezed_annotation.dart';

part 'species.freezed.dart';

@freezed
class Species with _$Species {
  factory Species({
    required String id,
    String? name,
    String? latName,
  }) = _Species;

  factory Species.create() => Species(
        id: '',
      );
}
