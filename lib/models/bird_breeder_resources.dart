import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:birdbreeder/models/breeding/entity/brood.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/models/egg/entity/egg.dart';
import 'package:birdbreeder/models/finance/entity/finance.dart';
import 'package:birdbreeder/models/finance/entity/finance_category.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bird_breeder_resources.freezed.dart';

@freezed
abstract class BirdBreederResources with _$BirdBreederResources {
  const factory BirdBreederResources({
    required List<Bird> birds,
    required List<BreedingPair> breedingPairs,
    required List<Brood> broods,
    required List<Egg> eggs,
    required List<Cage> cages,
    required List<BirdColor> colors,
    required List<Contact> contacts,
    required List<Species> species,
    required List<FinanceCategory> financesCategories,
    required List<Finance> finances,
  }) = _BirdBreederResources;
  const BirdBreederResources._();

  String short() => '(birds:${birds.length}, pairs:${breedingPairs.length}, '
      'broods:${broods.length}, cages:${cages.length}, '
      'colors:${colors.length}, contacts:${contacts.length}, '
      'species:${species.length}, eggs:${eggs.length})';
}
