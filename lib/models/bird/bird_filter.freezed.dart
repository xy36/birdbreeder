// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bird_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BirdFilter {
  List<String> get speciesIds;
  String? get speciesName;
  List<String> get cageIds;
  String? get cageName;
  List<String> get colorIds;
  String? get colorName;
  List<LifeStage> get lifeStages;
  List<Sex> get sexes;
  List<SaleStatus> get saleStatus;
  BirdSort? get sort;

  /// Create a copy of BirdFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BirdFilterCopyWith<BirdFilter> get copyWith =>
      _$BirdFilterCopyWithImpl<BirdFilter>(this as BirdFilter, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BirdFilter &&
            const DeepCollectionEquality()
                .equals(other.speciesIds, speciesIds) &&
            (identical(other.speciesName, speciesName) ||
                other.speciesName == speciesName) &&
            const DeepCollectionEquality().equals(other.cageIds, cageIds) &&
            (identical(other.cageName, cageName) ||
                other.cageName == cageName) &&
            const DeepCollectionEquality().equals(other.colorIds, colorIds) &&
            (identical(other.colorName, colorName) ||
                other.colorName == colorName) &&
            const DeepCollectionEquality()
                .equals(other.lifeStages, lifeStages) &&
            const DeepCollectionEquality().equals(other.sexes, sexes) &&
            const DeepCollectionEquality()
                .equals(other.saleStatus, saleStatus) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(speciesIds),
      speciesName,
      const DeepCollectionEquality().hash(cageIds),
      cageName,
      const DeepCollectionEquality().hash(colorIds),
      colorName,
      const DeepCollectionEquality().hash(lifeStages),
      const DeepCollectionEquality().hash(sexes),
      const DeepCollectionEquality().hash(saleStatus),
      sort);

  @override
  String toString() {
    return 'BirdFilter(speciesIds: $speciesIds, speciesName: $speciesName, cageIds: $cageIds, cageName: $cageName, colorIds: $colorIds, colorName: $colorName, lifeStages: $lifeStages, sexes: $sexes, saleStatus: $saleStatus, sort: $sort)';
  }
}

/// @nodoc
abstract mixin class $BirdFilterCopyWith<$Res> {
  factory $BirdFilterCopyWith(
          BirdFilter value, $Res Function(BirdFilter) _then) =
      _$BirdFilterCopyWithImpl;
  @useResult
  $Res call(
      {List<String> speciesIds,
      String? speciesName,
      List<String> cageIds,
      String? cageName,
      List<String> colorIds,
      String? colorName,
      List<LifeStage> lifeStages,
      List<Sex> sexes,
      List<SaleStatus> saleStatus,
      BirdSort? sort});
}

/// @nodoc
class _$BirdFilterCopyWithImpl<$Res> implements $BirdFilterCopyWith<$Res> {
  _$BirdFilterCopyWithImpl(this._self, this._then);

  final BirdFilter _self;
  final $Res Function(BirdFilter) _then;

  /// Create a copy of BirdFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speciesIds = null,
    Object? speciesName = freezed,
    Object? cageIds = null,
    Object? cageName = freezed,
    Object? colorIds = null,
    Object? colorName = freezed,
    Object? lifeStages = null,
    Object? sexes = null,
    Object? saleStatus = null,
    Object? sort = freezed,
  }) {
    return _then(_self.copyWith(
      speciesIds: null == speciesIds
          ? _self.speciesIds
          : speciesIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      speciesName: freezed == speciesName
          ? _self.speciesName
          : speciesName // ignore: cast_nullable_to_non_nullable
              as String?,
      cageIds: null == cageIds
          ? _self.cageIds
          : cageIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cageName: freezed == cageName
          ? _self.cageName
          : cageName // ignore: cast_nullable_to_non_nullable
              as String?,
      colorIds: null == colorIds
          ? _self.colorIds
          : colorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      colorName: freezed == colorName
          ? _self.colorName
          : colorName // ignore: cast_nullable_to_non_nullable
              as String?,
      lifeStages: null == lifeStages
          ? _self.lifeStages
          : lifeStages // ignore: cast_nullable_to_non_nullable
              as List<LifeStage>,
      sexes: null == sexes
          ? _self.sexes
          : sexes // ignore: cast_nullable_to_non_nullable
              as List<Sex>,
      saleStatus: null == saleStatus
          ? _self.saleStatus
          : saleStatus // ignore: cast_nullable_to_non_nullable
              as List<SaleStatus>,
      sort: freezed == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as BirdSort?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BirdFilter].
extension BirdFilterPatterns on BirdFilter {
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
    TResult Function(_BirdFilter value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BirdFilter() when $default != null:
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
    TResult Function(_BirdFilter value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdFilter():
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
    TResult? Function(_BirdFilter value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdFilter() when $default != null:
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
            List<String> speciesIds,
            String? speciesName,
            List<String> cageIds,
            String? cageName,
            List<String> colorIds,
            String? colorName,
            List<LifeStage> lifeStages,
            List<Sex> sexes,
            List<SaleStatus> saleStatus,
            BirdSort? sort)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BirdFilter() when $default != null:
        return $default(
            _that.speciesIds,
            _that.speciesName,
            _that.cageIds,
            _that.cageName,
            _that.colorIds,
            _that.colorName,
            _that.lifeStages,
            _that.sexes,
            _that.saleStatus,
            _that.sort);
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
            List<String> speciesIds,
            String? speciesName,
            List<String> cageIds,
            String? cageName,
            List<String> colorIds,
            String? colorName,
            List<LifeStage> lifeStages,
            List<Sex> sexes,
            List<SaleStatus> saleStatus,
            BirdSort? sort)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdFilter():
        return $default(
            _that.speciesIds,
            _that.speciesName,
            _that.cageIds,
            _that.cageName,
            _that.colorIds,
            _that.colorName,
            _that.lifeStages,
            _that.sexes,
            _that.saleStatus,
            _that.sort);
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
            List<String> speciesIds,
            String? speciesName,
            List<String> cageIds,
            String? cageName,
            List<String> colorIds,
            String? colorName,
            List<LifeStage> lifeStages,
            List<Sex> sexes,
            List<SaleStatus> saleStatus,
            BirdSort? sort)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdFilter() when $default != null:
        return $default(
            _that.speciesIds,
            _that.speciesName,
            _that.cageIds,
            _that.cageName,
            _that.colorIds,
            _that.colorName,
            _that.lifeStages,
            _that.sexes,
            _that.saleStatus,
            _that.sort);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BirdFilter implements BirdFilter {
  const _BirdFilter(
      {final List<String> speciesIds = const [],
      this.speciesName,
      final List<String> cageIds = const [],
      this.cageName,
      final List<String> colorIds = const [],
      this.colorName,
      final List<LifeStage> lifeStages = const [LifeStage.adult],
      final List<Sex> sexes = const [],
      final List<SaleStatus> saleStatus = const [
        SaleStatus.notForSale,
        SaleStatus.listed,
        SaleStatus.reserved
      ],
      this.sort = BirdSort.updatedDesc})
      : _speciesIds = speciesIds,
        _cageIds = cageIds,
        _colorIds = colorIds,
        _lifeStages = lifeStages,
        _sexes = sexes,
        _saleStatus = saleStatus;

  final List<String> _speciesIds;
  @override
  @JsonKey()
  List<String> get speciesIds {
    if (_speciesIds is EqualUnmodifiableListView) return _speciesIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_speciesIds);
  }

  @override
  final String? speciesName;
  final List<String> _cageIds;
  @override
  @JsonKey()
  List<String> get cageIds {
    if (_cageIds is EqualUnmodifiableListView) return _cageIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cageIds);
  }

  @override
  final String? cageName;
  final List<String> _colorIds;
  @override
  @JsonKey()
  List<String> get colorIds {
    if (_colorIds is EqualUnmodifiableListView) return _colorIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colorIds);
  }

  @override
  final String? colorName;
  final List<LifeStage> _lifeStages;
  @override
  @JsonKey()
  List<LifeStage> get lifeStages {
    if (_lifeStages is EqualUnmodifiableListView) return _lifeStages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lifeStages);
  }

  final List<Sex> _sexes;
  @override
  @JsonKey()
  List<Sex> get sexes {
    if (_sexes is EqualUnmodifiableListView) return _sexes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sexes);
  }

  final List<SaleStatus> _saleStatus;
  @override
  @JsonKey()
  List<SaleStatus> get saleStatus {
    if (_saleStatus is EqualUnmodifiableListView) return _saleStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_saleStatus);
  }

  @override
  @JsonKey()
  final BirdSort? sort;

  /// Create a copy of BirdFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BirdFilterCopyWith<_BirdFilter> get copyWith =>
      __$BirdFilterCopyWithImpl<_BirdFilter>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BirdFilter &&
            const DeepCollectionEquality()
                .equals(other._speciesIds, _speciesIds) &&
            (identical(other.speciesName, speciesName) ||
                other.speciesName == speciesName) &&
            const DeepCollectionEquality().equals(other._cageIds, _cageIds) &&
            (identical(other.cageName, cageName) ||
                other.cageName == cageName) &&
            const DeepCollectionEquality().equals(other._colorIds, _colorIds) &&
            (identical(other.colorName, colorName) ||
                other.colorName == colorName) &&
            const DeepCollectionEquality()
                .equals(other._lifeStages, _lifeStages) &&
            const DeepCollectionEquality().equals(other._sexes, _sexes) &&
            const DeepCollectionEquality()
                .equals(other._saleStatus, _saleStatus) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_speciesIds),
      speciesName,
      const DeepCollectionEquality().hash(_cageIds),
      cageName,
      const DeepCollectionEquality().hash(_colorIds),
      colorName,
      const DeepCollectionEquality().hash(_lifeStages),
      const DeepCollectionEquality().hash(_sexes),
      const DeepCollectionEquality().hash(_saleStatus),
      sort);

  @override
  String toString() {
    return 'BirdFilter(speciesIds: $speciesIds, speciesName: $speciesName, cageIds: $cageIds, cageName: $cageName, colorIds: $colorIds, colorName: $colorName, lifeStages: $lifeStages, sexes: $sexes, saleStatus: $saleStatus, sort: $sort)';
  }
}

/// @nodoc
abstract mixin class _$BirdFilterCopyWith<$Res>
    implements $BirdFilterCopyWith<$Res> {
  factory _$BirdFilterCopyWith(
          _BirdFilter value, $Res Function(_BirdFilter) _then) =
      __$BirdFilterCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<String> speciesIds,
      String? speciesName,
      List<String> cageIds,
      String? cageName,
      List<String> colorIds,
      String? colorName,
      List<LifeStage> lifeStages,
      List<Sex> sexes,
      List<SaleStatus> saleStatus,
      BirdSort? sort});
}

/// @nodoc
class __$BirdFilterCopyWithImpl<$Res> implements _$BirdFilterCopyWith<$Res> {
  __$BirdFilterCopyWithImpl(this._self, this._then);

  final _BirdFilter _self;
  final $Res Function(_BirdFilter) _then;

  /// Create a copy of BirdFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? speciesIds = null,
    Object? speciesName = freezed,
    Object? cageIds = null,
    Object? cageName = freezed,
    Object? colorIds = null,
    Object? colorName = freezed,
    Object? lifeStages = null,
    Object? sexes = null,
    Object? saleStatus = null,
    Object? sort = freezed,
  }) {
    return _then(_BirdFilter(
      speciesIds: null == speciesIds
          ? _self._speciesIds
          : speciesIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      speciesName: freezed == speciesName
          ? _self.speciesName
          : speciesName // ignore: cast_nullable_to_non_nullable
              as String?,
      cageIds: null == cageIds
          ? _self._cageIds
          : cageIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cageName: freezed == cageName
          ? _self.cageName
          : cageName // ignore: cast_nullable_to_non_nullable
              as String?,
      colorIds: null == colorIds
          ? _self._colorIds
          : colorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      colorName: freezed == colorName
          ? _self.colorName
          : colorName // ignore: cast_nullable_to_non_nullable
              as String?,
      lifeStages: null == lifeStages
          ? _self._lifeStages
          : lifeStages // ignore: cast_nullable_to_non_nullable
              as List<LifeStage>,
      sexes: null == sexes
          ? _self._sexes
          : sexes // ignore: cast_nullable_to_non_nullable
              as List<Sex>,
      saleStatus: null == saleStatus
          ? _self._saleStatus
          : saleStatus // ignore: cast_nullable_to_non_nullable
              as List<SaleStatus>,
      sort: freezed == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as BirdSort?,
    ));
  }
}

// dart format on
