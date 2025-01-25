part of 'species_cubit.dart';

@freezed
abstract class SpeciesState with _$SpeciesState {
  const factory SpeciesState.initial() = SpeciesInitial;
  const factory SpeciesState.loading() = SpeciesLoading;
  const factory SpeciesState.loaded({required List<Species> species}) =
      SpeciesLoaded;
  const factory SpeciesState.errorScreen() = SpeciesErrorScreen;
}
