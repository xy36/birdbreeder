import '../models/dtos/dtos.dart';
import '../models/entities/entities.dart';
import 'i_mapper.dart';

extension CageDtoMapperExtension on CageDto {
  Cage toCage() => CageMapper().mapFrom(this);
}

extension CageMapperExtension on Cage {
  CageDto toDto() => CageMapper().mapTo(this);
}

extension CageDtoListMapperExtension on List<CageDto> {
  List<Cage> toCageList() => CageMapper().mapFromList(this);
}

extension CageListMapperExtension on List<Cage> {
  List<CageDto> toDtoList() => CageMapper().mapToList(this);
}

class CageMapper implements IMapper<CageDto, Cage> {
  @override
  Cage mapFrom(CageDto object) => Cage(
        id: object.id,
        name: object.name,
      );

  @override
  List<Cage> mapFromList(List<CageDto> objects) {
    return objects.map(mapFrom).toList();
  }

  @override
  CageDto mapTo(Cage object) => CageDto(
        id: object.id,
        name: object.name,
      );

  @override
  List<CageDto> mapToList(List<Cage> objects) {
    return objects.map(mapTo).toList();
  }
}
