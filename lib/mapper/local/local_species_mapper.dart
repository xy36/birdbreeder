import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:birdbreeder/mapper/local/local_species_mapper.auto_mappr.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/services/database/app_database.dart' as local_db;

@AutoMappr([
  MapType<Species, local_db.SpeciesTableData>(),
  MapType<local_db.SpeciesTableData, Species>(),
])
class LocalSpeciesMapper extends $LocalSpeciesMapper {}
