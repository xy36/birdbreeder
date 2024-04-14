import 'package:birdbreeder/features/colors/data/models/bird_color_dto.dart';
import 'package:birdbreeder/features/colors/domain/entities/bird_color.dart';
import 'package:birdbreeder/shared/i_mapper.dart';

extension BirdColorDtoMapperExtension on BirdColorDto {
  BirdColor toBirdColor() => BirdColorMapper().mapFrom(this);
}

extension BirdColorMapperExtension on BirdColor {
  BirdColorDto toDto() => BirdColorMapper().mapTo(this);
}

extension BirdColorDtoListMapperExtension on List<BirdColorDto> {
  List<BirdColor> toBirdColorList() => BirdColorMapper().mapFromList(this);
}

extension BirdColorListMapperExtension on List<BirdColor> {
  List<BirdColorDto> toDtoList() => BirdColorMapper().mapToList(this);
}

class BirdColorMapper implements IMapper<BirdColorDto, BirdColor> {
  @override
  BirdColor mapFrom(BirdColorDto object) => BirdColor(
        id: object.id,
        name: object.name,
      );

  @override
  List<BirdColor> mapFromList(List<BirdColorDto> objects) {
    return objects.map(mapFrom).toList();
  }

  @override
  BirdColorDto mapTo(BirdColor object) => BirdColorDto(
        id: object.id,
        name: object.name,
      );

  @override
  List<BirdColorDto> mapToList(List<BirdColor> objects) {
    return objects.map(mapTo).toList();
  }
}
