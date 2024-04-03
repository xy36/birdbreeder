import 'package:birdbreeder/features/domain/mapper/i_mapper.dart';
import 'package:birdbreeder/features/domain/models/dtos/dtos.dart';
import 'package:birdbreeder/features/domain/models/entities/entities.dart';

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
        description: object.description,
        width: object.width,
        height: object.height,
        depth: object.depth,
      );

  @override
  List<Cage> mapFromList(List<CageDto> objects) {
    return objects.map(mapFrom).toList();
  }

  @override
  CageDto mapTo(Cage object) => CageDto(
        id: object.id,
        name: object.name,
        description: object.description,
        width: object.width,
        height: object.height,
        depth: object.depth,
      );

  @override
  List<CageDto> mapToList(List<Cage> objects) {
    return objects.map(mapTo).toList();
  }
}
