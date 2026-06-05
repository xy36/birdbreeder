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
    String? notes,
  }) =>
      Species(
        id: '',
        name: name,
        latName: latName,
        imageUrl: imageUrl,
        incubationDays: incubationDays,
        fledgeDays: fledgeDays,
        notes: notes,
      );
}
