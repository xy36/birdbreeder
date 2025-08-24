import 'package:birdbreeder/features/birds/domain/models/bird.dart';
import 'package:birdbreeder/features/breedings/domain/models/breeding_pair.dart';
import 'package:birdbreeder/features/breedings/domain/models/brood.dart';
import 'package:birdbreeder/features/contacts/domain/models/contact.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/bird_color.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/cage.dart';
import 'package:birdbreeder/features/ressourcen_center/domain/models/species.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_breeder_resources.freezed.dart';

@freezed
class BirdBreederResources with _$BirdBreederResources {
  const factory BirdBreederResources({
    required List<Bird> birds,
    required List<BreedingPair> breedingPairs,
    required List<Brood> broods,
    required List<Cage> cages,
    required List<BirdColor> colors,
    required List<Contact> contacts,
    required List<Species> species,
  }) = _BirdBreederResources;
  const BirdBreederResources._();

  String short() => '(birds:${birds.length}, pairs:${breedingPairs.length}, '
      'broods:${broods.length}, cages:${cages.length}, '
      'colors:${colors.length}, contacts:${contacts.length}, '
      'species:${species.length})';
}
