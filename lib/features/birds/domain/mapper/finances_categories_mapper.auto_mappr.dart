// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../../data/dtos/finances_categories_dto.dart' as _i3;
import '../models/finances_categories.dart' as _i2;

/// {@template package:birdbreeder/features/birds/domain/mapper/finances_categories_mapper.dart}
/// Available mappings:
/// - `FinancesCategories` → `FinancesCategoriesDto`.
/// - `FinancesCategoriesDto` → `FinancesCategories`.
/// {@endtemplate}
class $FinancesCategoriesMapper implements _i1.AutoMapprInterface {
  const $FinancesCategoriesMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:birdbreeder/features/birds/domain/mapper/finances_categories_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.FinancesCategories>() ||
            sourceTypeOf == _typeOf<_i2.FinancesCategories?>()) &&
        (targetTypeOf == _typeOf<_i3.FinancesCategoriesDto>() ||
            targetTypeOf == _typeOf<_i3.FinancesCategoriesDto?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.FinancesCategoriesDto>() ||
            sourceTypeOf == _typeOf<_i3.FinancesCategoriesDto?>()) &&
        (targetTypeOf == _typeOf<_i2.FinancesCategories>() ||
            targetTypeOf == _typeOf<_i2.FinancesCategories?>())) {
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
  /// {@macro package:birdbreeder/features/birds/domain/mapper/finances_categories_mapper.dart}
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
  /// {@macro package:birdbreeder/features/birds/domain/mapper/finances_categories_mapper.dart}
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
  /// {@macro package:birdbreeder/features/birds/domain/mapper/finances_categories_mapper.dart}
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
  /// {@macro package:birdbreeder/features/birds/domain/mapper/finances_categories_mapper.dart}
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
  /// {@macro package:birdbreeder/features/birds/domain/mapper/finances_categories_mapper.dart}
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
  /// {@macro package:birdbreeder/features/birds/domain/mapper/finances_categories_mapper.dart}
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
  /// {@macro package:birdbreeder/features/birds/domain/mapper/finances_categories_mapper.dart}
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
  /// {@macro package:birdbreeder/features/birds/domain/mapper/finances_categories_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.FinancesCategories>() ||
            sourceTypeOf == _typeOf<_i2.FinancesCategories?>()) &&
        (targetTypeOf == _typeOf<_i3.FinancesCategoriesDto>() ||
            targetTypeOf == _typeOf<_i3.FinancesCategoriesDto?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$FinancesCategories_To__i3$FinancesCategoriesDto(
          (model as _i2.FinancesCategories?)) as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.FinancesCategoriesDto>() ||
            sourceTypeOf == _typeOf<_i3.FinancesCategoriesDto?>()) &&
        (targetTypeOf == _typeOf<_i2.FinancesCategories>() ||
            targetTypeOf == _typeOf<_i2.FinancesCategories?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$FinancesCategoriesDto_To__i2$FinancesCategories(
          (model as _i3.FinancesCategoriesDto?)) as TARGET);
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
  /// {@macro package:birdbreeder/features/birds/domain/mapper/finances_categories_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.FinancesCategoriesDto
      _map__i2$FinancesCategories_To__i3$FinancesCategoriesDto(
          _i2.FinancesCategories? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping FinancesCategories → FinancesCategoriesDto failed because FinancesCategories was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<FinancesCategories, FinancesCategoriesDto> to handle null values during mapping.');
    }
    return _i3.FinancesCategoriesDto(
      id: model.id,
      name: model.name,
      color: model.color,
      kind: model.kind,
    );
  }

  _i2.FinancesCategories
      _map__i3$FinancesCategoriesDto_To__i2$FinancesCategories(
          _i3.FinancesCategoriesDto? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping FinancesCategoriesDto → FinancesCategories failed because FinancesCategoriesDto was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<FinancesCategoriesDto, FinancesCategories> to handle null values during mapping.');
    }
    return _i2.FinancesCategories(
      id: model.id,
      name: model.name,
      color: model.color,
      kind: model.kind,
    );
  }
}
