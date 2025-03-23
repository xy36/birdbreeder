part of 'species_cubit.dart';

@freezed
abstract class SpeciesState with _$SpeciesState {
  const factory SpeciesState.loading() = SpeciesLoading;
  const factory SpeciesState.loaded() = SpeciesLoaded;
  const factory SpeciesState.errorScreen() = SpeciesErrorScreen;
}
