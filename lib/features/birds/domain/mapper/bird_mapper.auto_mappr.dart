// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../../../../core/utils/user_helper.dart' as _i5;
import '../../data/dtos/bird_dto.dart' as _i2;
import '../models/bird.dart' as _i3;
import 'bird_mapper.dart' as _i4;

/// {@template package:birdbreeder/features/birds/domain/mapper/bird_mapper.dart}
/// Available mappings:
/// - `BirdDto` → `Bird`.
/// - `Bird` → `BirdDto`.
/// {@endtemplate}
class $BirdMapper implements _i1.AutoMapprInterface {
  const $BirdMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:birdbreeder/features/birds/domain/mapper/bird_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.BirdDto>() ||
            sourceTypeOf == _typeOf<_i2.BirdDto?>()) &&
        (targetTypeOf == _typeOf<_i3.Bird>() ||
            targetTypeOf == _typeOf<_i3.Bird?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.Bird>() ||
            sourceTypeOf == _typeOf<_i3.Bird?>()) &&
        (targetTypeOf == _typeOf<_i2.BirdDto>() ||
            targetTypeOf == _typeOf<_i2.BirdDto?>())) {
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
  /// {@macro package:birdbreeder/features/birds/domain/mapper/bird_mapper.dart}
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
  /// {@macro package:birdbreeder/features/birds/domain/mapper/bird_mapper.dart}
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
  /// {@macro package:birdbreeder/features/birds/domain/mapper/bird_mapper.dart}
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
  /// {@macro package:birdbreeder/features/birds/domain/mapper/bird_mapper.dart}
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
  /// {@macro package:birdbreeder/features/birds/domain/mapper/bird_mapper.dart}
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
  /// {@macro package:birdbreeder/features/birds/domain/mapper/bird_mapper.dart}
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
  /// {@macro package:birdbreeder/features/birds/domain/mapper/bird_mapper.dart}
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
  /// {@macro package:birdbreeder/features/birds/domain/mapper/bird_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.BirdDto>() ||
            sourceTypeOf == _typeOf<_i2.BirdDto?>()) &&
        (targetTypeOf == _typeOf<_i3.Bird>() ||
            targetTypeOf == _typeOf<_i3.Bird?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$BirdDto_To__i3$Bird((model as _i2.BirdDto?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.Bird>() ||
            sourceTypeOf == _typeOf<_i3.Bird?>()) &&
        (targetTypeOf == _typeOf<_i2.BirdDto>() ||
            targetTypeOf == _typeOf<_i2.BirdDto?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$Bird_To__i2$BirdDto((model as _i3.Bird?)) as TARGET);
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
  /// {@macro package:birdbreeder/features/birds/domain/mapper/bird_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.Bird _map__i2$BirdDto_To__i3$Bird(_i2.BirdDto? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping BirdDto → Bird failed because BirdDto was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<BirdDto, Bird> to handle null values during mapping.');
    }
    return _i3.Bird(
      id: model.id,
      created: model.created,
      updated: model.updated,
      ringnumber: model.ringnumber,
      born: model.born,
      died: model.died,
      bought: model.bought,
      sell: model.sell,
      boughtPrice: model.boughtPrice,
      sellPriceOffer: model.sellPriceOffer,
      sellPriceReal: model.sellPriceReal,
      species: _i4.BirdMapper.convertSpeciesFromDto(model),
      color: _i4.BirdMapper.convertColorFromDto(model),
      cage: _i4.BirdMapper.convertCageFromDto(model),
      father: _i4.BirdMapper.convertFatherFromDto(model),
      mother: _i4.BirdMapper.convertMotherFromDto(model),
      sex: model.sex,
      sold: model.sold,
      children: model.children,
    );
  }

  _i2.BirdDto _map__i3$Bird_To__i2$BirdDto(_i3.Bird? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping Bird → BirdDto failed because Bird was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<Bird, BirdDto> to handle null values during mapping.');
    }
    return _i2.BirdDto(
      id: model.id,
      created: model.created,
      updated: model.updated,
      ringnumber: model.ringnumber,
      born: model.born,
      died: model.died,
      sell: model.sell,
      bought: model.bought,
      species: _i4.BirdMapper.convertSpeciesFromModel(model),
      color: _i4.BirdMapper.convertColorFromModel(model),
      cage: _i4.BirdMapper.convertCageFromModel(model),
      father: _i4.BirdMapper.convertFatherFromModel(model),
      mother: _i4.BirdMapper.convertMotherFromModel(model),
      boughtPrice: model.boughtPrice,
      sellPriceOffer: model.sellPriceOffer,
      sellPriceReal: model.sellPriceReal,
      sex: model.sex,
      sold: model.sold,
      user: _i5.UserHelper.insertUser(),
      children: model.children,
    );
  }
}
