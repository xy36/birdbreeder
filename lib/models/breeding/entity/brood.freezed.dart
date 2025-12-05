// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brood.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Brood {
  String get id;
  DateTime? get start;
  DateTime? get end;
  String? get notes;
  String? get cage;
  String? get breedingPair;
  DateTime? get created;
  DateTime? get updated;

  /// Create a copy of Brood
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BroodCopyWith<Brood> get copyWith =>
      _$BroodCopyWithImpl<Brood>(this as Brood, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Brood &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.cage, cage) || other.cage == cage) &&
            (identical(other.breedingPair, breedingPair) ||
                other.breedingPair == breedingPair) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, start, end, notes, cage, breedingPair, created, updated);

  @override
  String toString() {
    return 'Brood(id: $id, start: $start, end: $end, notes: $notes, cage: $cage, breedingPair: $breedingPair, created: $created, updated: $updated)';
  }
}

/// @nodoc
abstract mixin class $BroodCopyWith<$Res> {
  factory $BroodCopyWith(Brood value, $Res Function(Brood) _then) =
      _$BroodCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      DateTime? start,
      DateTime? end,
      String? notes,
      String? cage,
      String? breedingPair,
      DateTime? created,
      DateTime? updated});
}

/// @nodoc
class _$BroodCopyWithImpl<$Res> implements $BroodCopyWith<$Res> {
  _$BroodCopyWithImpl(this._self, this._then);

  final Brood _self;
  final $Res Function(Brood) _then;

  /// Create a copy of Brood
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? start = freezed,
    Object? end = freezed,
    Object? notes = freezed,
    Object? cage = freezed,
    Object? breedingPair = freezed,
    Object? created = freezed,
    Object? updated = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      start: freezed == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _self.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      cage: freezed == cage
          ? _self.cage
          : cage // ignore: cast_nullable_to_non_nullable
              as String?,
      breedingPair: freezed == breedingPair
          ? _self.breedingPair
          : breedingPair // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _self.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Brood].
extension BroodPatterns on Brood {
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
    TResult Function(_Brood value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Brood() when $default != null:
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
    TResult Function(_Brood value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Brood():
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
    TResult? Function(_Brood value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Brood() when $default != null:
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
            String id,
            DateTime? start,
            DateTime? end,
            String? notes,
            String? cage,
            String? breedingPair,
            DateTime? created,
            DateTime? updated)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Brood() when $default != null:
        return $default(_that.id, _that.start, _that.end, _that.notes,
            _that.cage, _that.breedingPair, _that.created, _that.updated);
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
            String id,
            DateTime? start,
            DateTime? end,
            String? notes,
            String? cage,
            String? breedingPair,
            DateTime? created,
            DateTime? updated)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Brood():
        return $default(_that.id, _that.start, _that.end, _that.notes,
            _that.cage, _that.breedingPair, _that.created, _that.updated);
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
            String id,
            DateTime? start,
            DateTime? end,
            String? notes,
            String? cage,
            String? breedingPair,
            DateTime? created,
            DateTime? updated)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Brood() when $default != null:
        return $default(_that.id, _that.start, _that.end, _that.notes,
            _that.cage, _that.breedingPair, _that.created, _that.updated);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Brood implements Brood {
  _Brood(
      {required this.id,
      required this.start,
      required this.end,
      required this.notes,
      required this.cage,
      required this.breedingPair,
      this.created,
      this.updated});

  @override
  final String id;
  @override
  final DateTime? start;
  @override
  final DateTime? end;
  @override
  final String? notes;
  @override
  final String? cage;
  @override
  final String? breedingPair;
  @override
  final DateTime? created;
  @override
  final DateTime? updated;

  /// Create a copy of Brood
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BroodCopyWith<_Brood> get copyWith =>
      __$BroodCopyWithImpl<_Brood>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Brood &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.cage, cage) || other.cage == cage) &&
            (identical(other.breedingPair, breedingPair) ||
                other.breedingPair == breedingPair) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, start, end, notes, cage, breedingPair, created, updated);

  @override
  String toString() {
    return 'Brood(id: $id, start: $start, end: $end, notes: $notes, cage: $cage, breedingPair: $breedingPair, created: $created, updated: $updated)';
  }
}

/// @nodoc
abstract mixin class _$BroodCopyWith<$Res> implements $BroodCopyWith<$Res> {
  factory _$BroodCopyWith(_Brood value, $Res Function(_Brood) _then) =
      __$BroodCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime? start,
      DateTime? end,
      String? notes,
      String? cage,
      String? breedingPair,
      DateTime? created,
      DateTime? updated});
}

/// @nodoc
class __$BroodCopyWithImpl<$Res> implements _$BroodCopyWith<$Res> {
  __$BroodCopyWithImpl(this._self, this._then);

  final _Brood _self;
  final $Res Function(_Brood) _then;

  /// Create a copy of Brood
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? start = freezed,
    Object? end = freezed,
    Object? notes = freezed,
    Object? cage = freezed,
    Object? breedingPair = freezed,
    Object? created = freezed,
    Object? updated = freezed,
  }) {
    return _then(_Brood(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      start: freezed == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _self.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      cage: freezed == cage
          ? _self.cage
          : cage // ignore: cast_nullable_to_non_nullable
              as String?,
      breedingPair: freezed == breedingPair
          ? _self.breedingPair
          : breedingPair // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _self.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
