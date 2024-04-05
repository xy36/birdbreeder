import 'package:birdbreeder/features/domain/i_cages_repository.dart';
import 'package:birdbreeder/features/domain/i_repository.dart';
import 'package:birdbreeder/features/domain/models/dtos/dtos.dart';
import 'package:birdbreeder/features/domain/models/entities/entities.dart';
import 'package:birdbreeder/injection.dart';

extension BirdDtoMapperExtension on BirdDto {
  Future<Bird> toBird() async => BirdMapper().mapFrom(this);
}

extension BirdMapperExtension on Bird {
  BirdDto toDto() => BirdMapper().mapTo(this);
}

extension BirdDtoListMapperExtension on List<BirdDto> {
  Future<List<Bird>> toBirdList() async => BirdMapper().mapFromList(this);
}

extension BirdListMapperExtension on List<Bird> {
  List<BirdDto> toDtoList() => BirdMapper().mapToList(this);
}

class BirdMapper {
  Future<Bird> mapFrom(BirdDto object) async {
    final species = object.speciesId != null
        ? (await s1.get<IRepository>().getSpeciesById(object.speciesId!))
            .asValue
            ?.value
        : null;

    final color = object.colorId != null
        ? (await s1.get<IRepository>().getColorById(object.colorId!))
            .asValue
            ?.value
        : null;

    final cage = object.cageId != null
        ? (await s1.get<ICagesRepository>().getById(object.cageId!))
            .asValue
            ?.value
        : null;

    return Bird(
      id: object.id,
      ringnumber: object.ringnumber,
      cage: cage,
      color: color,
      species: species,
      sex: object.sex,
      origin: object.origin,
      bornDate: object.bornDate,
      boughtDate: object.boughtDate,
      boughtPrice: object.boughtPrice,
      diedDate: object.diedDate,
      fatherRingnumber: object.fatherRingnumber,
      motherRingnumber: object.motherRingnumber,
      partnerRingnumber: object.partnerRingnumber,
      isForSale: object.isForSale,
      sellDate: object.sellDate,
      sellPriceOffer: object.sellPriceOffer,
      sellPriceReal: object.sellPriceReal,
    );
  }

  Future<List<Bird>> mapFromList(List<BirdDto> objects) async {
    return Future.wait(objects.map((dto) async => await mapFrom(dto)).toList());
  }

  BirdDto mapTo(Bird object) => BirdDto(
        id: object.id,
        ringnumber: object.ringnumber,
        cageId: object.cage?.id,
        speciesId: object.species?.id,
        colorId: object.color?.id,
        bornDate: object.bornDate,
        boughtDate: object.boughtDate,
        boughtPrice: object.boughtPrice,
        diedDate: object.diedDate,
        fatherRingnumber: object.fatherRingnumber,
        motherRingnumber: object.motherRingnumber,
        partnerRingnumber: object.partnerRingnumber,
        isForSale: object.isForSale,
        sellDate: object.sellDate,
        sellPriceOffer: object.sellPriceOffer,
        sellPriceReal: object.sellPriceReal,
        origin: object.origin,
        sex: object.sex,
      );

  List<BirdDto> mapToList(List<Bird> objects) {
    return objects.map(mapTo).toList();
  }
}
