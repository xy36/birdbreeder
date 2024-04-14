part of 'species_bloc.dart';

@freezed
abstract class SpeciesState with _$SpeciesState {
  const factory SpeciesState.initial() = Initial;
  const factory SpeciesState.loading() = Loading;
  const factory SpeciesState.loaded({required List<Species> species}) = Loaded;
  const factory SpeciesState.error() = Error;
}
