// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bird.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Bird {
  BirdId get id; // Audit
  DateTime? get created;
  DateTime? get updated; // Identity
  String? get ringNumber;
  SpeciesId? get speciesId;
  ColorId? get colorId;
  ContactId? get ownerId; // Sex & parents
  Sex get sex;
  BirdId? get fatherId;
  BirdId? get motherId; // Housing & brood
  CageId? get cageId;
  BroodId? get broodId; // Lifecycle
  DateTime? get laidAt;
  DateTime? get hatchedAt;
  DateTime? get fledgedAt;
  DateTime? get bornAt;
  DateTime? get diedAt; // Commerce
  SaleStatus get saleStatus;
  DateTime? get listedAt;
  DateTime? get soldAt;
  double? get askingPrice;
  double? get finalPrice;
  DateTime? get boughtAt;
  double? get boughtPrice;
  ContactId? get boughtFromId;
  ContactId? get soldToId; // Lifecycle
  bool? get unknownLifecycle; // Notes
  String? get notes;

  /// Create a copy of Bird
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BirdCopyWith<Bird> get copyWith =>
      _$BirdCopyWithImpl<Bird>(this as Bird, _$identity);

  /// Serializes this Bird to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Bird &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.ringNumber, ringNumber) ||
                other.ringNumber == ringNumber) &&
            (identical(other.speciesId, speciesId) ||
                other.speciesId == speciesId) &&
            (identical(other.colorId, colorId) || other.colorId == colorId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
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
            (identical(other.boughtFromId, boughtFromId) ||
                other.boughtFromId == boughtFromId) &&
            (identical(other.soldToId, soldToId) ||
                other.soldToId == soldToId) &&
            (identical(other.unknownLifecycle, unknownLifecycle) ||
                other.unknownLifecycle == unknownLifecycle) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        created,
        updated,
        ringNumber,
        speciesId,
        colorId,
        ownerId,
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
        boughtFromId,
        soldToId,
        unknownLifecycle,
        notes
      ]);

  @override
  String toString() {
    return 'Bird(id: $id, created: $created, updated: $updated, ringNumber: $ringNumber, speciesId: $speciesId, colorId: $colorId, ownerId: $ownerId, sex: $sex, fatherId: $fatherId, motherId: $motherId, cageId: $cageId, broodId: $broodId, laidAt: $laidAt, hatchedAt: $hatchedAt, fledgedAt: $fledgedAt, bornAt: $bornAt, diedAt: $diedAt, saleStatus: $saleStatus, listedAt: $listedAt, soldAt: $soldAt, askingPrice: $askingPrice, finalPrice: $finalPrice, boughtAt: $boughtAt, boughtPrice: $boughtPrice, boughtFromId: $boughtFromId, soldToId: $soldToId, unknownLifecycle: $unknownLifecycle, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $BirdCopyWith<$Res> {
  factory $BirdCopyWith(Bird value, $Res Function(Bird) _then) =
      _$BirdCopyWithImpl;
  @useResult
  $Res call(
      {BirdId id,
      DateTime? created,
      DateTime? updated,
      String? ringNumber,
      SpeciesId? speciesId,
      ColorId? colorId,
      ContactId? ownerId,
      Sex sex,
      BirdId? fatherId,
      BirdId? motherId,
      CageId? cageId,
      BroodId? broodId,
      DateTime? laidAt,
      DateTime? hatchedAt,
      DateTime? fledgedAt,
      DateTime? bornAt,
      DateTime? diedAt,
      SaleStatus saleStatus,
      DateTime? listedAt,
      DateTime? soldAt,
      double? askingPrice,
      double? finalPrice,
      DateTime? boughtAt,
      double? boughtPrice,
      ContactId? boughtFromId,
      ContactId? soldToId,
      bool? unknownLifecycle,
      String? notes});
}

/// @nodoc
class _$BirdCopyWithImpl<$Res> implements $BirdCopyWith<$Res> {
  _$BirdCopyWithImpl(this._self, this._then);

  final Bird _self;
  final $Res Function(Bird) _then;

  /// Create a copy of Bird
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? created = freezed,
    Object? updated = freezed,
    Object? ringNumber = freezed,
    Object? speciesId = freezed,
    Object? colorId = freezed,
    Object? ownerId = freezed,
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
    Object? boughtFromId = freezed,
    Object? soldToId = freezed,
    Object? unknownLifecycle = freezed,
    Object? notes = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as BirdId,
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
              as SpeciesId?,
      colorId: freezed == colorId
          ? _self.colorId
          : colorId // ignore: cast_nullable_to_non_nullable
              as ColorId?,
      ownerId: freezed == ownerId
          ? _self.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ContactId?,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      fatherId: freezed == fatherId
          ? _self.fatherId
          : fatherId // ignore: cast_nullable_to_non_nullable
              as BirdId?,
      motherId: freezed == motherId
          ? _self.motherId
          : motherId // ignore: cast_nullable_to_non_nullable
              as BirdId?,
      cageId: freezed == cageId
          ? _self.cageId
          : cageId // ignore: cast_nullable_to_non_nullable
              as CageId?,
      broodId: freezed == broodId
          ? _self.broodId
          : broodId // ignore: cast_nullable_to_non_nullable
              as BroodId?,
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
      boughtFromId: freezed == boughtFromId
          ? _self.boughtFromId
          : boughtFromId // ignore: cast_nullable_to_non_nullable
              as ContactId?,
      soldToId: freezed == soldToId
          ? _self.soldToId
          : soldToId // ignore: cast_nullable_to_non_nullable
              as ContactId?,
      unknownLifecycle: freezed == unknownLifecycle
          ? _self.unknownLifecycle
          : unknownLifecycle // ignore: cast_nullable_to_non_nullable
              as bool?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Bird].
extension BirdPatterns on Bird {
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
    TResult Function(_Bird value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Bird() when $default != null:
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
    TResult Function(_Bird value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Bird():
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
    TResult? Function(_Bird value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Bird() when $default != null:
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
            BirdId id,
            DateTime? created,
            DateTime? updated,
            String? ringNumber,
            SpeciesId? speciesId,
            ColorId? colorId,
            ContactId? ownerId,
            Sex sex,
            BirdId? fatherId,
            BirdId? motherId,
            CageId? cageId,
            BroodId? broodId,
            DateTime? laidAt,
            DateTime? hatchedAt,
            DateTime? fledgedAt,
            DateTime? bornAt,
            DateTime? diedAt,
            SaleStatus saleStatus,
            DateTime? listedAt,
            DateTime? soldAt,
            double? askingPrice,
            double? finalPrice,
            DateTime? boughtAt,
            double? boughtPrice,
            ContactId? boughtFromId,
            ContactId? soldToId,
            bool? unknownLifecycle,
            String? notes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Bird() when $default != null:
        return $default(
            _that.id,
            _that.created,
            _that.updated,
            _that.ringNumber,
            _that.speciesId,
            _that.colorId,
            _that.ownerId,
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
            _that.boughtFromId,
            _that.soldToId,
            _that.unknownLifecycle,
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
            BirdId id,
            DateTime? created,
            DateTime? updated,
            String? ringNumber,
            SpeciesId? speciesId,
            ColorId? colorId,
            ContactId? ownerId,
            Sex sex,
            BirdId? fatherId,
            BirdId? motherId,
            CageId? cageId,
            BroodId? broodId,
            DateTime? laidAt,
            DateTime? hatchedAt,
            DateTime? fledgedAt,
            DateTime? bornAt,
            DateTime? diedAt,
            SaleStatus saleStatus,
            DateTime? listedAt,
            DateTime? soldAt,
            double? askingPrice,
            double? finalPrice,
            DateTime? boughtAt,
            double? boughtPrice,
            ContactId? boughtFromId,
            ContactId? soldToId,
            bool? unknownLifecycle,
            String? notes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Bird():
        return $default(
            _that.id,
            _that.created,
            _that.updated,
            _that.ringNumber,
            _that.speciesId,
            _that.colorId,
            _that.ownerId,
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
            _that.boughtFromId,
            _that.soldToId,
            _that.unknownLifecycle,
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
            BirdId id,
            DateTime? created,
            DateTime? updated,
            String? ringNumber,
            SpeciesId? speciesId,
            ColorId? colorId,
            ContactId? ownerId,
            Sex sex,
            BirdId? fatherId,
            BirdId? motherId,
            CageId? cageId,
            BroodId? broodId,
            DateTime? laidAt,
            DateTime? hatchedAt,
            DateTime? fledgedAt,
            DateTime? bornAt,
            DateTime? diedAt,
            SaleStatus saleStatus,
            DateTime? listedAt,
            DateTime? soldAt,
            double? askingPrice,
            double? finalPrice,
            DateTime? boughtAt,
            double? boughtPrice,
            ContactId? boughtFromId,
            ContactId? soldToId,
            bool? unknownLifecycle,
            String? notes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Bird() when $default != null:
        return $default(
            _that.id,
            _that.created,
            _that.updated,
            _that.ringNumber,
            _that.speciesId,
            _that.colorId,
            _that.ownerId,
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
            _that.boughtFromId,
            _that.soldToId,
            _that.unknownLifecycle,
            _that.notes);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _Bird extends Bird {
  const _Bird(
      {required this.id,
      this.created,
      this.updated,
      this.ringNumber,
      this.speciesId,
      this.colorId,
      this.ownerId,
      this.sex = Sex.unknown,
      this.fatherId,
      this.motherId,
      this.cageId,
      this.broodId,
      this.laidAt,
      this.hatchedAt,
      this.fledgedAt,
      this.bornAt,
      this.diedAt,
      this.saleStatus = SaleStatus.notForSale,
      this.listedAt,
      this.soldAt,
      this.askingPrice,
      this.finalPrice,
      this.boughtAt,
      this.boughtPrice,
      this.boughtFromId,
      this.soldToId,
      this.unknownLifecycle,
      this.notes})
      : super._();
  factory _Bird.fromJson(Map<String, dynamic> json) => _$BirdFromJson(json);

  @override
  final BirdId id;
// Audit
  @override
  final DateTime? created;
  @override
  final DateTime? updated;
// Identity
  @override
  final String? ringNumber;
  @override
  final SpeciesId? speciesId;
  @override
  final ColorId? colorId;
  @override
  final ContactId? ownerId;
// Sex & parents
  @override
  @JsonKey()
  final Sex sex;
  @override
  final BirdId? fatherId;
  @override
  final BirdId? motherId;
// Housing & brood
  @override
  final CageId? cageId;
  @override
  final BroodId? broodId;
// Lifecycle
  @override
  final DateTime? laidAt;
  @override
  final DateTime? hatchedAt;
  @override
  final DateTime? fledgedAt;
  @override
  final DateTime? bornAt;
  @override
  final DateTime? diedAt;
// Commerce
  @override
  @JsonKey()
  final SaleStatus saleStatus;
  @override
  final DateTime? listedAt;
  @override
  final DateTime? soldAt;
  @override
  final double? askingPrice;
  @override
  final double? finalPrice;
  @override
  final DateTime? boughtAt;
  @override
  final double? boughtPrice;
  @override
  final ContactId? boughtFromId;
  @override
  final ContactId? soldToId;
// Lifecycle
  @override
  final bool? unknownLifecycle;
// Notes
  @override
  final String? notes;

  /// Create a copy of Bird
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BirdCopyWith<_Bird> get copyWith =>
      __$BirdCopyWithImpl<_Bird>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BirdToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Bird &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.ringNumber, ringNumber) ||
                other.ringNumber == ringNumber) &&
            (identical(other.speciesId, speciesId) ||
                other.speciesId == speciesId) &&
            (identical(other.colorId, colorId) || other.colorId == colorId) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
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
            (identical(other.boughtFromId, boughtFromId) ||
                other.boughtFromId == boughtFromId) &&
            (identical(other.soldToId, soldToId) ||
                other.soldToId == soldToId) &&
            (identical(other.unknownLifecycle, unknownLifecycle) ||
                other.unknownLifecycle == unknownLifecycle) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        created,
        updated,
        ringNumber,
        speciesId,
        colorId,
        ownerId,
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
        boughtFromId,
        soldToId,
        unknownLifecycle,
        notes
      ]);

  @override
  String toString() {
    return 'Bird(id: $id, created: $created, updated: $updated, ringNumber: $ringNumber, speciesId: $speciesId, colorId: $colorId, ownerId: $ownerId, sex: $sex, fatherId: $fatherId, motherId: $motherId, cageId: $cageId, broodId: $broodId, laidAt: $laidAt, hatchedAt: $hatchedAt, fledgedAt: $fledgedAt, bornAt: $bornAt, diedAt: $diedAt, saleStatus: $saleStatus, listedAt: $listedAt, soldAt: $soldAt, askingPrice: $askingPrice, finalPrice: $finalPrice, boughtAt: $boughtAt, boughtPrice: $boughtPrice, boughtFromId: $boughtFromId, soldToId: $soldToId, unknownLifecycle: $unknownLifecycle, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$BirdCopyWith<$Res> implements $BirdCopyWith<$Res> {
  factory _$BirdCopyWith(_Bird value, $Res Function(_Bird) _then) =
      __$BirdCopyWithImpl;
  @override
  @useResult
  $Res call(
      {BirdId id,
      DateTime? created,
      DateTime? updated,
      String? ringNumber,
      SpeciesId? speciesId,
      ColorId? colorId,
      ContactId? ownerId,
      Sex sex,
      BirdId? fatherId,
      BirdId? motherId,
      CageId? cageId,
      BroodId? broodId,
      DateTime? laidAt,
      DateTime? hatchedAt,
      DateTime? fledgedAt,
      DateTime? bornAt,
      DateTime? diedAt,
      SaleStatus saleStatus,
      DateTime? listedAt,
      DateTime? soldAt,
      double? askingPrice,
      double? finalPrice,
      DateTime? boughtAt,
      double? boughtPrice,
      ContactId? boughtFromId,
      ContactId? soldToId,
      bool? unknownLifecycle,
      String? notes});
}

/// @nodoc
class __$BirdCopyWithImpl<$Res> implements _$BirdCopyWith<$Res> {
  __$BirdCopyWithImpl(this._self, this._then);

  final _Bird _self;
  final $Res Function(_Bird) _then;

  /// Create a copy of Bird
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? created = freezed,
    Object? updated = freezed,
    Object? ringNumber = freezed,
    Object? speciesId = freezed,
    Object? colorId = freezed,
    Object? ownerId = freezed,
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
    Object? boughtFromId = freezed,
    Object? soldToId = freezed,
    Object? unknownLifecycle = freezed,
    Object? notes = freezed,
  }) {
    return _then(_Bird(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as BirdId,
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
              as SpeciesId?,
      colorId: freezed == colorId
          ? _self.colorId
          : colorId // ignore: cast_nullable_to_non_nullable
              as ColorId?,
      ownerId: freezed == ownerId
          ? _self.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as ContactId?,
      sex: null == sex
          ? _self.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      fatherId: freezed == fatherId
          ? _self.fatherId
          : fatherId // ignore: cast_nullable_to_non_nullable
              as BirdId?,
      motherId: freezed == motherId
          ? _self.motherId
          : motherId // ignore: cast_nullable_to_non_nullable
              as BirdId?,
      cageId: freezed == cageId
          ? _self.cageId
          : cageId // ignore: cast_nullable_to_non_nullable
              as CageId?,
      broodId: freezed == broodId
          ? _self.broodId
          : broodId // ignore: cast_nullable_to_non_nullable
              as BroodId?,
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
      boughtFromId: freezed == boughtFromId
          ? _self.boughtFromId
          : boughtFromId // ignore: cast_nullable_to_non_nullable
              as ContactId?,
      soldToId: freezed == soldToId
          ? _self.soldToId
          : soldToId // ignore: cast_nullable_to_non_nullable
              as ContactId?,
      unknownLifecycle: freezed == unknownLifecycle
          ? _self.unknownLifecycle
          : unknownLifecycle // ignore: cast_nullable_to_non_nullable
              as bool?,
      notes: freezed == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
