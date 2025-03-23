import 'package:freezed_annotation/freezed_annotation.dart';

part 'species.freezed.dart';

@freezed
class Species with _$Species {
  factory Species({
    required String id,
    required String? name,
    required String? latName,
  }) = _Species;

  factory Species.create() => Species(
        id: '',
        name: null,
        latName: null,
      );
}
