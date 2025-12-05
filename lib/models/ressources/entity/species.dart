import 'package:freezed_annotation/freezed_annotation.dart';

part 'species.freezed.dart';

@freezed
abstract class Species with _$Species {
  factory Species({
    required String id,
    required String? name,
    required String? latName,
    DateTime? created,
    DateTime? updated,
  }) = _Species;

  factory Species.create({String? name, String? latName}) => Species(
        id: '',
        name: name,
        latName: latName,
      );
}
