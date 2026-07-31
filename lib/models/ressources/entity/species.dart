import 'package:freezed_annotation/freezed_annotation.dart';

part 'species.freezed.dart';

@freezed
abstract class Species with _$Species {
  factory Species({
    required String id,
    required String? name,
    required String? latName,
    String? imageUrl,
    int? incubationDays,
    int? fledgeDays,

    /// Whether the species is protected or considered endangered.
    @Default(false) bool endangered,
    String? notes,
    DateTime? created,
    DateTime? updated,
  }) = _Species;

  factory Species.create({
    String? name,
    String? latName,
    String? imageUrl,
    int? incubationDays,
    int? fledgeDays,
    bool endangered = false,
    String? notes,
  }) =>
      Species(
        id: '',
        name: name,
        latName: latName,
        imageUrl: imageUrl,
        incubationDays: incubationDays,
        fledgeDays: fledgeDays,
        endangered: endangered,
        notes: notes,
      );
}
