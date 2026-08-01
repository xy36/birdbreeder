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

    /// Whether keeping this species has to be reported to the authorities.
    ///
    /// Independent of [endangered]: the two often coincide but are decided
    /// by different rules, so the breeder sets each one.
    @Default(false) bool reportable,
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
    bool reportable = false,
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
        reportable: reportable,
        notes: notes,
      );
}
