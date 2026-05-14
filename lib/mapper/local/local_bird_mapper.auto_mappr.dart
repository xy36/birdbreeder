// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;
import 'package:birdbreeder/mapper/local/local_bird_mapper.dart' as _i4;
import 'package:birdbreeder/models/bird/entity/bird.dart' as _i2;
import 'package:birdbreeder/services/database/app_database.dart' as _i3;

/// {@template package:birdbreeder/mapper/local/local_bird_mapper.dart}
/// Available mappings:
/// - `Bird` → `Bird`.
/// - `Bird` → `Bird`.
/// {@endtemplate}
class $LocalBirdMapper implements _i1.AutoMapprInterface {
  const $LocalBirdMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:birdbreeder/mapper/local/local_bird_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.Bird>() ||
            sourceTypeOf == _typeOf<_i2.Bird?>()) &&
        (targetTypeOf == _typeOf<_i3.Bird>() ||
            targetTypeOf == _typeOf<_i3.Bird?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.Bird>() ||
            sourceTypeOf == _typeOf<_i3.Bird?>()) &&
        (targetTypeOf == _typeOf<_i2.Bird>() ||
            targetTypeOf == _typeOf<_i2.Bird?>())) {
      return true;
    }
    if (recursive) {
      for (final mappr in _delegates) {
        if (mappr.canConvert<SOURCE, TARGET>()) {
          return true;
        }
      }
    }
    return false;
  }

  /// {@macro AutoMapprInterface:convert}
  /// {@macro package:birdbreeder/mapper/local/local_bird_mapper.dart}
  @override
  TARGET convert<SOURCE, TARGET>(SOURCE? model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _convert(model)!;
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convert(model)!;
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:tryConvert}
  /// {@macro package:birdbreeder/mapper/local/local_bird_mapper.dart}
  @override
  TARGET? tryConvert<SOURCE, TARGET>(
    SOURCE? model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return _safeConvert(
        model,
        onMappingError: onMappingError,
      );
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvert(
          model,
          onMappingError: onMappingError,
        );
      }
    }

    return null;
  }

  /// {@macro AutoMapprInterface:convertIterable}
  /// {@macro package:birdbreeder/mapper/local/local_bird_mapper.dart}
  @override
  Iterable<TARGET> convertIterable<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET>((item) => _convert(item)!);
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertIterable(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Iterable.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:birdbreeder/mapper/local/local_bird_mapper.dart}
  @override
  Iterable<TARGET?> tryConvertIterable<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return model.map<TARGET?>(
          (item) => _safeConvert(item, onMappingError: onMappingError));
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertIterable(
          model,
          onMappingError: onMappingError,
        );
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertList}
  /// {@macro package:birdbreeder/mapper/local/local_bird_mapper.dart}
  @override
  List<TARGET> convertList<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertList(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into List.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:birdbreeder/mapper/local/local_bird_mapper.dart}
  @override
  List<TARGET?> tryConvertList<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(
        model,
        onMappingError: onMappingError,
      ).toList();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertList(
          model,
          onMappingError: onMappingError,
        );
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// {@macro AutoMapprInterface:convertSet}
  /// {@macro package:birdbreeder/mapper/local/local_bird_mapper.dart}
  @override
  Set<TARGET> convertSet<SOURCE, TARGET>(Iterable<SOURCE?> model) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return convertIterable<SOURCE, TARGET>(model).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.convertSet(model);
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  /// For iterable items, converts from SOURCE to TARGET if such mapping is configured, into Set.
  ///
  /// When an item in the source iterable is null, uses `whenSourceIsNull` if defined or null
  ///
  /// {@macro package:birdbreeder/mapper/local/local_bird_mapper.dart}
  @override
  Set<TARGET?> tryConvertSet<SOURCE, TARGET>(
    Iterable<SOURCE?> model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (canConvert<SOURCE, TARGET>(recursive: false)) {
      return tryConvertIterable<SOURCE, TARGET>(
        model,
        onMappingError: onMappingError,
      ).toSet();
    }
    for (final mappr in _delegates) {
      if (mappr.canConvert<SOURCE, TARGET>()) {
        return mappr.tryConvertSet(
          model,
          onMappingError: onMappingError,
        );
      }
    }

    throw Exception('No ${_typeOf<SOURCE>()} -> ${_typeOf<TARGET>()} mapping.');
  }

  TARGET? _convert<SOURCE, TARGET>(
    SOURCE? model, {
    bool canReturnNull = false,
  }) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.Bird>() ||
            sourceTypeOf == _typeOf<_i2.Bird?>()) &&
        (targetTypeOf == _typeOf<_i3.Bird>() ||
            targetTypeOf == _typeOf<_i3.Bird?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$Bird_To__i3$Bird((model as _i2.Bird?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.Bird>() ||
            sourceTypeOf == _typeOf<_i3.Bird?>()) &&
        (targetTypeOf == _typeOf<_i2.Bird>() ||
            targetTypeOf == _typeOf<_i2.Bird?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$Bird_To__i2$Bird((model as _i3.Bird?)) as TARGET);
    }
    throw Exception('No ${model.runtimeType} -> $targetTypeOf mapping.');
  }

  TARGET? _safeConvert<SOURCE, TARGET>(
    SOURCE? model, {
    void Function(Object error, StackTrace stackTrace, SOURCE? source)?
        onMappingError,
  }) {
    if (!useSafeMapping<SOURCE, TARGET>()) {
      return _convert(
        model,
        canReturnNull: true,
      );
    }
    try {
      return _convert(
        model,
        canReturnNull: true,
      );
    } catch (e, s) {
      onMappingError?.call(e, s, model);
      return null;
    }
  }

  /// {@macro AutoMapprInterface:useSafeMapping}
  /// {@macro package:birdbreeder/mapper/local/local_bird_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.Bird _map__i2$Bird_To__i3$Bird(_i2.Bird? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping Bird → Bird failed because Bird was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<Bird, Bird> to handle null values during mapping.');
    }
    return _i3.Bird(
      id: model.id,
      ringnumber: model.ringNumber,
      species: model.speciesId,
      color: model.colorId,
      sex: _i4.LocalBirdMapper.mapSex(model),
      father: model.fatherId,
      mother: model.motherId,
      cage: model.cageId,
      brood: model.broodId,
      laidAt: model.laidAt,
      hatchedAt: model.hatchedAt,
      fledgedAt: model.fledgedAt,
      bornAt: model.bornAt,
      diedAt: model.diedAt,
      saleStatus: _i4.LocalBirdMapper.mapSaleStatus(model),
      listedAt: model.listedAt,
      soldAt: model.soldAt,
      askingPrice: model.askingPrice,
      finalPrice: model.finalPrice,
      boughtAt: model.boughtAt,
      boughtPrice: model.boughtPrice,
      notes: model.notes,
      boughtFrom: model.boughtFromId,
      soldTo: model.soldToId,
      owner: model.ownerId,
      breeder: model.breederId,
      unknownLifecycle: model.unknownLifecycle,
      created: model.created,
      updated: model.updated,
    );
  }

  _i2.Bird _map__i3$Bird_To__i2$Bird(_i3.Bird? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping Bird → Bird failed because Bird was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<Bird, Bird> to handle null values during mapping.');
    }
    return _i2.Bird(
      id: model.id,
      created: model.created,
      updated: model.updated,
      ringNumber: model.ringnumber,
      speciesId: model.species,
      colorId: model.color,
      ownerId: model.owner,
      breederId: model.breeder,
      sex: _i4.LocalBirdMapper.mapSexFromName(model),
      fatherId: model.father,
      motherId: model.mother,
      cageId: model.cage,
      broodId: model.brood,
      laidAt: model.laidAt,
      hatchedAt: model.hatchedAt,
      fledgedAt: model.fledgedAt,
      bornAt: model.bornAt,
      diedAt: model.diedAt,
      saleStatus: _i4.LocalBirdMapper.mapSaleStatusFromName(model),
      listedAt: model.listedAt,
      soldAt: model.soldAt,
      askingPrice: model.askingPrice,
      finalPrice: model.finalPrice,
      boughtAt: model.boughtAt,
      boughtPrice: model.boughtPrice,
      boughtFromId: model.boughtFrom,
      soldToId: model.soldTo,
      unknownLifecycle: model.unknownLifecycle,
      notes: model.notes,
    );
  }
}
