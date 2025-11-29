// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bird_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BirdDto {
  String get id;
  String? get collectionId;
  String? get collectionName;
  DateTime? get created;
  DateTime? get updated;
  @JsonKey(name: 'ringnumber')
  @StringNullEmptyConverter()
  String? get ringNumber;
  @JsonKey(name: 'species')
  @StringNullEmptyConverter()
  String? get speciesId;
  @JsonKey(name: 'color')
  @StringNullEmptyConverter()
  String? get colorId;
  Sex get sex;
  @JsonKey(name: 'father')
  @StringNullEmptyConverter()
  String? get fatherId;
  @JsonKey(name: 'mother')
  @StringNullEmptyConverter()
  String? get motherId;
  @JsonKey(name: 'cage')
  @StringNullEmptyConverter()
  String? get cageId;
  @JsonKey(name: 'brood')
  @StringNullEmptyConverter()
  String? get broodId;
  @UtcDateTimeConverter()
  DateTime? get laidAt;
  @UtcDateTimeConverter()
  DateTime? get hatchedAt;
  @UtcDateTimeConverter()
  DateTime? get fledgedAt;
  @UtcDateTimeConverter()
  DateTime? get bornAt;
  @UtcDateTimeConverter()
  DateTime? get diedAt;
  SaleStatus get saleStatus;
  @UtcDateTimeConverter()
  DateTime? get listedAt;
  @UtcDateTimeConverter()
  DateTime? get soldAt;
  double? get askingPrice;
  double? get finalPrice;
  @UtcDateTimeConverter()
  DateTime? get boughtAt;
  double? get boughtPrice;
  @StringNullEmptyConverter()
  String? get notes;
  @JsonKey(name: 'boughtFrom')
  @StringNullEmptyConverter()
  ContactId? get boughtFromId;
  @JsonKey(name: 'soldTo')
  @StringNullEmptyConverter()
  ContactId? get soldToId;
  @JsonKey(name: 'owner')
  @StringNullEmptyConverter()
  ContactId? get ownerId;
  bool? get unknownLifecycle;
  String? get user;

  /// Create a copy of BirdDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BirdDtoCopyWith<BirdDto> get copyWith =>
      _$BirdDtoCopyWithImpl<BirdDto>(this as BirdDto, _$identity);

  /// Serializes this BirdDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BirdDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.ringNumber, ringNumber) ||
                other.ringNumber == ringNumber) &&
            (identical(other.speciesId, speciesId) ||
                other.speciesId == speciesId) &&
            (identical(other.colorId, colorId) || other.colorId == colorId) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.fatherId, fatherId) ||
                other.fatherId == fatherId) &&
            (identical(other.motherId, motherId) ||
                other.motherId == motherId) &&
            (identical(other.cageId, cageId) || other.cageId == cageId) &&
            (identical(other.broodId, broodId) || other.broodId == broodId) &&
            (identical(other.laidAt, laidAt) || other.laidAt == laidAt) &&
            (identical(other.hatchedAt, hatchedAt) ||
                other.hatchedAt == hatchedAt) &&
            (identical(other.fledgedAt, fledgedAt) ||
                other.fledgedAt == fledgedAt) &&
            (identical(other.bornAt, bornAt) || other.bornAt == bornAt) &&
            (identical(other.diedAt, diedAt) || other.diedAt == diedAt) &&
            (identical(other.saleStatus, saleStatus) ||
                other.saleStatus == saleStatus) &&
            (identical(other.listedAt, listedAt) ||
                other.listedAt == listedAt) &&
            (identical(other.soldAt, soldAt) || other.soldAt == soldAt) &&
            (identical(other.askingPrice, askingPrice) ||
                other.askingPrice == askingPrice) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(other.boughtAt, boughtAt) ||
                other.boughtAt == boughtAt) &&
            (identical(other.boughtPrice, boughtPrice) ||
                other.boughtPrice == boughtPrice) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.boughtFromId, boughtFromId) ||
                other.boughtFromId == boughtFromId) &&
            (identical(other.soldToId, soldToId) ||
                other.soldToId == soldToId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.unknownLifecycle, unknownLifecycle) ||
                other.unknownLifecycle == unknownLifecycle) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        collectionId,
        collectionName,
        created,
        updated,
        ringNumber,
        speciesId,
        colorId,
        sex,
        fatherId,
        motherId,
        cageId,
        broodId,
        laidAt,
        hatchedAt,
        fledgedAt,
        bornAt,
        diedAt,
        saleStatus,
        listedAt,
        soldAt,
        askingPrice,
        finalPrice,
        boughtAt,
        boughtPrice,
        notes,
        boughtFromId,
        soldToId,
        ownerId,
        unknownLifecycle,
        user
      ]);

  @override
  String toString() {
    return 'BirdDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, ringNumber: $ringNumber, speciesId: $speciesId, colorId: $colorId, sex: $sex, fatherId: $fatherId, motherId: $motherId, cageId: $cageId, broodId: $broodId, laidAt: $laidAt, hatchedAt: $hatchedAt, fledgedAt: $fledgedAt, bornAt: $bornAt, diedAt: $diedAt, saleStatus: $saleStatus, listedAt: $listedAt, soldAt: $soldAt, askingPrice: $askingPrice, finalPrice: $finalPrice, boughtAt: $boughtAt, boughtPrice: $boughtPrice, notes: $notes, boughtFromId: $boughtFromId, soldToId: $soldToId, ownerId: $ownerId, unknownLifecycle: $unknownLifecycle, user: $user)';
  }
}

/// @nodoc
abstract mixin class $BirdDtoCopyWith<$Res> {
  factory $BirdDtoCopyWith(BirdDto value, $Res Function(BirdDto) _then) =
      _$BirdDtoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated,
      @JsonKey(name: 'ringnumber')
      @StringNullEmptyConverter()
      String? ringNumber,
      @JsonKey(name: 'species') @StringNullEmptyConverter() String? speciesId,
      @JsonKey(name: 'color') @StringNullEmptyConverter() String? colorId,
      Sex sex,
      @JsonKey(name: 'father') @StringNullEmptyConverter() String? fatherId,
      @JsonKey(name: 'mother') @StringNullEmptyConverter() String? motherId,
      @JsonKey(name: 'cage') @StringNullEmptyConverter() String? cageId,
      @JsonKey(name: 'brood') @StringNullEmptyConverter() String? broodId,
      @UtcDateTimeConverter() DateTime? laidAt,
      @UtcDateTimeConverter() DateTime? hatchedAt,
      @UtcDateTimeConverter() DateTime? fledgedAt,
      @UtcDateTimeConverter() DateTime? bornAt,
      @UtcDateTimeConverter() DateTime? diedAt,
      SaleStatus saleStatus,
      @UtcDateTimeConverter() DateTime? listedAt,
      @UtcDateTimeConverter() DateTime? soldAt,
      double? askingPrice,
      double? finalPrice,
      @UtcDateTimeConverter() DateTime? boughtAt,
      double? boughtPrice,
      @StringNullEmptyConverter() String? notes,
      @JsonKey(name: 'boughtFrom')
      @StringNullEmptyConverter()
      ContactId? boughtFromId,
      @JsonKey(name: 'soldTo') @StringNullEmptyConverter() ContactId? soldToId,
      @JsonKey(name: 'owner') @StringNullEmptyConverter() ContactId? ownerId,
      bool? unknownLifecycle,
      String? user});
}

/// @nodoc
class _$BirdDtoCopyWithImpl<$Res> implements $BirdDtoCopyWith<$Res> {
  _$BirdDtoCopyWithImpl(this._self, this._then);

  final BirdDto _self;
  final $Res Function(BirdDto) _then;

  /// Create a copy of BirdDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? ringNumber = freezed,
    Object? speciesId = freezed,
    Object? colorId = freezed,
    Object? sex = null,
    Object? fatherId = freezed,
    Object? motherId = freezed,
    Object? cageId = freezed,
    Object? broodId = freezed,
    Object? laidAt = freezed,
    Object? hatchedAt = freezed,
    Object? fledgedAt = freezed,
    Object? bornAt = freezed,
    Object? diedAt = freezed,
    Object? saleStatus = null,
    Object? listedAt = freezed,
    Object? soldAt = freezed,
    Object? askingPrice = freezed,
    Object? finalPrice = freezed,
    Object? boughtAt = freezed,
    Object? boughtPrice = freezed,
    Object? notes = freezed,
    Object? boughtFromId = freezed,
    Object? soldToId = freezed,
    Object? ownerId = freezed,
    Object? unknownLifecycle = freezed,
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
      ringNumber: freezed == ringNumber
          ? _self.ringNumber
          : ringNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      speciesId: freezed == speciesId
          ? _self.speciesId
          : speciesId // ignore: cast_nullable_to_non_nullable
              as String?,
      colorId: freezed == colorId
          ? _self.colorId
          : colorId // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      fatherId: freezed == fatherId
          ? _self.fatherId
          : fatherId // ignore: cast_nullable_to_non_nullable
              as String?,
      motherId: freezed == motherId
          ? _self.motherId
          : motherId // ignore: cast_nullable_to_non_nullable
              as String?,
      cageId: freezed == cageId
          ? _self.cageId
          : cageId // ignore: cast_nullable_to_non_nullable
              as String?,
      broodId: freezed == broodId
          ? _self.broodId
          : broodId // ignore: cast_nullable_to_non_nullable
              as String?,
      laidAt: freezed == laidAt
          ? _self.laidAt
          : laidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hatchedAt: freezed == hatchedAt
          ? _self.hatchedAt
          : hatchedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fledgedAt: freezed == fledgedAt
          ? _self.fledgedAt
          : fledgedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bornAt: freezed == bornAt
          ? _self.bornAt
          : bornAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      diedAt: freezed == diedAt
          ? _self.diedAt
          : diedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      saleStatus: null == saleStatus
          ? _self.saleStatus
          : saleStatus // ignore: cast_nullable_to_non_nullable
              as SaleStatus,
      listedAt: freezed == listedAt
          ? _self.listedAt
          : listedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      soldAt: freezed == soldAt
          ? _self.soldAt
          : soldAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      askingPrice: freezed == askingPrice
          ? _self.askingPrice
          : askingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      finalPrice: freezed == finalPrice
          ? _self.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      boughtAt: freezed == boughtAt
          ? _self.boughtAt
          : boughtAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      boughtPrice: freezed == boughtPrice
          ? _self.boughtPrice
          : boughtPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      boughtFromId: freezed == boughtFromId
          ? _self.boughtFromId
          : boughtFromId // ignore: cast_nullable_to_non_nullable
              as ContactId?,
      soldToId: freezed == soldToId
          ? _self.soldToId
          : soldToId // ignore: cast_nullable_to_non_nullable
              as ContactId?,
      ownerId: freezed == ownerId
          ? _self.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ContactId?,
      unknownLifecycle: freezed == unknownLifecycle
          ? _self.unknownLifecycle
          : unknownLifecycle // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BirdDto].
extension BirdDtoPatterns on BirdDto {
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
    TResult Function(_BirdDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BirdDto() when $default != null:
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
    TResult Function(_BirdDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdDto():
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
    TResult? Function(_BirdDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdDto() when $default != null:
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
            @JsonKey(name: 'ringnumber')
            @StringNullEmptyConverter()
            String? ringNumber,
            @JsonKey(name: 'species')
            @StringNullEmptyConverter()
            String? speciesId,
            @JsonKey(name: 'color') @StringNullEmptyConverter() String? colorId,
            Sex sex,
            @JsonKey(name: 'father')
            @StringNullEmptyConverter()
            String? fatherId,
            @JsonKey(name: 'mother')
            @StringNullEmptyConverter()
            String? motherId,
            @JsonKey(name: 'cage') @StringNullEmptyConverter() String? cageId,
            @JsonKey(name: 'brood') @StringNullEmptyConverter() String? broodId,
            @UtcDateTimeConverter() DateTime? laidAt,
            @UtcDateTimeConverter() DateTime? hatchedAt,
            @UtcDateTimeConverter() DateTime? fledgedAt,
            @UtcDateTimeConverter() DateTime? bornAt,
            @UtcDateTimeConverter() DateTime? diedAt,
            SaleStatus saleStatus,
            @UtcDateTimeConverter() DateTime? listedAt,
            @UtcDateTimeConverter() DateTime? soldAt,
            double? askingPrice,
            double? finalPrice,
            @UtcDateTimeConverter() DateTime? boughtAt,
            double? boughtPrice,
            @StringNullEmptyConverter() String? notes,
            @JsonKey(name: 'boughtFrom')
            @StringNullEmptyConverter()
            ContactId? boughtFromId,
            @JsonKey(name: 'soldTo')
            @StringNullEmptyConverter()
            ContactId? soldToId,
            @JsonKey(name: 'owner')
            @StringNullEmptyConverter()
            ContactId? ownerId,
            bool? unknownLifecycle,
            String? user)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BirdDto() when $default != null:
        return $default(
            _that.id,
            _that.collectionId,
            _that.collectionName,
            _that.created,
            _that.updated,
            _that.ringNumber,
            _that.speciesId,
            _that.colorId,
            _that.sex,
            _that.fatherId,
            _that.motherId,
            _that.cageId,
            _that.broodId,
            _that.laidAt,
            _that.hatchedAt,
            _that.fledgedAt,
            _that.bornAt,
            _that.diedAt,
            _that.saleStatus,
            _that.listedAt,
            _that.soldAt,
            _that.askingPrice,
            _that.finalPrice,
            _that.boughtAt,
            _that.boughtPrice,
            _that.notes,
            _that.boughtFromId,
            _that.soldToId,
            _that.ownerId,
            _that.unknownLifecycle,
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
            @JsonKey(name: 'ringnumber')
            @StringNullEmptyConverter()
            String? ringNumber,
            @JsonKey(name: 'species')
            @StringNullEmptyConverter()
            String? speciesId,
            @JsonKey(name: 'color') @StringNullEmptyConverter() String? colorId,
            Sex sex,
            @JsonKey(name: 'father')
            @StringNullEmptyConverter()
            String? fatherId,
            @JsonKey(name: 'mother')
            @StringNullEmptyConverter()
            String? motherId,
            @JsonKey(name: 'cage') @StringNullEmptyConverter() String? cageId,
            @JsonKey(name: 'brood') @StringNullEmptyConverter() String? broodId,
            @UtcDateTimeConverter() DateTime? laidAt,
            @UtcDateTimeConverter() DateTime? hatchedAt,
            @UtcDateTimeConverter() DateTime? fledgedAt,
            @UtcDateTimeConverter() DateTime? bornAt,
            @UtcDateTimeConverter() DateTime? diedAt,
            SaleStatus saleStatus,
            @UtcDateTimeConverter() DateTime? listedAt,
            @UtcDateTimeConverter() DateTime? soldAt,
            double? askingPrice,
            double? finalPrice,
            @UtcDateTimeConverter() DateTime? boughtAt,
            double? boughtPrice,
            @StringNullEmptyConverter() String? notes,
            @JsonKey(name: 'boughtFrom')
            @StringNullEmptyConverter()
            ContactId? boughtFromId,
            @JsonKey(name: 'soldTo')
            @StringNullEmptyConverter()
            ContactId? soldToId,
            @JsonKey(name: 'owner')
            @StringNullEmptyConverter()
            ContactId? ownerId,
            bool? unknownLifecycle,
            String? user)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdDto():
        return $default(
            _that.id,
            _that.collectionId,
            _that.collectionName,
            _that.created,
            _that.updated,
            _that.ringNumber,
            _that.speciesId,
            _that.colorId,
            _that.sex,
            _that.fatherId,
            _that.motherId,
            _that.cageId,
            _that.broodId,
            _that.laidAt,
            _that.hatchedAt,
            _that.fledgedAt,
            _that.bornAt,
            _that.diedAt,
            _that.saleStatus,
            _that.listedAt,
            _that.soldAt,
            _that.askingPrice,
            _that.finalPrice,
            _that.boughtAt,
            _that.boughtPrice,
            _that.notes,
            _that.boughtFromId,
            _that.soldToId,
            _that.ownerId,
            _that.unknownLifecycle,
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
            @JsonKey(name: 'ringnumber')
            @StringNullEmptyConverter()
            String? ringNumber,
            @JsonKey(name: 'species')
            @StringNullEmptyConverter()
            String? speciesId,
            @JsonKey(name: 'color') @StringNullEmptyConverter() String? colorId,
            Sex sex,
            @JsonKey(name: 'father')
            @StringNullEmptyConverter()
            String? fatherId,
            @JsonKey(name: 'mother')
            @StringNullEmptyConverter()
            String? motherId,
            @JsonKey(name: 'cage') @StringNullEmptyConverter() String? cageId,
            @JsonKey(name: 'brood') @StringNullEmptyConverter() String? broodId,
            @UtcDateTimeConverter() DateTime? laidAt,
            @UtcDateTimeConverter() DateTime? hatchedAt,
            @UtcDateTimeConverter() DateTime? fledgedAt,
            @UtcDateTimeConverter() DateTime? bornAt,
            @UtcDateTimeConverter() DateTime? diedAt,
            SaleStatus saleStatus,
            @UtcDateTimeConverter() DateTime? listedAt,
            @UtcDateTimeConverter() DateTime? soldAt,
            double? askingPrice,
            double? finalPrice,
            @UtcDateTimeConverter() DateTime? boughtAt,
            double? boughtPrice,
            @StringNullEmptyConverter() String? notes,
            @JsonKey(name: 'boughtFrom')
            @StringNullEmptyConverter()
            ContactId? boughtFromId,
            @JsonKey(name: 'soldTo')
            @StringNullEmptyConverter()
            ContactId? soldToId,
            @JsonKey(name: 'owner')
            @StringNullEmptyConverter()
            ContactId? ownerId,
            bool? unknownLifecycle,
            String? user)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BirdDto() when $default != null:
        return $default(
            _that.id,
            _that.collectionId,
            _that.collectionName,
            _that.created,
            _that.updated,
            _that.ringNumber,
            _that.speciesId,
            _that.colorId,
            _that.sex,
            _that.fatherId,
            _that.motherId,
            _that.cageId,
            _that.broodId,
            _that.laidAt,
            _that.hatchedAt,
            _that.fledgedAt,
            _that.bornAt,
            _that.diedAt,
            _that.saleStatus,
            _that.listedAt,
            _that.soldAt,
            _that.askingPrice,
            _that.finalPrice,
            _that.boughtAt,
            _that.boughtPrice,
            _that.notes,
            _that.boughtFromId,
            _that.soldToId,
            _that.ownerId,
            _that.unknownLifecycle,
            _that.user);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BirdDto implements BirdDto {
  _BirdDto(
      {required this.id,
      this.collectionId,
      this.collectionName,
      this.created,
      this.updated,
      @JsonKey(name: 'ringnumber') @StringNullEmptyConverter() this.ringNumber,
      @JsonKey(name: 'species') @StringNullEmptyConverter() this.speciesId,
      @JsonKey(name: 'color') @StringNullEmptyConverter() this.colorId,
      this.sex = Sex.unknown,
      @JsonKey(name: 'father') @StringNullEmptyConverter() this.fatherId,
      @JsonKey(name: 'mother') @StringNullEmptyConverter() this.motherId,
      @JsonKey(name: 'cage') @StringNullEmptyConverter() this.cageId,
      @JsonKey(name: 'brood') @StringNullEmptyConverter() this.broodId,
      @UtcDateTimeConverter() this.laidAt,
      @UtcDateTimeConverter() this.hatchedAt,
      @UtcDateTimeConverter() this.fledgedAt,
      @UtcDateTimeConverter() this.bornAt,
      @UtcDateTimeConverter() this.diedAt,
      this.saleStatus = SaleStatus.notForSale,
      @UtcDateTimeConverter() this.listedAt,
      @UtcDateTimeConverter() this.soldAt,
      this.askingPrice,
      this.finalPrice,
      @UtcDateTimeConverter() this.boughtAt,
      this.boughtPrice,
      @StringNullEmptyConverter() this.notes,
      @JsonKey(name: 'boughtFrom')
      @StringNullEmptyConverter()
      this.boughtFromId,
      @JsonKey(name: 'soldTo') @StringNullEmptyConverter() this.soldToId,
      @JsonKey(name: 'owner') @StringNullEmptyConverter() this.ownerId,
      this.unknownLifecycle,
      this.user});
  factory _BirdDto.fromJson(Map<String, dynamic> json) =>
      _$BirdDtoFromJson(json);

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
  @JsonKey(name: 'ringnumber')
  @StringNullEmptyConverter()
  final String? ringNumber;
  @override
  @JsonKey(name: 'species')
  @StringNullEmptyConverter()
  final String? speciesId;
  @override
  @JsonKey(name: 'color')
  @StringNullEmptyConverter()
  final String? colorId;
  @override
  @JsonKey()
  final Sex sex;
  @override
  @JsonKey(name: 'father')
  @StringNullEmptyConverter()
  final String? fatherId;
  @override
  @JsonKey(name: 'mother')
  @StringNullEmptyConverter()
  final String? motherId;
  @override
  @JsonKey(name: 'cage')
  @StringNullEmptyConverter()
  final String? cageId;
  @override
  @JsonKey(name: 'brood')
  @StringNullEmptyConverter()
  final String? broodId;
  @override
  @UtcDateTimeConverter()
  final DateTime? laidAt;
  @override
  @UtcDateTimeConverter()
  final DateTime? hatchedAt;
  @override
  @UtcDateTimeConverter()
  final DateTime? fledgedAt;
  @override
  @UtcDateTimeConverter()
  final DateTime? bornAt;
  @override
  @UtcDateTimeConverter()
  final DateTime? diedAt;
  @override
  @JsonKey()
  final SaleStatus saleStatus;
  @override
  @UtcDateTimeConverter()
  final DateTime? listedAt;
  @override
  @UtcDateTimeConverter()
  final DateTime? soldAt;
  @override
  final double? askingPrice;
  @override
  final double? finalPrice;
  @override
  @UtcDateTimeConverter()
  final DateTime? boughtAt;
  @override
  final double? boughtPrice;
  @override
  @StringNullEmptyConverter()
  final String? notes;
  @override
  @JsonKey(name: 'boughtFrom')
  @StringNullEmptyConverter()
  final ContactId? boughtFromId;
  @override
  @JsonKey(name: 'soldTo')
  @StringNullEmptyConverter()
  final ContactId? soldToId;
  @override
  @JsonKey(name: 'owner')
  @StringNullEmptyConverter()
  final ContactId? ownerId;
  @override
  final bool? unknownLifecycle;
  @override
  final String? user;

  /// Create a copy of BirdDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BirdDtoCopyWith<_BirdDto> get copyWith =>
      __$BirdDtoCopyWithImpl<_BirdDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BirdDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BirdDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.ringNumber, ringNumber) ||
                other.ringNumber == ringNumber) &&
            (identical(other.speciesId, speciesId) ||
                other.speciesId == speciesId) &&
            (identical(other.colorId, colorId) || other.colorId == colorId) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.fatherId, fatherId) ||
                other.fatherId == fatherId) &&
            (identical(other.motherId, motherId) ||
                other.motherId == motherId) &&
            (identical(other.cageId, cageId) || other.cageId == cageId) &&
            (identical(other.broodId, broodId) || other.broodId == broodId) &&
            (identical(other.laidAt, laidAt) || other.laidAt == laidAt) &&
            (identical(other.hatchedAt, hatchedAt) ||
                other.hatchedAt == hatchedAt) &&
            (identical(other.fledgedAt, fledgedAt) ||
                other.fledgedAt == fledgedAt) &&
            (identical(other.bornAt, bornAt) || other.bornAt == bornAt) &&
            (identical(other.diedAt, diedAt) || other.diedAt == diedAt) &&
            (identical(other.saleStatus, saleStatus) ||
                other.saleStatus == saleStatus) &&
            (identical(other.listedAt, listedAt) ||
                other.listedAt == listedAt) &&
            (identical(other.soldAt, soldAt) || other.soldAt == soldAt) &&
            (identical(other.askingPrice, askingPrice) ||
                other.askingPrice == askingPrice) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(other.boughtAt, boughtAt) ||
                other.boughtAt == boughtAt) &&
            (identical(other.boughtPrice, boughtPrice) ||
                other.boughtPrice == boughtPrice) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.boughtFromId, boughtFromId) ||
                other.boughtFromId == boughtFromId) &&
            (identical(other.soldToId, soldToId) ||
                other.soldToId == soldToId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.unknownLifecycle, unknownLifecycle) ||
                other.unknownLifecycle == unknownLifecycle) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        collectionId,
        collectionName,
        created,
        updated,
        ringNumber,
        speciesId,
        colorId,
        sex,
        fatherId,
        motherId,
        cageId,
        broodId,
        laidAt,
        hatchedAt,
        fledgedAt,
        bornAt,
        diedAt,
        saleStatus,
        listedAt,
        soldAt,
        askingPrice,
        finalPrice,
        boughtAt,
        boughtPrice,
        notes,
        boughtFromId,
        soldToId,
        ownerId,
        unknownLifecycle,
        user
      ]);

  @override
  String toString() {
    return 'BirdDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, ringNumber: $ringNumber, speciesId: $speciesId, colorId: $colorId, sex: $sex, fatherId: $fatherId, motherId: $motherId, cageId: $cageId, broodId: $broodId, laidAt: $laidAt, hatchedAt: $hatchedAt, fledgedAt: $fledgedAt, bornAt: $bornAt, diedAt: $diedAt, saleStatus: $saleStatus, listedAt: $listedAt, soldAt: $soldAt, askingPrice: $askingPrice, finalPrice: $finalPrice, boughtAt: $boughtAt, boughtPrice: $boughtPrice, notes: $notes, boughtFromId: $boughtFromId, soldToId: $soldToId, ownerId: $ownerId, unknownLifecycle: $unknownLifecycle, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$BirdDtoCopyWith<$Res> implements $BirdDtoCopyWith<$Res> {
  factory _$BirdDtoCopyWith(_BirdDto value, $Res Function(_BirdDto) _then) =
      __$BirdDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated,
      @JsonKey(name: 'ringnumber')
      @StringNullEmptyConverter()
      String? ringNumber,
      @JsonKey(name: 'species') @StringNullEmptyConverter() String? speciesId,
      @JsonKey(name: 'color') @StringNullEmptyConverter() String? colorId,
      Sex sex,
      @JsonKey(name: 'father') @StringNullEmptyConverter() String? fatherId,
      @JsonKey(name: 'mother') @StringNullEmptyConverter() String? motherId,
      @JsonKey(name: 'cage') @StringNullEmptyConverter() String? cageId,
      @JsonKey(name: 'brood') @StringNullEmptyConverter() String? broodId,
      @UtcDateTimeConverter() DateTime? laidAt,
      @UtcDateTimeConverter() DateTime? hatchedAt,
      @UtcDateTimeConverter() DateTime? fledgedAt,
      @UtcDateTimeConverter() DateTime? bornAt,
      @UtcDateTimeConverter() DateTime? diedAt,
      SaleStatus saleStatus,
      @UtcDateTimeConverter() DateTime? listedAt,
      @UtcDateTimeConverter() DateTime? soldAt,
      double? askingPrice,
      double? finalPrice,
      @UtcDateTimeConverter() DateTime? boughtAt,
      double? boughtPrice,
      @StringNullEmptyConverter() String? notes,
      @JsonKey(name: 'boughtFrom')
      @StringNullEmptyConverter()
      ContactId? boughtFromId,
      @JsonKey(name: 'soldTo') @StringNullEmptyConverter() ContactId? soldToId,
      @JsonKey(name: 'owner') @StringNullEmptyConverter() ContactId? ownerId,
      bool? unknownLifecycle,
      String? user});
}

/// @nodoc
class __$BirdDtoCopyWithImpl<$Res> implements _$BirdDtoCopyWith<$Res> {
  __$BirdDtoCopyWithImpl(this._self, this._then);

  final _BirdDto _self;
  final $Res Function(_BirdDto) _then;

  /// Create a copy of BirdDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? ringNumber = freezed,
    Object? speciesId = freezed,
    Object? colorId = freezed,
    Object? sex = null,
    Object? fatherId = freezed,
    Object? motherId = freezed,
    Object? cageId = freezed,
    Object? broodId = freezed,
    Object? laidAt = freezed,
    Object? hatchedAt = freezed,
    Object? fledgedAt = freezed,
    Object? bornAt = freezed,
    Object? diedAt = freezed,
    Object? saleStatus = null,
    Object? listedAt = freezed,
    Object? soldAt = freezed,
    Object? askingPrice = freezed,
    Object? finalPrice = freezed,
    Object? boughtAt = freezed,
    Object? boughtPrice = freezed,
    Object? notes = freezed,
    Object? boughtFromId = freezed,
    Object? soldToId = freezed,
    Object? ownerId = freezed,
    Object? unknownLifecycle = freezed,
    Object? user = freezed,
  }) {
    return _then(_BirdDto(
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
      ringNumber: freezed == ringNumber
          ? _self.ringNumber
          : ringNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      speciesId: freezed == speciesId
          ? _self.speciesId
          : speciesId // ignore: cast_nullable_to_non_nullable
              as String?,
      colorId: freezed == colorId
          ? _self.colorId
          : colorId // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      fatherId: freezed == fatherId
          ? _self.fatherId
          : fatherId // ignore: cast_nullable_to_non_nullable
              as String?,
      motherId: freezed == motherId
          ? _self.motherId
          : motherId // ignore: cast_nullable_to_non_nullable
              as String?,
      cageId: freezed == cageId
          ? _self.cageId
          : cageId // ignore: cast_nullable_to_non_nullable
              as String?,
      broodId: freezed == broodId
          ? _self.broodId
          : broodId // ignore: cast_nullable_to_non_nullable
              as String?,
      laidAt: freezed == laidAt
          ? _self.laidAt
          : laidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hatchedAt: freezed == hatchedAt
          ? _self.hatchedAt
          : hatchedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fledgedAt: freezed == fledgedAt
          ? _self.fledgedAt
          : fledgedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      bornAt: freezed == bornAt
          ? _self.bornAt
          : bornAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      diedAt: freezed == diedAt
          ? _self.diedAt
          : diedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      saleStatus: null == saleStatus
          ? _self.saleStatus
          : saleStatus // ignore: cast_nullable_to_non_nullable
              as SaleStatus,
      listedAt: freezed == listedAt
          ? _self.listedAt
          : listedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      soldAt: freezed == soldAt
          ? _self.soldAt
          : soldAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      askingPrice: freezed == askingPrice
          ? _self.askingPrice
          : askingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      finalPrice: freezed == finalPrice
          ? _self.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      boughtAt: freezed == boughtAt
          ? _self.boughtAt
          : boughtAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      boughtPrice: freezed == boughtPrice
          ? _self.boughtPrice
          : boughtPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      boughtFromId: freezed == boughtFromId
          ? _self.boughtFromId
          : boughtFromId // ignore: cast_nullable_to_non_nullable
              as ContactId?,
      soldToId: freezed == soldToId
          ? _self.soldToId
          : soldToId // ignore: cast_nullable_to_non_nullable
              as ContactId?,
      ownerId: freezed == ownerId
          ? _self.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ContactId?,
      unknownLifecycle: freezed == unknownLifecycle
          ? _self.unknownLifecycle
          : unknownLifecycle // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
