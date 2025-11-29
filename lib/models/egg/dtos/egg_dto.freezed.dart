// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'egg_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EggDto {
  String get id;
  @JsonKey(name: 'brood')
  String get broodId;
  int get number;
  DateTime get laidAt;
  String? get collectionId;
  String? get collectionName;
  DateTime? get created;
  DateTime? get updated;
  @UtcDateTimeConverter()
  DateTime? get hatchedAt;
  @UtcDateTimeConverter()
  DateTime? get fledgedAt;
  EggStatus get status;
  @StringNullEmptyConverter()
  String? get ringnumber;
  @StringNullEmptyConverter()
  @JsonKey(name: 'color')
  String? get colorId;
  @StringNullEmptyConverter()
  @JsonKey(name: 'cage')
  String? get cageId;
  @StringNullEmptyConverter()
  @JsonKey(name: 'species')
  String? get speciesId;
  @StringNullEmptyConverter()
  String? get birdId;
  @StringNullEmptyConverter()
  String? get notes;

  /// Create a copy of EggDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EggDtoCopyWith<EggDto> get copyWith =>
      _$EggDtoCopyWithImpl<EggDto>(this as EggDto, _$identity);

  /// Serializes this EggDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EggDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.broodId, broodId) || other.broodId == broodId) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.laidAt, laidAt) || other.laidAt == laidAt) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.hatchedAt, hatchedAt) ||
                other.hatchedAt == hatchedAt) &&
            (identical(other.fledgedAt, fledgedAt) ||
                other.fledgedAt == fledgedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.ringnumber, ringnumber) ||
                other.ringnumber == ringnumber) &&
            (identical(other.colorId, colorId) || other.colorId == colorId) &&
            (identical(other.cageId, cageId) || other.cageId == cageId) &&
            (identical(other.speciesId, speciesId) ||
                other.speciesId == speciesId) &&
            (identical(other.birdId, birdId) || other.birdId == birdId) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      broodId,
      number,
      laidAt,
      collectionId,
      collectionName,
      created,
      updated,
      hatchedAt,
      fledgedAt,
      status,
      ringnumber,
      colorId,
      cageId,
      speciesId,
      birdId,
      notes);

  @override
  String toString() {
    return 'EggDto(id: $id, broodId: $broodId, number: $number, laidAt: $laidAt, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, hatchedAt: $hatchedAt, fledgedAt: $fledgedAt, status: $status, ringnumber: $ringnumber, colorId: $colorId, cageId: $cageId, speciesId: $speciesId, birdId: $birdId, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $EggDtoCopyWith<$Res> {
  factory $EggDtoCopyWith(EggDto value, $Res Function(EggDto) _then) =
      _$EggDtoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'brood') String broodId,
      int number,
      DateTime laidAt,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated,
      @UtcDateTimeConverter() DateTime? hatchedAt,
      @UtcDateTimeConverter() DateTime? fledgedAt,
      EggStatus status,
      @StringNullEmptyConverter() String? ringnumber,
      @StringNullEmptyConverter() @JsonKey(name: 'color') String? colorId,
      @StringNullEmptyConverter() @JsonKey(name: 'cage') String? cageId,
      @StringNullEmptyConverter() @JsonKey(name: 'species') String? speciesId,
      @StringNullEmptyConverter() String? birdId,
      @StringNullEmptyConverter() String? notes});
}

/// @nodoc
class _$EggDtoCopyWithImpl<$Res> implements $EggDtoCopyWith<$Res> {
  _$EggDtoCopyWithImpl(this._self, this._then);

  final EggDto _self;
  final $Res Function(EggDto) _then;

  /// Create a copy of EggDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? broodId = null,
    Object? number = null,
    Object? laidAt = null,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? hatchedAt = freezed,
    Object? fledgedAt = freezed,
    Object? status = null,
    Object? ringnumber = freezed,
    Object? colorId = freezed,
    Object? cageId = freezed,
    Object? speciesId = freezed,
    Object? birdId = freezed,
    Object? notes = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      broodId: null == broodId
          ? _self.broodId
          : broodId // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      laidAt: null == laidAt
          ? _self.laidAt
          : laidAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      hatchedAt: freezed == hatchedAt
          ? _self.hatchedAt
          : hatchedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fledgedAt: freezed == fledgedAt
          ? _self.fledgedAt
          : fledgedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as EggStatus,
      ringnumber: freezed == ringnumber
          ? _self.ringnumber
          : ringnumber // ignore: cast_nullable_to_non_nullable
              as String?,
      colorId: freezed == colorId
          ? _self.colorId
          : colorId // ignore: cast_nullable_to_non_nullable
              as String?,
      cageId: freezed == cageId
          ? _self.cageId
          : cageId // ignore: cast_nullable_to_non_nullable
              as String?,
      speciesId: freezed == speciesId
          ? _self.speciesId
          : speciesId // ignore: cast_nullable_to_non_nullable
              as String?,
      birdId: freezed == birdId
          ? _self.birdId
          : birdId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [EggDto].
extension EggDtoPatterns on EggDto {
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
    TResult Function(_EggDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EggDto() when $default != null:
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
    TResult Function(_EggDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EggDto():
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
    TResult? Function(_EggDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EggDto() when $default != null:
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
            @JsonKey(name: 'brood') String broodId,
            int number,
            DateTime laidAt,
            String? collectionId,
            String? collectionName,
            DateTime? created,
            DateTime? updated,
            @UtcDateTimeConverter() DateTime? hatchedAt,
            @UtcDateTimeConverter() DateTime? fledgedAt,
            EggStatus status,
            @StringNullEmptyConverter() String? ringnumber,
            @StringNullEmptyConverter() @JsonKey(name: 'color') String? colorId,
            @StringNullEmptyConverter() @JsonKey(name: 'cage') String? cageId,
            @StringNullEmptyConverter()
            @JsonKey(name: 'species')
            String? speciesId,
            @StringNullEmptyConverter() String? birdId,
            @StringNullEmptyConverter() String? notes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _EggDto() when $default != null:
        return $default(
            _that.id,
            _that.broodId,
            _that.number,
            _that.laidAt,
            _that.collectionId,
            _that.collectionName,
            _that.created,
            _that.updated,
            _that.hatchedAt,
            _that.fledgedAt,
            _that.status,
            _that.ringnumber,
            _that.colorId,
            _that.cageId,
            _that.speciesId,
            _that.birdId,
            _that.notes);
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
            @JsonKey(name: 'brood') String broodId,
            int number,
            DateTime laidAt,
            String? collectionId,
            String? collectionName,
            DateTime? created,
            DateTime? updated,
            @UtcDateTimeConverter() DateTime? hatchedAt,
            @UtcDateTimeConverter() DateTime? fledgedAt,
            EggStatus status,
            @StringNullEmptyConverter() String? ringnumber,
            @StringNullEmptyConverter() @JsonKey(name: 'color') String? colorId,
            @StringNullEmptyConverter() @JsonKey(name: 'cage') String? cageId,
            @StringNullEmptyConverter()
            @JsonKey(name: 'species')
            String? speciesId,
            @StringNullEmptyConverter() String? birdId,
            @StringNullEmptyConverter() String? notes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EggDto():
        return $default(
            _that.id,
            _that.broodId,
            _that.number,
            _that.laidAt,
            _that.collectionId,
            _that.collectionName,
            _that.created,
            _that.updated,
            _that.hatchedAt,
            _that.fledgedAt,
            _that.status,
            _that.ringnumber,
            _that.colorId,
            _that.cageId,
            _that.speciesId,
            _that.birdId,
            _that.notes);
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
            @JsonKey(name: 'brood') String broodId,
            int number,
            DateTime laidAt,
            String? collectionId,
            String? collectionName,
            DateTime? created,
            DateTime? updated,
            @UtcDateTimeConverter() DateTime? hatchedAt,
            @UtcDateTimeConverter() DateTime? fledgedAt,
            EggStatus status,
            @StringNullEmptyConverter() String? ringnumber,
            @StringNullEmptyConverter() @JsonKey(name: 'color') String? colorId,
            @StringNullEmptyConverter() @JsonKey(name: 'cage') String? cageId,
            @StringNullEmptyConverter()
            @JsonKey(name: 'species')
            String? speciesId,
            @StringNullEmptyConverter() String? birdId,
            @StringNullEmptyConverter() String? notes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _EggDto() when $default != null:
        return $default(
            _that.id,
            _that.broodId,
            _that.number,
            _that.laidAt,
            _that.collectionId,
            _that.collectionName,
            _that.created,
            _that.updated,
            _that.hatchedAt,
            _that.fledgedAt,
            _that.status,
            _that.ringnumber,
            _that.colorId,
            _that.cageId,
            _that.speciesId,
            _that.birdId,
            _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _EggDto implements EggDto {
  const _EggDto(
      {required this.id,
      @JsonKey(name: 'brood') required this.broodId,
      required this.number,
      required this.laidAt,
      this.collectionId,
      this.collectionName,
      this.created,
      this.updated,
      @UtcDateTimeConverter() this.hatchedAt,
      @UtcDateTimeConverter() this.fledgedAt,
      this.status = EggStatus.laid,
      @StringNullEmptyConverter() this.ringnumber,
      @StringNullEmptyConverter() @JsonKey(name: 'color') this.colorId,
      @StringNullEmptyConverter() @JsonKey(name: 'cage') this.cageId,
      @StringNullEmptyConverter() @JsonKey(name: 'species') this.speciesId,
      @StringNullEmptyConverter() this.birdId,
      @StringNullEmptyConverter() this.notes});
  factory _EggDto.fromJson(Map<String, dynamic> json) => _$EggDtoFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'brood')
  final String broodId;
  @override
  final int number;
  @override
  final DateTime laidAt;
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
  final DateTime? hatchedAt;
  @override
  @UtcDateTimeConverter()
  final DateTime? fledgedAt;
  @override
  @JsonKey()
  final EggStatus status;
  @override
  @StringNullEmptyConverter()
  final String? ringnumber;
  @override
  @StringNullEmptyConverter()
  @JsonKey(name: 'color')
  final String? colorId;
  @override
  @StringNullEmptyConverter()
  @JsonKey(name: 'cage')
  final String? cageId;
  @override
  @StringNullEmptyConverter()
  @JsonKey(name: 'species')
  final String? speciesId;
  @override
  @StringNullEmptyConverter()
  final String? birdId;
  @override
  @StringNullEmptyConverter()
  final String? notes;

  /// Create a copy of EggDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EggDtoCopyWith<_EggDto> get copyWith =>
      __$EggDtoCopyWithImpl<_EggDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EggDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EggDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.broodId, broodId) || other.broodId == broodId) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.laidAt, laidAt) || other.laidAt == laidAt) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.hatchedAt, hatchedAt) ||
                other.hatchedAt == hatchedAt) &&
            (identical(other.fledgedAt, fledgedAt) ||
                other.fledgedAt == fledgedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.ringnumber, ringnumber) ||
                other.ringnumber == ringnumber) &&
            (identical(other.colorId, colorId) || other.colorId == colorId) &&
            (identical(other.cageId, cageId) || other.cageId == cageId) &&
            (identical(other.speciesId, speciesId) ||
                other.speciesId == speciesId) &&
            (identical(other.birdId, birdId) || other.birdId == birdId) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      broodId,
      number,
      laidAt,
      collectionId,
      collectionName,
      created,
      updated,
      hatchedAt,
      fledgedAt,
      status,
      ringnumber,
      colorId,
      cageId,
      speciesId,
      birdId,
      notes);

  @override
  String toString() {
    return 'EggDto(id: $id, broodId: $broodId, number: $number, laidAt: $laidAt, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, hatchedAt: $hatchedAt, fledgedAt: $fledgedAt, status: $status, ringnumber: $ringnumber, colorId: $colorId, cageId: $cageId, speciesId: $speciesId, birdId: $birdId, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$EggDtoCopyWith<$Res> implements $EggDtoCopyWith<$Res> {
  factory _$EggDtoCopyWith(_EggDto value, $Res Function(_EggDto) _then) =
      __$EggDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'brood') String broodId,
      int number,
      DateTime laidAt,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated,
      @UtcDateTimeConverter() DateTime? hatchedAt,
      @UtcDateTimeConverter() DateTime? fledgedAt,
      EggStatus status,
      @StringNullEmptyConverter() String? ringnumber,
      @StringNullEmptyConverter() @JsonKey(name: 'color') String? colorId,
      @StringNullEmptyConverter() @JsonKey(name: 'cage') String? cageId,
      @StringNullEmptyConverter() @JsonKey(name: 'species') String? speciesId,
      @StringNullEmptyConverter() String? birdId,
      @StringNullEmptyConverter() String? notes});
}

/// @nodoc
class __$EggDtoCopyWithImpl<$Res> implements _$EggDtoCopyWith<$Res> {
  __$EggDtoCopyWithImpl(this._self, this._then);

  final _EggDto _self;
  final $Res Function(_EggDto) _then;

  /// Create a copy of EggDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? broodId = null,
    Object? number = null,
    Object? laidAt = null,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? hatchedAt = freezed,
    Object? fledgedAt = freezed,
    Object? status = null,
    Object? ringnumber = freezed,
    Object? colorId = freezed,
    Object? cageId = freezed,
    Object? speciesId = freezed,
    Object? birdId = freezed,
    Object? notes = freezed,
  }) {
    return _then(_EggDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      broodId: null == broodId
          ? _self.broodId
          : broodId // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      laidAt: null == laidAt
          ? _self.laidAt
          : laidAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      hatchedAt: freezed == hatchedAt
          ? _self.hatchedAt
          : hatchedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fledgedAt: freezed == fledgedAt
          ? _self.fledgedAt
          : fledgedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as EggStatus,
      ringnumber: freezed == ringnumber
          ? _self.ringnumber
          : ringnumber // ignore: cast_nullable_to_non_nullable
              as String?,
      colorId: freezed == colorId
          ? _self.colorId
          : colorId // ignore: cast_nullable_to_non_nullable
              as String?,
      cageId: freezed == cageId
          ? _self.cageId
          : cageId // ignore: cast_nullable_to_non_nullable
              as String?,
      speciesId: freezed == speciesId
          ? _self.speciesId
          : speciesId // ignore: cast_nullable_to_non_nullable
              as String?,
      birdId: freezed == birdId
          ? _self.birdId
          : birdId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
