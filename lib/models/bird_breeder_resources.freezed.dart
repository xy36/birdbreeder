// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bird_breeder_resources.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BirdBreederResources implements DiagnosticableTreeMixin {
  List<Bird> get birds;
  List<BreedingPair> get breedingPairs;
  List<Brood> get broods;
  List<Egg> get eggs;
  List<Cage> get cages;
  List<BirdColor> get colors;
  List<Contact> get contacts;
  List<Species> get species;
  List<FinanceCategory> get financesCategories;
  List<Finance> get finances;

  /// Create a copy of BirdBreederResources
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BirdBreederResourcesCopyWith<BirdBreederResources> get copyWith =>
      _$BirdBreederResourcesCopyWithImpl<BirdBreederResources>(
          this as BirdBreederResources, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'BirdBreederResources'))
      ..add(DiagnosticsProperty('birds', birds))
      ..add(DiagnosticsProperty('breedingPairs', breedingPairs))
      ..add(DiagnosticsProperty('broods', broods))
      ..add(DiagnosticsProperty('eggs', eggs))
      ..add(DiagnosticsProperty('cages', cages))
      ..add(DiagnosticsProperty('colors', colors))
      ..add(DiagnosticsProperty('contacts', contacts))
      ..add(DiagnosticsProperty('species', species))
      ..add(DiagnosticsProperty('financesCategories', financesCategories))
      ..add(DiagnosticsProperty('finances', finances));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BirdBreederResources &&
            const DeepCollectionEquality().equals(other.birds, birds) &&
            const DeepCollectionEquality()
                .equals(other.breedingPairs, breedingPairs) &&
            const DeepCollectionEquality().equals(other.broods, broods) &&
            const DeepCollectionEquality().equals(other.eggs, eggs) &&
            const DeepCollectionEquality().equals(other.cages, cages) &&
            const DeepCollectionEquality().equals(other.colors, colors) &&
            const DeepCollectionEquality().equals(other.contacts, contacts) &&
            const DeepCollectionEquality().equals(other.species, species) &&
            const DeepCollectionEquality()
                .equals(other.financesCategories, financesCategories) &&
            const DeepCollectionEquality().equals(other.finances, finances));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(birds),
      const DeepCollectionEquality().hash(breedingPairs),
      const DeepCollectionEquality().hash(broods),
      const DeepCollectionEquality().hash(eggs),
      const DeepCollectionEquality().hash(cages),
      const DeepCollectionEquality().hash(colors),
      const DeepCollectionEquality().hash(contacts),
      const DeepCollectionEquality().hash(species),
      const DeepCollectionEquality().hash(financesCategories),
      const DeepCollectionEquality().hash(finances));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BirdBreederResources(birds: $birds, breedingPairs: $breedingPairs, broods: $broods, eggs: $eggs, cages: $cages, colors: $colors, contacts: $contacts, species: $species, financesCategories: $financesCategories, finances: $finances)';
  }
}

/// @nodoc
abstract mixin class $BirdBreederResourcesCopyWith<$Res> {
  factory $BirdBreederResourcesCopyWith(BirdBreederResources value,
          $Res Function(BirdBreederResources) _then) =
      _$BirdBreederResourcesCopyWithImpl;
  @useResult
  $Res call(
      {List<Bird> birds,
      List<BreedingPair> breedingPairs,
      List<Brood> broods,
      List<Egg> eggs,
      List<Cage> cages,
      List<BirdColor> colors,
      List<Contact> contacts,
      List<Species> species,
      List<FinanceCategory> financesCategories,
      List<Finance> finances});
}

/// @nodoc
class _$BirdBreederResourcesCopyWithImpl<$Res>
    implements $BirdBreederResourcesCopyWith<$Res> {
  _$BirdBreederResourcesCopyWithImpl(this._self, this._then);

  final BirdBreederResources _self;
  final $Res Function(BirdBreederResources) _then;

  /// Create a copy of BirdBreederResources
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? birds = null,
    Object? breedingPairs = null,
    Object? broods = null,
    Object? eggs = null,
    Object? cages = null,
    Object? colors = null,
    Object? contacts = null,
    Object? species = null,
    Object? financesCategories = null,
    Object? finances = null,
  }) {
    return _then(_self.copyWith(
      birds: null == birds
          ? _self.birds
          : birds // ignore: cast_nullable_to_non_nullable
              as List<Bird>,
      breedingPairs: null == breedingPairs
          ? _self.breedingPairs
          : breedingPairs // ignore: cast_nullable_to_non_nullable
              as List<BreedingPair>,
      broods: null == broods
          ? _self.broods
          : broods // ignore: cast_nullable_to_non_nullable
              as List<Brood>,
      eggs: null == eggs
          ? _self.eggs
          : eggs // ignore: cast_nullable_to_non_nullable
              as List<Egg>,
      cages: null == cages
          ? _self.cages
          : cages // ignore: cast_nullable_to_non_nullable
              as List<Cage>,
      colors: null == colors
          ? _self.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<BirdColor>,
      contacts: null == contacts
          ? _self.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      species: null == species
          ? _self.species
          : species // ignore: cast_nullable_to_non_nullable
              as List<Species>,
      financesCategories: null == financesCategories
          ? _self.financesCategories
          : financesCategories // ignore: cast_nullable_to_non_nullable
              as List<FinanceCategory>,
      finances: null == finances
          ? _self.finances
          : finances // ignore: cast_nullable_to_non_nullable
              as List<Finance>,
    ));
  }
}

/// Adds pattern-matching-related methods to [BirdBreederResources].
extension BirdBreederResourcesPatterns on BirdBreederResources {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BirdBreederResources value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BirdBreederResources() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BirdBreederResources value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdBreederResources():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BirdBreederResources value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdBreederResources() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            List<Bird> birds,
            List<BreedingPair> breedingPairs,
            List<Brood> broods,
            List<Egg> eggs,
            List<Cage> cages,
            List<BirdColor> colors,
            List<Contact> contacts,
            List<Species> species,
            List<FinanceCategory> financesCategories,
            List<Finance> finances)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BirdBreederResources() when $default != null:
        return $default(
            _that.birds,
            _that.breedingPairs,
            _that.broods,
            _that.eggs,
            _that.cages,
            _that.colors,
            _that.contacts,
            _that.species,
            _that.financesCategories,
            _that.finances);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            List<Bird> birds,
            List<BreedingPair> breedingPairs,
            List<Brood> broods,
            List<Egg> eggs,
            List<Cage> cages,
            List<BirdColor> colors,
            List<Contact> contacts,
            List<Species> species,
            List<FinanceCategory> financesCategories,
            List<Finance> finances)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdBreederResources():
        return $default(
            _that.birds,
            _that.breedingPairs,
            _that.broods,
            _that.eggs,
            _that.cages,
            _that.colors,
            _that.contacts,
            _that.species,
            _that.financesCategories,
            _that.finances);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            List<Bird> birds,
            List<BreedingPair> breedingPairs,
            List<Brood> broods,
            List<Egg> eggs,
            List<Cage> cages,
            List<BirdColor> colors,
            List<Contact> contacts,
            List<Species> species,
            List<FinanceCategory> financesCategories,
            List<Finance> finances)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdBreederResources() when $default != null:
        return $default(
            _that.birds,
            _that.breedingPairs,
            _that.broods,
            _that.eggs,
            _that.cages,
            _that.colors,
            _that.contacts,
            _that.species,
            _that.financesCategories,
            _that.finances);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BirdBreederResources extends BirdBreederResources
    with DiagnosticableTreeMixin {
  const _BirdBreederResources(
      {required final List<Bird> birds,
      required final List<BreedingPair> breedingPairs,
      required final List<Brood> broods,
      required final List<Egg> eggs,
      required final List<Cage> cages,
      required final List<BirdColor> colors,
      required final List<Contact> contacts,
      required final List<Species> species,
      required final List<FinanceCategory> financesCategories,
      required final List<Finance> finances})
      : _birds = birds,
        _breedingPairs = breedingPairs,
        _broods = broods,
        _eggs = eggs,
        _cages = cages,
        _colors = colors,
        _contacts = contacts,
        _species = species,
        _financesCategories = financesCategories,
        _finances = finances,
        super._();

  final List<Bird> _birds;
  @override
  List<Bird> get birds {
    if (_birds is EqualUnmodifiableListView) return _birds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_birds);
  }

  final List<BreedingPair> _breedingPairs;
  @override
  List<BreedingPair> get breedingPairs {
    if (_breedingPairs is EqualUnmodifiableListView) return _breedingPairs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_breedingPairs);
  }

  final List<Brood> _broods;
  @override
  List<Brood> get broods {
    if (_broods is EqualUnmodifiableListView) return _broods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_broods);
  }

  final List<Egg> _eggs;
  @override
  List<Egg> get eggs {
    if (_eggs is EqualUnmodifiableListView) return _eggs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_eggs);
  }

  final List<Cage> _cages;
  @override
  List<Cage> get cages {
    if (_cages is EqualUnmodifiableListView) return _cages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cages);
  }

  final List<BirdColor> _colors;
  @override
  List<BirdColor> get colors {
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colors);
  }

  final List<Contact> _contacts;
  @override
  List<Contact> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  final List<Species> _species;
  @override
  List<Species> get species {
    if (_species is EqualUnmodifiableListView) return _species;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_species);
  }

  final List<FinanceCategory> _financesCategories;
  @override
  List<FinanceCategory> get financesCategories {
    if (_financesCategories is EqualUnmodifiableListView)
      return _financesCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_financesCategories);
  }

  final List<Finance> _finances;
  @override
  List<Finance> get finances {
    if (_finances is EqualUnmodifiableListView) return _finances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_finances);
  }

  /// Create a copy of BirdBreederResources
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BirdBreederResourcesCopyWith<_BirdBreederResources> get copyWith =>
      __$BirdBreederResourcesCopyWithImpl<_BirdBreederResources>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'BirdBreederResources'))
      ..add(DiagnosticsProperty('birds', birds))
      ..add(DiagnosticsProperty('breedingPairs', breedingPairs))
      ..add(DiagnosticsProperty('broods', broods))
      ..add(DiagnosticsProperty('eggs', eggs))
      ..add(DiagnosticsProperty('cages', cages))
      ..add(DiagnosticsProperty('colors', colors))
      ..add(DiagnosticsProperty('contacts', contacts))
      ..add(DiagnosticsProperty('species', species))
      ..add(DiagnosticsProperty('financesCategories', financesCategories))
      ..add(DiagnosticsProperty('finances', finances));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BirdBreederResources &&
            const DeepCollectionEquality().equals(other._birds, _birds) &&
            const DeepCollectionEquality()
                .equals(other._breedingPairs, _breedingPairs) &&
            const DeepCollectionEquality().equals(other._broods, _broods) &&
            const DeepCollectionEquality().equals(other._eggs, _eggs) &&
            const DeepCollectionEquality().equals(other._cages, _cages) &&
            const DeepCollectionEquality().equals(other._colors, _colors) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            const DeepCollectionEquality().equals(other._species, _species) &&
            const DeepCollectionEquality()
                .equals(other._financesCategories, _financesCategories) &&
            const DeepCollectionEquality().equals(other._finances, _finances));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_birds),
      const DeepCollectionEquality().hash(_breedingPairs),
      const DeepCollectionEquality().hash(_broods),
      const DeepCollectionEquality().hash(_eggs),
      const DeepCollectionEquality().hash(_cages),
      const DeepCollectionEquality().hash(_colors),
      const DeepCollectionEquality().hash(_contacts),
      const DeepCollectionEquality().hash(_species),
      const DeepCollectionEquality().hash(_financesCategories),
      const DeepCollectionEquality().hash(_finances));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BirdBreederResources(birds: $birds, breedingPairs: $breedingPairs, broods: $broods, eggs: $eggs, cages: $cages, colors: $colors, contacts: $contacts, species: $species, financesCategories: $financesCategories, finances: $finances)';
  }
}

/// @nodoc
abstract mixin class _$BirdBreederResourcesCopyWith<$Res>
    implements $BirdBreederResourcesCopyWith<$Res> {
  factory _$BirdBreederResourcesCopyWith(_BirdBreederResources value,
          $Res Function(_BirdBreederResources) _then) =
      __$BirdBreederResourcesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<Bird> birds,
      List<BreedingPair> breedingPairs,
      List<Brood> broods,
      List<Egg> eggs,
      List<Cage> cages,
      List<BirdColor> colors,
      List<Contact> contacts,
      List<Species> species,
      List<FinanceCategory> financesCategories,
      List<Finance> finances});
}

/// @nodoc
class __$BirdBreederResourcesCopyWithImpl<$Res>
    implements _$BirdBreederResourcesCopyWith<$Res> {
  __$BirdBreederResourcesCopyWithImpl(this._self, this._then);

  final _BirdBreederResources _self;
  final $Res Function(_BirdBreederResources) _then;

  /// Create a copy of BirdBreederResources
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? birds = null,
    Object? breedingPairs = null,
    Object? broods = null,
    Object? eggs = null,
    Object? cages = null,
    Object? colors = null,
    Object? contacts = null,
    Object? species = null,
    Object? financesCategories = null,
    Object? finances = null,
  }) {
    return _then(_BirdBreederResources(
      birds: null == birds
          ? _self._birds
          : birds // ignore: cast_nullable_to_non_nullable
              as List<Bird>,
      breedingPairs: null == breedingPairs
          ? _self._breedingPairs
          : breedingPairs // ignore: cast_nullable_to_non_nullable
              as List<BreedingPair>,
      broods: null == broods
          ? _self._broods
          : broods // ignore: cast_nullable_to_non_nullable
              as List<Brood>,
      eggs: null == eggs
          ? _self._eggs
          : eggs // ignore: cast_nullable_to_non_nullable
              as List<Egg>,
      cages: null == cages
          ? _self._cages
          : cages // ignore: cast_nullable_to_non_nullable
              as List<Cage>,
      colors: null == colors
          ? _self._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<BirdColor>,
      contacts: null == contacts
          ? _self._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      species: null == species
          ? _self._species
          : species // ignore: cast_nullable_to_non_nullable
              as List<Species>,
      financesCategories: null == financesCategories
          ? _self._financesCategories
          : financesCategories // ignore: cast_nullable_to_non_nullable
              as List<FinanceCategory>,
      finances: null == finances
          ? _self._finances
          : finances // ignore: cast_nullable_to_non_nullable
              as List<Finance>,
    ));
  }
}

// dart format on
