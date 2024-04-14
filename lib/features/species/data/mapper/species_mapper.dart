import 'package:birdbreeder/features/species/data/models/species_dto.dart';
import 'package:birdbreeder/features/species/domain/entities/species.dart';
import 'package:birdbreeder/shared/i_mapper.dart';

extension SpeciesDtoMapperExtension on SpeciesDto {
  Species toSpecies() => SpeciesMapper().mapFrom(this);
}

extension SpeciesMapperExtension on Species {
  SpeciesDto toDto() => SpeciesMapper().mapTo(this);
}

extension SpeciesDtoListMapperExtension on List<SpeciesDto> {
  List<Species> toSpeciesList() => SpeciesMapper().mapFromList(this);
}

extension SpeciesListMapperExtension on List<Species> {
  List<SpeciesDto> toDtoList() => SpeciesMapper().mapToList(this);
}

class SpeciesMapper implements IMapper<SpeciesDto, Species> {
  @override
  Species mapFrom(SpeciesDto object) => Species(
        id: object.id,
        name: object.name,
        latName: object.latName,
      );

  @override
  List<Species> mapFromList(List<SpeciesDto> objects) {
    return objects.map(mapFrom).toList();
  }

  @override
  SpeciesDto mapTo(Species object) => SpeciesDto(
        id: object.id,
        name: object.name,
        latName: object.latName,
      );

  @override
  List<SpeciesDto> mapToList(List<Species> objects) {
    return objects.map(mapTo).toList();
  }
}
