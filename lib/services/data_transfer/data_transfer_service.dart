import 'dart:convert';
import 'dart:io';

import 'package:birdbreeder/core/extensions/mapper_extensions.dart';
import 'package:birdbreeder/models/bird/dtos/bird_dto.dart';
import 'package:birdbreeder/models/bird/entity/bird.dart';
import 'package:birdbreeder/models/breeding/dtos/breeding_pair_dto.dart';
import 'package:birdbreeder/models/breeding/dtos/brood_dto.dart';
import 'package:birdbreeder/models/breeding/entity/breeding_pair.dart';
import 'package:birdbreeder/models/breeding/entity/brood.dart';
import 'package:birdbreeder/models/contact/dtos/contact_dto.dart';
import 'package:birdbreeder/models/contact/entity/contact.dart';
import 'package:birdbreeder/models/egg/dtos/egg_dto.dart';
import 'package:birdbreeder/models/egg/entity/egg.dart';
import 'package:birdbreeder/models/finance/dtos/finance_category_dto.dart';
import 'package:birdbreeder/models/finance/dtos/finance_dto.dart';
import 'package:birdbreeder/models/finance/entity/finance.dart';
import 'package:birdbreeder/models/finance/entity/finance_category.dart';
import 'package:birdbreeder/models/ressources/dto/bird_color_dto.dart';
import 'package:birdbreeder/models/ressources/dto/cage_dto.dart';
import 'package:birdbreeder/models/ressources/dto/species_dto.dart';
import 'package:birdbreeder/models/ressources/entity/bird_color.dart';
import 'package:birdbreeder/models/ressources/entity/cage.dart';
import 'package:birdbreeder/models/ressources/entity/species.dart';
import 'package:birdbreeder/services/data_mode/data_mode.dart';
import 'package:birdbreeder/services/data_mode/data_mode_service.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';
import 'package:birdbreeder/shared/repositories/i_crud_repository.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataTransferService {
  static const _schemaVersion = 1;

  /// Exports all data as a JSON file and opens the share dialog.
  static Future<void> exportData() async {
    final cubit = s1.get<BirdBreederCubit>();
    final resources = cubit.state.birdBreederResources;

    final data = <String, dynamic>{
      'version': _schemaVersion,
      'exportedAt': DateTime.now().toUtc().toIso8601String(),
      'birds': resources.birds.map((e) => e.toDto().toJson()).toList(),
      'breedingPairs':
          resources.breedingPairs.map((e) => e.toDto().toJson()).toList(),
      'broods': resources.broods.map((e) => e.toDto().toJson()).toList(),
      'eggs': resources.eggs.map((e) => e.toDto().toJson()).toList(),
      'contacts': resources.contacts.map((e) => e.toDto().toJson()).toList(),
      'finances': resources.finances.map((e) => e.toDto().toJson()).toList(),
      'financeCategories':
          resources.financesCategories.map((e) => e.toDto().toJson()).toList(),
      'species': resources.species.map((e) => e.toDto().toJson()).toList(),
      'cages': resources.cages.map((e) => e.toDto().toJson()).toList(),
      'birdColors': resources.colors.map((e) => e.toDto().toJson()).toList(),
    };

    final jsonString = const JsonEncoder.withIndent('  ').convert(data);
    final bytes = utf8.encode(jsonString);

    if (Platform.isAndroid || Platform.isIOS) {
      // Mobile: saveFile requires bytes; we write to a temp file then share.
      final tmpDir = await getTemporaryDirectory();
      final file = File(p.join(tmpDir.path, 'birdbreeder_export.json'));
      await file.writeAsBytes(bytes);
      await Share.shareXFiles(
        [XFile(file.path, mimeType: 'application/json')],
        subject: 'BirdBreeder Export',
      );
      return;
    }

    // Desktop: pick a save location directly.
    final outputPath = await FilePicker.platform.saveFile(
      dialogTitle: 'Export speichern',
      fileName: 'birdbreeder_export.json',
      type: FileType.custom,
      allowedExtensions: ['json'],
    );

    if (outputPath == null) return;

    final file = File(outputPath);
    await file.writeAsBytes(bytes);
  }

  /// Imports data from a JSON file. Returns the number of imported items.
  /// Set [clearExisting] to true to delete all existing data before import.
  static Future<int> importData({bool clearExisting = false}) async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['json'],
    );

    if (result == null || result.files.isEmpty) return 0;

    final file = File(result.files.single.path!);
    final jsonString = await file.readAsString();
    final data = jsonDecode(jsonString) as Map<String, dynamic>;

    final version = data['version'] as int? ?? 1;
    if (version > _schemaVersion) {
      throw Exception(
        'Export version $version is not supported. Please update the app.',
      );
    }

    var count = 0;

    if (clearExisting) {
      await _clearAllData();
    }

    // Import order matters for referential integrity:
    // 1. Independent entities first
    count += await _importCollection<Species, SpeciesDto>(
      data['species'] as List<dynamic>? ?? [],
      SpeciesDto.fromJson,
      (dto) => dto.toModel(),
    );
    count += await _importCollection<BirdColor, BirdColorDto>(
      data['birdColors'] as List<dynamic>? ?? [],
      BirdColorDto.fromJson,
      (dto) => dto.toModel(),
    );
    count += await _importCollection<Cage, CageDto>(
      data['cages'] as List<dynamic>? ?? [],
      CageDto.fromJson,
      (dto) => dto.toModel(),
    );
    count += await _importCollection<Contact, ContactDto>(
      data['contacts'] as List<dynamic>? ?? [],
      ContactDto.fromJson,
      (dto) => dto.toModel(),
    );
    count += await _importCollection<FinanceCategory, FinanceCategoryDto>(
      data['financeCategories'] as List<dynamic>? ?? [],
      FinanceCategoryDto.fromJson,
      (dto) => dto.toModel(),
    );

    // 2. Entities with foreign keys
    count += await _importCollection<BreedingPair, BreedingPairDto>(
      data['breedingPairs'] as List<dynamic>? ?? [],
      BreedingPairDto.fromJson,
      (dto) => dto.toModel(),
    );
    count += await _importCollection<Brood, BroodDto>(
      data['broods'] as List<dynamic>? ?? [],
      BroodDto.fromJson,
      (dto) => dto.toModel(),
    );
    count += await _importCollection<Bird, BirdDto>(
      data['birds'] as List<dynamic>? ?? [],
      BirdDto.fromJson,
      (dto) => dto.toModel(),
    );
    count += await _importCollection<Egg, EggDto>(
      data['eggs'] as List<dynamic>? ?? [],
      EggDto.fromJson,
      (dto) => dto.toModel(),
    );
    count += await _importCollection<Finance, FinanceDto>(
      data['finances'] as List<dynamic>? ?? [],
      FinanceDto.fromJson,
      (dto) => dto.toModel(),
    );

    // Reload all data in cubit
    await s1.get<BirdBreederCubit>().initialLoad();

    return count;
  }

  /// Switches from remote (PocketBase) to local (Drift) mode.
  /// Copies all current data into the local database and updates the mode.
  static Future<int> switchToLocal() async {
    final cubit = s1.get<BirdBreederCubit>();
    final resources = cubit.state.birdBreederResources;

    // Serialize current PocketBase data to JSON via DTOs
    final data = <String, dynamic>{
      'birds': resources.birds.map((e) => e.toDto().toJson()).toList(),
      'breedingPairs':
          resources.breedingPairs.map((e) => e.toDto().toJson()).toList(),
      'broods': resources.broods.map((e) => e.toDto().toJson()).toList(),
      'eggs': resources.eggs.map((e) => e.toDto().toJson()).toList(),
      'contacts': resources.contacts.map((e) => e.toDto().toJson()).toList(),
      'finances': resources.finances.map((e) => e.toDto().toJson()).toList(),
      'financeCategories':
          resources.financesCategories.map((e) => e.toDto().toJson()).toList(),
      'species': resources.species.map((e) => e.toDto().toJson()).toList(),
      'cages': resources.cages.map((e) => e.toDto().toJson()).toList(),
      'birdColors': resources.colors.map((e) => e.toDto().toJson()).toList(),
    };

    // Reset DI and re-register with local mode
    await s1.reset();
    await initializeDependencyInjection(DataMode.local);

    // Import all data into the local database
    var count = 0;
    count += await _importCollection<Species, SpeciesDto>(
      data['species'] as List<dynamic>,
      SpeciesDto.fromJson,
      (dto) => dto.toModel(),
    );
    count += await _importCollection<BirdColor, BirdColorDto>(
      data['birdColors'] as List<dynamic>,
      BirdColorDto.fromJson,
      (dto) => dto.toModel(),
    );
    count += await _importCollection<Cage, CageDto>(
      data['cages'] as List<dynamic>,
      CageDto.fromJson,
      (dto) => dto.toModel(),
    );
    count += await _importCollection<Contact, ContactDto>(
      data['contacts'] as List<dynamic>,
      ContactDto.fromJson,
      (dto) => dto.toModel(),
    );
    count += await _importCollection<FinanceCategory, FinanceCategoryDto>(
      data['financeCategories'] as List<dynamic>,
      FinanceCategoryDto.fromJson,
      (dto) => dto.toModel(),
    );
    count += await _importCollection<BreedingPair, BreedingPairDto>(
      data['breedingPairs'] as List<dynamic>,
      BreedingPairDto.fromJson,
      (dto) => dto.toModel(),
    );
    count += await _importCollection<Brood, BroodDto>(
      data['broods'] as List<dynamic>,
      BroodDto.fromJson,
      (dto) => dto.toModel(),
    );
    count += await _importCollection<Bird, BirdDto>(
      data['birds'] as List<dynamic>,
      BirdDto.fromJson,
      (dto) => dto.toModel(),
    );
    count += await _importCollection<Egg, EggDto>(
      data['eggs'] as List<dynamic>,
      EggDto.fromJson,
      (dto) => dto.toModel(),
    );
    count += await _importCollection<Finance, FinanceDto>(
      data['finances'] as List<dynamic>,
      FinanceDto.fromJson,
      (dto) => dto.toModel(),
    );

    // Persist the mode switch
    final prefs = await SharedPreferences.getInstance();
    await DataModeService.setMode(prefs, DataMode.local);

    return count;
  }

  static Future<int> _importCollection<TModel, TDto>(
    List<dynamic> items,
    TDto Function(Map<String, dynamic>) fromJson,
    TModel Function(TDto) toModel,
  ) async {
    final repo = s1.get<ICrudRepository<TModel>>();
    var count = 0;

    for (final item in items) {
      final dto = fromJson(item as Map<String, dynamic>);
      final model = toModel(dto);
      final result = await repo.create(model);
      if (result.isValue) count++;
    }

    return count;
  }

  static Future<void> _clearAllData() async {
    // Delete in reverse dependency order
    await _deleteAll<Finance>();
    await _deleteAll<Egg>();
    await _deleteAll<Bird>();
    await _deleteAll<Brood>();
    await _deleteAll<BreedingPair>();
    await _deleteAll<FinanceCategory>();
    await _deleteAll<Contact>();
    await _deleteAll<Cage>();
    await _deleteAll<BirdColor>();
    await _deleteAll<Species>();
  }

  static Future<void> _deleteAll<TModel>() async {
    final repo = s1.get<ICrudRepository<TModel>>();
    final result = await repo.getAll();
    if (result.isValue) {
      for (final item in result.asValue!.value) {
        // Access id via DTO serialization
        await repo.delete((item as dynamic).id as String);
      }
    }
  }
}
