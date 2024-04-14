part of 'species_bloc.dart';

@freezed
class SpeciesEvent with _$SpeciesEvent {
  const factory SpeciesEvent.load() = Load;
  const factory SpeciesEvent.addSpecies(Species species) = AddSpecies;
  const factory SpeciesEvent.deleteSpecies(Species species) = DeleteSpecies;
  const factory SpeciesEvent.editSpecies(Species species) = EditSpecies;
}
