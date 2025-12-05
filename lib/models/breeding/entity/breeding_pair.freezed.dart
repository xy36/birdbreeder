// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breeding_pair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BreedingPair {
  String get id;
  DateTime? get start;
  DateTime? get end;
  String get fatherId;
  String get motherId;
  String? get cageId;
  BreedingPairStatus get status;
  String? get notes;
  DateTime? get created;
  DateTime? get updated;

  /// Create a copy of BreedingPair
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BreedingPairCopyWith<BreedingPair> get copyWith =>
      _$BreedingPairCopyWithImpl<BreedingPair>(
          this as BreedingPair, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BreedingPair &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.fatherId, fatherId) ||
                other.fatherId == fatherId) &&
            (identical(other.motherId, motherId) ||
                other.motherId == motherId) &&
            (identical(other.cageId, cageId) || other.cageId == cageId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, start, end, fatherId,
      motherId, cageId, status, notes, created, updated);

  @override
  String toString() {
    return 'BreedingPair(id: $id, start: $start, end: $end, fatherId: $fatherId, motherId: $motherId, cageId: $cageId, status: $status, notes: $notes, created: $created, updated: $updated)';
  }
}

/// @nodoc
abstract mixin class $BreedingPairCopyWith<$Res> {
  factory $BreedingPairCopyWith(
          BreedingPair value, $Res Function(BreedingPair) _then) =
      _$BreedingPairCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      DateTime? start,
      DateTime? end,
      String fatherId,
      String motherId,
      String? cageId,
      BreedingPairStatus status,
      String? notes,
      DateTime? created,
      DateTime? updated});
}

/// @nodoc
class _$BreedingPairCopyWithImpl<$Res> implements $BreedingPairCopyWith<$Res> {
  _$BreedingPairCopyWithImpl(this._self, this._then);

  final BreedingPair _self;
  final $Res Function(BreedingPair) _then;

  /// Create a copy of BreedingPair
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? start = freezed,
    Object? end = freezed,
    Object? fatherId = null,
    Object? motherId = null,
    Object? cageId = freezed,
    Object? status = null,
    Object? notes = freezed,
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
      fatherId: null == fatherId
          ? _self.fatherId
          : fatherId // ignore: cast_nullable_to_non_nullable
              as String,
      motherId: null == motherId
          ? _self.motherId
          : motherId // ignore: cast_nullable_to_non_nullable
              as String,
      cageId: freezed == cageId
          ? _self.cageId
          : cageId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as BreedingPairStatus,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
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

/// Adds pattern-matching-related methods to [BreedingPair].
extension BreedingPairPatterns on BreedingPair {
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
    TResult Function(_BreedingPair value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BreedingPair() when $default != null:
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
    TResult Function(_BreedingPair value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BreedingPair():
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
    TResult? Function(_BreedingPair value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BreedingPair() when $default != null:
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
            String fatherId,
            String motherId,
            String? cageId,
            BreedingPairStatus status,
            String? notes,
            DateTime? created,
            DateTime? updated)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BreedingPair() when $default != null:
        return $default(
            _that.id,
            _that.start,
            _that.end,
            _that.fatherId,
            _that.motherId,
            _that.cageId,
            _that.status,
            _that.notes,
            _that.created,
            _that.updated);
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
            String fatherId,
            String motherId,
            String? cageId,
            BreedingPairStatus status,
            String? notes,
            DateTime? created,
            DateTime? updated)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BreedingPair():
        return $default(
            _that.id,
            _that.start,
            _that.end,
            _that.fatherId,
            _that.motherId,
            _that.cageId,
            _that.status,
            _that.notes,
            _that.created,
            _that.updated);
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
            String fatherId,
            String motherId,
            String? cageId,
            BreedingPairStatus status,
            String? notes,
            DateTime? created,
            DateTime? updated)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BreedingPair() when $default != null:
        return $default(
            _that.id,
            _that.start,
            _that.end,
            _that.fatherId,
            _that.motherId,
            _that.cageId,
            _that.status,
            _that.notes,
            _that.created,
            _that.updated);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BreedingPair implements BreedingPair {
  _BreedingPair(
      {required this.id,
      required this.start,
      required this.end,
      required this.fatherId,
      required this.motherId,
      required this.cageId,
      required this.status,
      required this.notes,
      this.created,
      this.updated});

  @override
  final String id;
  @override
  final DateTime? start;
  @override
  final DateTime? end;
  @override
  final String fatherId;
  @override
  final String motherId;
  @override
  final String? cageId;
  @override
  final BreedingPairStatus status;
  @override
  final String? notes;
  @override
  final DateTime? created;
  @override
  final DateTime? updated;

  /// Create a copy of BreedingPair
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BreedingPairCopyWith<_BreedingPair> get copyWith =>
      __$BreedingPairCopyWithImpl<_BreedingPair>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BreedingPair &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.fatherId, fatherId) ||
                other.fatherId == fatherId) &&
            (identical(other.motherId, motherId) ||
                other.motherId == motherId) &&
            (identical(other.cageId, cageId) || other.cageId == cageId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, start, end, fatherId,
      motherId, cageId, status, notes, created, updated);

  @override
  String toString() {
    return 'BreedingPair(id: $id, start: $start, end: $end, fatherId: $fatherId, motherId: $motherId, cageId: $cageId, status: $status, notes: $notes, created: $created, updated: $updated)';
  }
}

/// @nodoc
abstract mixin class _$BreedingPairCopyWith<$Res>
    implements $BreedingPairCopyWith<$Res> {
  factory _$BreedingPairCopyWith(
          _BreedingPair value, $Res Function(_BreedingPair) _then) =
      __$BreedingPairCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime? start,
      DateTime? end,
      String fatherId,
      String motherId,
      String? cageId,
      BreedingPairStatus status,
      String? notes,
      DateTime? created,
      DateTime? updated});
}

/// @nodoc
class __$BreedingPairCopyWithImpl<$Res>
    implements _$BreedingPairCopyWith<$Res> {
  __$BreedingPairCopyWithImpl(this._self, this._then);

  final _BreedingPair _self;
  final $Res Function(_BreedingPair) _then;

  /// Create a copy of BreedingPair
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? start = freezed,
    Object? end = freezed,
    Object? fatherId = null,
    Object? motherId = null,
    Object? cageId = freezed,
    Object? status = null,
    Object? notes = freezed,
    Object? created = freezed,
    Object? updated = freezed,
  }) {
    return _then(_BreedingPair(
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
      fatherId: null == fatherId
          ? _self.fatherId
          : fatherId // ignore: cast_nullable_to_non_nullable
              as String,
      motherId: null == motherId
          ? _self.motherId
          : motherId // ignore: cast_nullable_to_non_nullable
              as String,
      cageId: freezed == cageId
          ? _self.cageId
          : cageId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as BreedingPairStatus,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
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
