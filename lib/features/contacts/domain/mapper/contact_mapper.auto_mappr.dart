// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoMapprGenerator
// **************************************************************************

// ignore_for_file: type=lint, unnecessary_cast, unused_local_variable

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_mappr_annotation/auto_mappr_annotation.dart' as _i1;

import '../../../../core/utils/user_helper.dart' as _i4;
import '../../data/dtos/contact_dto.dart' as _i2;
import '../models/contact.dart' as _i3;

/// {@template package:birdbreeder/features/contacts/domain/mapper/contact_mapper.dart}
/// Available mappings:
/// - `ContactDto` → `Contact`.
/// - `Contact` → `ContactDto`.
/// {@endtemplate}
class $ContactMapper implements _i1.AutoMapprInterface {
  const $ContactMapper();

  Type _typeOf<T>() => T;

  List<_i1.AutoMapprInterface> get _delegates => const [];

  /// {@macro AutoMapprInterface:canConvert}
  /// {@macro package:birdbreeder/features/contacts/domain/mapper/contact_mapper.dart}
  @override
  bool canConvert<SOURCE, TARGET>({bool recursive = true}) {
    final sourceTypeOf = _typeOf<SOURCE>();
    final targetTypeOf = _typeOf<TARGET>();
    if ((sourceTypeOf == _typeOf<_i2.ContactDto>() ||
            sourceTypeOf == _typeOf<_i2.ContactDto?>()) &&
        (targetTypeOf == _typeOf<_i3.Contact>() ||
            targetTypeOf == _typeOf<_i3.Contact?>())) {
      return true;
    }
    if ((sourceTypeOf == _typeOf<_i3.Contact>() ||
            sourceTypeOf == _typeOf<_i3.Contact?>()) &&
        (targetTypeOf == _typeOf<_i2.ContactDto>() ||
            targetTypeOf == _typeOf<_i2.ContactDto?>())) {
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
  /// {@macro package:birdbreeder/features/contacts/domain/mapper/contact_mapper.dart}
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
  /// {@macro package:birdbreeder/features/contacts/domain/mapper/contact_mapper.dart}
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
  /// {@macro package:birdbreeder/features/contacts/domain/mapper/contact_mapper.dart}
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
  /// {@macro package:birdbreeder/features/contacts/domain/mapper/contact_mapper.dart}
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
  /// {@macro package:birdbreeder/features/contacts/domain/mapper/contact_mapper.dart}
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
  /// {@macro package:birdbreeder/features/contacts/domain/mapper/contact_mapper.dart}
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
  /// {@macro package:birdbreeder/features/contacts/domain/mapper/contact_mapper.dart}
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
  /// {@macro package:birdbreeder/features/contacts/domain/mapper/contact_mapper.dart}
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
    if ((sourceTypeOf == _typeOf<_i2.ContactDto>() ||
            sourceTypeOf == _typeOf<_i2.ContactDto?>()) &&
        (targetTypeOf == _typeOf<_i3.Contact>() ||
            targetTypeOf == _typeOf<_i3.Contact?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i2$ContactDto_To__i3$Contact((model as _i2.ContactDto?))
          as TARGET);
    }
    if ((sourceTypeOf == _typeOf<_i3.Contact>() ||
            sourceTypeOf == _typeOf<_i3.Contact?>()) &&
        (targetTypeOf == _typeOf<_i2.ContactDto>() ||
            targetTypeOf == _typeOf<_i2.ContactDto?>())) {
      if (canReturnNull && model == null) {
        return null;
      }
      return (_map__i3$Contact_To__i2$ContactDto((model as _i3.Contact?))
          as TARGET);
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
  /// {@macro package:birdbreeder/features/contacts/domain/mapper/contact_mapper.dart}
  @override
  bool useSafeMapping<SOURCE, TARGET>() {
    return false;
  }

  _i3.Contact _map__i2$ContactDto_To__i3$Contact(_i2.ContactDto? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping ContactDto → Contact failed because ContactDto was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<ContactDto, Contact> to handle null values during mapping.');
    }
    return _i3.Contact(
      id: model.id,
      number: model.number,
      firstName: model.firstName,
      name: model.name,
      email: model.email,
      address: model.address,
      city: model.city,
      postalCode: model.postalCode,
      country: model.country,
      website: model.website,
    );
  }

  _i2.ContactDto _map__i3$Contact_To__i2$ContactDto(_i3.Contact? input) {
    final model = input;
    if (model == null) {
      throw Exception(
          r'Mapping Contact → ContactDto failed because Contact was null, and no default value was provided. '
          r'Consider setting the whenSourceIsNull parameter on the MapType<Contact, ContactDto> to handle null values during mapping.');
    }
    return _i2.ContactDto(
      id: model.id,
      number: model.number,
      firstName: model.firstName,
      name: model.name,
      email: model.email,
      address: model.address,
      city: model.city,
      country: model.country,
      postalCode: model.postalCode,
      website: model.website,
      user: _i4.UserHelper.insertUser(),
    );
  }
}
