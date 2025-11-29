// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brood_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BroodDto {
  String get id;
  String? get collectionId;
  String? get collectionName;
  DateTime? get created;
  DateTime? get updated;
  @UtcDateTimeConverter()
  DateTime? get start;
  @UtcDateTimeConverter()
  DateTime? get end;
  @StringNullEmptyConverter()
  String? get notes;
  @StringNullEmptyConverter()
  String? get cage;
  @StringNullEmptyConverter()
  String? get breedingPair;
  String? get user;

  /// Create a copy of BroodDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BroodDtoCopyWith<BroodDto> get copyWith =>
      _$BroodDtoCopyWithImpl<BroodDto>(this as BroodDto, _$identity);

  /// Serializes this BroodDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BroodDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.cage, cage) || other.cage == cage) &&
            (identical(other.breedingPair, breedingPair) ||
                other.breedingPair == breedingPair) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, start, end, notes, cage, breedingPair, user);

  @override
  String toString() {
    return 'BroodDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, start: $start, end: $end, notes: $notes, cage: $cage, breedingPair: $breedingPair, user: $user)';
  }
}

/// @nodoc
abstract mixin class $BroodDtoCopyWith<$Res> {
  factory $BroodDtoCopyWith(BroodDto value, $Res Function(BroodDto) _then) =
      _$BroodDtoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated,
      @UtcDateTimeConverter() DateTime? start,
      @UtcDateTimeConverter() DateTime? end,
      @StringNullEmptyConverter() String? notes,
      @StringNullEmptyConverter() String? cage,
      @StringNullEmptyConverter() String? breedingPair,
      String? user});
}

/// @nodoc
class _$BroodDtoCopyWithImpl<$Res> implements $BroodDtoCopyWith<$Res> {
  _$BroodDtoCopyWithImpl(this._self, this._then);

  final BroodDto _self;
  final $Res Function(BroodDto) _then;

  /// Create a copy of BroodDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? notes = freezed,
    Object? cage = freezed,
    Object? breedingPair = freezed,
    Object? user = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: freezed == collectionId
          ? _self.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _self.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _self.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BroodDto].
extension BroodDtoPatterns on BroodDto {
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
    TResult Function(_BroodDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BroodDto() when $default != null:
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
    TResult Function(_BroodDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BroodDto():
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
    TResult? Function(_BroodDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BroodDto() when $default != null:
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
            String? collectionId,
            String? collectionName,
            DateTime? created,
            DateTime? updated,
            @UtcDateTimeConverter() DateTime? start,
            @UtcDateTimeConverter() DateTime? end,
            @StringNullEmptyConverter() String? notes,
            @StringNullEmptyConverter() String? cage,
            @StringNullEmptyConverter() String? breedingPair,
            String? user)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BroodDto() when $default != null:
        return $default(
            _that.id,
            _that.collectionId,
            _that.collectionName,
            _that.created,
            _that.updated,
            _that.start,
            _that.end,
            _that.notes,
            _that.cage,
            _that.breedingPair,
            _that.user);
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
            String? collectionId,
            String? collectionName,
            DateTime? created,
            DateTime? updated,
            @UtcDateTimeConverter() DateTime? start,
            @UtcDateTimeConverter() DateTime? end,
            @StringNullEmptyConverter() String? notes,
            @StringNullEmptyConverter() String? cage,
            @StringNullEmptyConverter() String? breedingPair,
            String? user)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BroodDto():
        return $default(
            _that.id,
            _that.collectionId,
            _that.collectionName,
            _that.created,
            _that.updated,
            _that.start,
            _that.end,
            _that.notes,
            _that.cage,
            _that.breedingPair,
            _that.user);
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
            String? collectionId,
            String? collectionName,
            DateTime? created,
            DateTime? updated,
            @UtcDateTimeConverter() DateTime? start,
            @UtcDateTimeConverter() DateTime? end,
            @StringNullEmptyConverter() String? notes,
            @StringNullEmptyConverter() String? cage,
            @StringNullEmptyConverter() String? breedingPair,
            String? user)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BroodDto() when $default != null:
        return $default(
            _that.id,
            _that.collectionId,
            _that.collectionName,
            _that.created,
            _that.updated,
            _that.start,
            _that.end,
            _that.notes,
            _that.cage,
            _that.breedingPair,
            _that.user);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BroodDto implements BroodDto {
  _BroodDto(
      {required this.id,
      this.collectionId,
      this.collectionName,
      this.created,
      this.updated,
      @UtcDateTimeConverter() this.start,
      @UtcDateTimeConverter() this.end,
      @StringNullEmptyConverter() this.notes,
      @StringNullEmptyConverter() this.cage,
      @StringNullEmptyConverter() this.breedingPair,
      this.user});
  factory _BroodDto.fromJson(Map<String, dynamic> json) =>
      _$BroodDtoFromJson(json);

  @override
  final String id;
  @override
  final String? collectionId;
  @override
  final String? collectionName;
  @override
  final DateTime? created;
  @override
  final DateTime? updated;
  @override
  @UtcDateTimeConverter()
  final DateTime? start;
  @override
  @UtcDateTimeConverter()
  final DateTime? end;
  @override
  @StringNullEmptyConverter()
  final String? notes;
  @override
  @StringNullEmptyConverter()
  final String? cage;
  @override
  @StringNullEmptyConverter()
  final String? breedingPair;
  @override
  final String? user;

  /// Create a copy of BroodDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BroodDtoCopyWith<_BroodDto> get copyWith =>
      __$BroodDtoCopyWithImpl<_BroodDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BroodDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BroodDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.cage, cage) || other.cage == cage) &&
            (identical(other.breedingPair, breedingPair) ||
                other.breedingPair == breedingPair) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collectionId, collectionName,
      created, updated, start, end, notes, cage, breedingPair, user);

  @override
  String toString() {
    return 'BroodDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, start: $start, end: $end, notes: $notes, cage: $cage, breedingPair: $breedingPair, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$BroodDtoCopyWith<$Res>
    implements $BroodDtoCopyWith<$Res> {
  factory _$BroodDtoCopyWith(_BroodDto value, $Res Function(_BroodDto) _then) =
      __$BroodDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated,
      @UtcDateTimeConverter() DateTime? start,
      @UtcDateTimeConverter() DateTime? end,
      @StringNullEmptyConverter() String? notes,
      @StringNullEmptyConverter() String? cage,
      @StringNullEmptyConverter() String? breedingPair,
      String? user});
}

/// @nodoc
class __$BroodDtoCopyWithImpl<$Res> implements _$BroodDtoCopyWith<$Res> {
  __$BroodDtoCopyWithImpl(this._self, this._then);

  final _BroodDto _self;
  final $Res Function(_BroodDto) _then;

  /// Create a copy of BroodDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? notes = freezed,
    Object? cage = freezed,
    Object? breedingPair = freezed,
    Object? user = freezed,
  }) {
    return _then(_BroodDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: freezed == collectionId
          ? _self.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _self.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _self.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
