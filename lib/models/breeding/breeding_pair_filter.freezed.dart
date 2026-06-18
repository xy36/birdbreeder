// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breeding_pair_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BreedingPairFilter {
  List<String> get speciesIds;
  List<String> get colorIds;

  /// Create a copy of BreedingPairFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BreedingPairFilterCopyWith<BreedingPairFilter> get copyWith =>
      _$BreedingPairFilterCopyWithImpl<BreedingPairFilter>(
          this as BreedingPairFilter, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BreedingPairFilter &&
            const DeepCollectionEquality()
                .equals(other.speciesIds, speciesIds) &&
            const DeepCollectionEquality().equals(other.colorIds, colorIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(speciesIds),
      const DeepCollectionEquality().hash(colorIds));

  @override
  String toString() {
    return 'BreedingPairFilter(speciesIds: $speciesIds, colorIds: $colorIds)';
  }
}

/// @nodoc
abstract mixin class $BreedingPairFilterCopyWith<$Res> {
  factory $BreedingPairFilterCopyWith(
          BreedingPairFilter value, $Res Function(BreedingPairFilter) _then) =
      _$BreedingPairFilterCopyWithImpl;
  @useResult
  $Res call({List<String> speciesIds, List<String> colorIds});
}

/// @nodoc
class _$BreedingPairFilterCopyWithImpl<$Res>
    implements $BreedingPairFilterCopyWith<$Res> {
  _$BreedingPairFilterCopyWithImpl(this._self, this._then);

  final BreedingPairFilter _self;
  final $Res Function(BreedingPairFilter) _then;

  /// Create a copy of BreedingPairFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speciesIds = null,
    Object? colorIds = null,
  }) {
    return _then(_self.copyWith(
      speciesIds: null == speciesIds
          ? _self.speciesIds
          : speciesIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      colorIds: null == colorIds
          ? _self.colorIds
          : colorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [BreedingPairFilter].
extension BreedingPairFilterPatterns on BreedingPairFilter {
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
    TResult Function(_BreedingPairFilter value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BreedingPairFilter() when $default != null:
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
    TResult Function(_BreedingPairFilter value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BreedingPairFilter():
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
    TResult? Function(_BreedingPairFilter value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BreedingPairFilter() when $default != null:
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
    TResult Function(List<String> speciesIds, List<String> colorIds)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BreedingPairFilter() when $default != null:
        return $default(_that.speciesIds, _that.colorIds);
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
    TResult Function(List<String> speciesIds, List<String> colorIds) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BreedingPairFilter():
        return $default(_that.speciesIds, _that.colorIds);
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
    TResult? Function(List<String> speciesIds, List<String> colorIds)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BreedingPairFilter() when $default != null:
        return $default(_that.speciesIds, _that.colorIds);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BreedingPairFilter implements BreedingPairFilter {
  const _BreedingPairFilter(
      {final List<String> speciesIds = const [],
      final List<String> colorIds = const []})
      : _speciesIds = speciesIds,
        _colorIds = colorIds;

  final List<String> _speciesIds;
  @override
  @JsonKey()
  List<String> get speciesIds {
    if (_speciesIds is EqualUnmodifiableListView) return _speciesIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_speciesIds);
  }

  final List<String> _colorIds;
  @override
  @JsonKey()
  List<String> get colorIds {
    if (_colorIds is EqualUnmodifiableListView) return _colorIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_colorIds);
  }

  /// Create a copy of BreedingPairFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BreedingPairFilterCopyWith<_BreedingPairFilter> get copyWith =>
      __$BreedingPairFilterCopyWithImpl<_BreedingPairFilter>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BreedingPairFilter &&
            const DeepCollectionEquality()
                .equals(other._speciesIds, _speciesIds) &&
            const DeepCollectionEquality().equals(other._colorIds, _colorIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_speciesIds),
      const DeepCollectionEquality().hash(_colorIds));

  @override
  String toString() {
    return 'BreedingPairFilter(speciesIds: $speciesIds, colorIds: $colorIds)';
  }
}

/// @nodoc
abstract mixin class _$BreedingPairFilterCopyWith<$Res>
    implements $BreedingPairFilterCopyWith<$Res> {
  factory _$BreedingPairFilterCopyWith(
          _BreedingPairFilter value, $Res Function(_BreedingPairFilter) _then) =
      __$BreedingPairFilterCopyWithImpl;
  @override
  @useResult
  $Res call({List<String> speciesIds, List<String> colorIds});
}

/// @nodoc
class __$BreedingPairFilterCopyWithImpl<$Res>
    implements _$BreedingPairFilterCopyWith<$Res> {
  __$BreedingPairFilterCopyWithImpl(this._self, this._then);

  final _BreedingPairFilter _self;
  final $Res Function(_BreedingPairFilter) _then;

  /// Create a copy of BreedingPairFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? speciesIds = null,
    Object? colorIds = null,
  }) {
    return _then(_BreedingPairFilter(
      speciesIds: null == speciesIds
          ? _self._speciesIds
          : speciesIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      colorIds: null == colorIds
          ? _self._colorIds
          : colorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
