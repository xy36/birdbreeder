// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breeding_pair_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BreedingPairDto {
  String get id;
  @JsonKey(name: 'father')
  String get fatherId;
  @JsonKey(name: 'mother')
  String get motherId;
  BreedingPairStatus get status;
  String? get collectionId;
  String? get collectionName;
  DateTime? get created;
  DateTime? get updated;
  @UtcDateTimeConverter()
  DateTime? get start;
  @UtcDateTimeConverter()
  DateTime? get end;
  @JsonKey(name: 'cage')
  String? get cageId;
  @StringNullEmptyConverter()
  String? get notes;
  String? get user;

  /// Create a copy of BreedingPairDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BreedingPairDtoCopyWith<BreedingPairDto> get copyWith =>
      _$BreedingPairDtoCopyWithImpl<BreedingPairDto>(
          this as BreedingPairDto, _$identity);

  /// Serializes this BreedingPairDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BreedingPairDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fatherId, fatherId) ||
                other.fatherId == fatherId) &&
            (identical(other.motherId, motherId) ||
                other.motherId == motherId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.cageId, cageId) || other.cageId == cageId) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fatherId,
      motherId,
      status,
      collectionId,
      collectionName,
      created,
      updated,
      start,
      end,
      cageId,
      notes,
      user);

  @override
  String toString() {
    return 'BreedingPairDto(id: $id, fatherId: $fatherId, motherId: $motherId, status: $status, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, start: $start, end: $end, cageId: $cageId, notes: $notes, user: $user)';
  }
}

/// @nodoc
abstract mixin class $BreedingPairDtoCopyWith<$Res> {
  factory $BreedingPairDtoCopyWith(
          BreedingPairDto value, $Res Function(BreedingPairDto) _then) =
      _$BreedingPairDtoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'father') String fatherId,
      @JsonKey(name: 'mother') String motherId,
      BreedingPairStatus status,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated,
      @UtcDateTimeConverter() DateTime? start,
      @UtcDateTimeConverter() DateTime? end,
      @JsonKey(name: 'cage') String? cageId,
      @StringNullEmptyConverter() String? notes,
      String? user});
}

/// @nodoc
class _$BreedingPairDtoCopyWithImpl<$Res>
    implements $BreedingPairDtoCopyWith<$Res> {
  _$BreedingPairDtoCopyWithImpl(this._self, this._then);

  final BreedingPairDto _self;
  final $Res Function(BreedingPairDto) _then;

  /// Create a copy of BreedingPairDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fatherId = null,
    Object? motherId = null,
    Object? status = null,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? cageId = freezed,
    Object? notes = freezed,
    Object? user = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fatherId: null == fatherId
          ? _self.fatherId
          : fatherId // ignore: cast_nullable_to_non_nullable
              as String,
      motherId: null == motherId
          ? _self.motherId
          : motherId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as BreedingPairStatus,
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
      cageId: freezed == cageId
          ? _self.cageId
          : cageId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BreedingPairDto].
extension BreedingPairDtoPatterns on BreedingPairDto {
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
    TResult Function(_BreedingPairDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BreedingPairDto() when $default != null:
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
    TResult Function(_BreedingPairDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BreedingPairDto():
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
    TResult? Function(_BreedingPairDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BreedingPairDto() when $default != null:
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
            @JsonKey(name: 'father') String fatherId,
            @JsonKey(name: 'mother') String motherId,
            BreedingPairStatus status,
            String? collectionId,
            String? collectionName,
            DateTime? created,
            DateTime? updated,
            @UtcDateTimeConverter() DateTime? start,
            @UtcDateTimeConverter() DateTime? end,
            @JsonKey(name: 'cage') String? cageId,
            @StringNullEmptyConverter() String? notes,
            String? user)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BreedingPairDto() when $default != null:
        return $default(
            _that.id,
            _that.fatherId,
            _that.motherId,
            _that.status,
            _that.collectionId,
            _that.collectionName,
            _that.created,
            _that.updated,
            _that.start,
            _that.end,
            _that.cageId,
            _that.notes,
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
            @JsonKey(name: 'father') String fatherId,
            @JsonKey(name: 'mother') String motherId,
            BreedingPairStatus status,
            String? collectionId,
            String? collectionName,
            DateTime? created,
            DateTime? updated,
            @UtcDateTimeConverter() DateTime? start,
            @UtcDateTimeConverter() DateTime? end,
            @JsonKey(name: 'cage') String? cageId,
            @StringNullEmptyConverter() String? notes,
            String? user)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BreedingPairDto():
        return $default(
            _that.id,
            _that.fatherId,
            _that.motherId,
            _that.status,
            _that.collectionId,
            _that.collectionName,
            _that.created,
            _that.updated,
            _that.start,
            _that.end,
            _that.cageId,
            _that.notes,
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
            @JsonKey(name: 'father') String fatherId,
            @JsonKey(name: 'mother') String motherId,
            BreedingPairStatus status,
            String? collectionId,
            String? collectionName,
            DateTime? created,
            DateTime? updated,
            @UtcDateTimeConverter() DateTime? start,
            @UtcDateTimeConverter() DateTime? end,
            @JsonKey(name: 'cage') String? cageId,
            @StringNullEmptyConverter() String? notes,
            String? user)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BreedingPairDto() when $default != null:
        return $default(
            _that.id,
            _that.fatherId,
            _that.motherId,
            _that.status,
            _that.collectionId,
            _that.collectionName,
            _that.created,
            _that.updated,
            _that.start,
            _that.end,
            _that.cageId,
            _that.notes,
            _that.user);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BreedingPairDto implements BreedingPairDto {
  _BreedingPairDto(
      {required this.id,
      @JsonKey(name: 'father') required this.fatherId,
      @JsonKey(name: 'mother') required this.motherId,
      required this.status,
      this.collectionId,
      this.collectionName,
      this.created,
      this.updated,
      @UtcDateTimeConverter() this.start,
      @UtcDateTimeConverter() this.end,
      @JsonKey(name: 'cage') this.cageId,
      @StringNullEmptyConverter() this.notes,
      this.user});
  factory _BreedingPairDto.fromJson(Map<String, dynamic> json) =>
      _$BreedingPairDtoFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'father')
  final String fatherId;
  @override
  @JsonKey(name: 'mother')
  final String motherId;
  @override
  final BreedingPairStatus status;
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
  @JsonKey(name: 'cage')
  final String? cageId;
  @override
  @StringNullEmptyConverter()
  final String? notes;
  @override
  final String? user;

  /// Create a copy of BreedingPairDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BreedingPairDtoCopyWith<_BreedingPairDto> get copyWith =>
      __$BreedingPairDtoCopyWithImpl<_BreedingPairDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BreedingPairDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BreedingPairDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fatherId, fatherId) ||
                other.fatherId == fatherId) &&
            (identical(other.motherId, motherId) ||
                other.motherId == motherId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.cageId, cageId) || other.cageId == cageId) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fatherId,
      motherId,
      status,
      collectionId,
      collectionName,
      created,
      updated,
      start,
      end,
      cageId,
      notes,
      user);

  @override
  String toString() {
    return 'BreedingPairDto(id: $id, fatherId: $fatherId, motherId: $motherId, status: $status, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, start: $start, end: $end, cageId: $cageId, notes: $notes, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$BreedingPairDtoCopyWith<$Res>
    implements $BreedingPairDtoCopyWith<$Res> {
  factory _$BreedingPairDtoCopyWith(
          _BreedingPairDto value, $Res Function(_BreedingPairDto) _then) =
      __$BreedingPairDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'father') String fatherId,
      @JsonKey(name: 'mother') String motherId,
      BreedingPairStatus status,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated,
      @UtcDateTimeConverter() DateTime? start,
      @UtcDateTimeConverter() DateTime? end,
      @JsonKey(name: 'cage') String? cageId,
      @StringNullEmptyConverter() String? notes,
      String? user});
}

/// @nodoc
class __$BreedingPairDtoCopyWithImpl<$Res>
    implements _$BreedingPairDtoCopyWith<$Res> {
  __$BreedingPairDtoCopyWithImpl(this._self, this._then);

  final _BreedingPairDto _self;
  final $Res Function(_BreedingPairDto) _then;

  /// Create a copy of BreedingPairDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? fatherId = null,
    Object? motherId = null,
    Object? status = null,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? start = freezed,
    Object? end = freezed,
    Object? cageId = freezed,
    Object? notes = freezed,
    Object? user = freezed,
  }) {
    return _then(_BreedingPairDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fatherId: null == fatherId
          ? _self.fatherId
          : fatherId // ignore: cast_nullable_to_non_nullable
              as String,
      motherId: null == motherId
          ? _self.motherId
          : motherId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as BreedingPairStatus,
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
      cageId: freezed == cageId
          ? _self.cageId
          : cageId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
