// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bird.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Bird _$BirdFromJson(Map<String, dynamic> json) {
  return _Bird.fromJson(json);
}

/// @nodoc
mixin _$Bird {
  String get id => throw _privateConstructorUsedError; // Audit
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError; // Identity
  String? get ringNumber => throw _privateConstructorUsedError;
  String? get speciesId => throw _privateConstructorUsedError;
  String? get colorId => throw _privateConstructorUsedError;
  String? get ownerId => throw _privateConstructorUsedError; // Sex & parents
  Sex get sex => throw _privateConstructorUsedError;
  String? get fatherId => throw _privateConstructorUsedError;
  String? get motherId => throw _privateConstructorUsedError; // Housing & brood
  String? get cageId => throw _privateConstructorUsedError;
  String? get broodId => throw _privateConstructorUsedError; // Lifecycle
  DateTime? get laidAt => throw _privateConstructorUsedError;
  DateTime? get hatchedAt => throw _privateConstructorUsedError;
  DateTime? get fledgedAt => throw _privateConstructorUsedError;
  DateTime? get diedAt => throw _privateConstructorUsedError; // Commerce
  SaleStatus get saleStatus => throw _privateConstructorUsedError;
  DateTime? get listedAt => throw _privateConstructorUsedError;
  DateTime? get soldAt => throw _privateConstructorUsedError;
  double? get askingPrice => throw _privateConstructorUsedError;
  double? get finalPrice => throw _privateConstructorUsedError;
  DateTime? get boughtAt => throw _privateConstructorUsedError;
  double? get boughtPrice => throw _privateConstructorUsedError;
  String? get boughtFromId => throw _privateConstructorUsedError;
  String? get soldToId => throw _privateConstructorUsedError; // Notes
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this Bird to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Bird
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BirdCopyWith<Bird> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirdCopyWith<$Res> {
  factory $BirdCopyWith(Bird value, $Res Function(Bird) then) =
      _$BirdCopyWithImpl<$Res, Bird>;
  @useResult
  $Res call(
      {String id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? ringNumber,
      String? speciesId,
      String? colorId,
      String? ownerId,
      Sex sex,
      String? fatherId,
      String? motherId,
      String? cageId,
      String? broodId,
      DateTime? laidAt,
      DateTime? hatchedAt,
      DateTime? fledgedAt,
      DateTime? diedAt,
      SaleStatus saleStatus,
      DateTime? listedAt,
      DateTime? soldAt,
      double? askingPrice,
      double? finalPrice,
      DateTime? boughtAt,
      double? boughtPrice,
      String? boughtFromId,
      String? soldToId,
      String? notes});
}

/// @nodoc
class _$BirdCopyWithImpl<$Res, $Val extends Bird>
    implements $BirdCopyWith<$Res> {
  _$BirdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Bird
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ringNumber: freezed == ringNumber
          ? _value.ringNumber
          : ringNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      speciesId: freezed == speciesId
          ? _value.speciesId
          : speciesId // ignore: cast_nullable_to_non_nullable
              as String?,
      colorId: freezed == colorId
          ? _value.colorId
          : colorId // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      fatherId: freezed == fatherId
          ? _value.fatherId
          : fatherId // ignore: cast_nullable_to_non_nullable
              as String?,
      motherId: freezed == motherId
          ? _value.motherId
          : motherId // ignore: cast_nullable_to_non_nullable
              as String?,
      cageId: freezed == cageId
          ? _value.cageId
          : cageId // ignore: cast_nullable_to_non_nullable
              as String?,
      broodId: freezed == broodId
          ? _value.broodId
          : broodId // ignore: cast_nullable_to_non_nullable
              as String?,
      laidAt: freezed == laidAt
          ? _value.laidAt
          : laidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hatchedAt: freezed == hatchedAt
          ? _value.hatchedAt
          : hatchedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fledgedAt: freezed == fledgedAt
          ? _value.fledgedAt
          : fledgedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      diedAt: freezed == diedAt
          ? _value.diedAt
          : diedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      saleStatus: null == saleStatus
          ? _value.saleStatus
          : saleStatus // ignore: cast_nullable_to_non_nullable
              as SaleStatus,
      listedAt: freezed == listedAt
          ? _value.listedAt
          : listedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      soldAt: freezed == soldAt
          ? _value.soldAt
          : soldAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      askingPrice: freezed == askingPrice
          ? _value.askingPrice
          : askingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      finalPrice: freezed == finalPrice
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      boughtAt: freezed == boughtAt
          ? _value.boughtAt
          : boughtAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      boughtPrice: freezed == boughtPrice
          ? _value.boughtPrice
          : boughtPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      boughtFromId: freezed == boughtFromId
          ? _value.boughtFromId
          : boughtFromId // ignore: cast_nullable_to_non_nullable
              as String?,
      soldToId: freezed == soldToId
          ? _value.soldToId
          : soldToId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BirdImplCopyWith<$Res> implements $BirdCopyWith<$Res> {
  factory _$$BirdImplCopyWith(
          _$BirdImpl value, $Res Function(_$BirdImpl) then) =
      __$$BirdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? ringNumber,
      String? speciesId,
      String? colorId,
      String? ownerId,
      Sex sex,
      String? fatherId,
      String? motherId,
      String? cageId,
      String? broodId,
      DateTime? laidAt,
      DateTime? hatchedAt,
      DateTime? fledgedAt,
      DateTime? diedAt,
      SaleStatus saleStatus,
      DateTime? listedAt,
      DateTime? soldAt,
      double? askingPrice,
      double? finalPrice,
      DateTime? boughtAt,
      double? boughtPrice,
      String? boughtFromId,
      String? soldToId,
      String? notes});
}

/// @nodoc
class __$$BirdImplCopyWithImpl<$Res>
    extends _$BirdCopyWithImpl<$Res, _$BirdImpl>
    implements _$$BirdImplCopyWith<$Res> {
  __$$BirdImplCopyWithImpl(_$BirdImpl _value, $Res Function(_$BirdImpl) _then)
      : super(_value, _then);

  /// Create a copy of Bird
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
    Object? notes = freezed,
  }) {
    return _then(_$BirdImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ringNumber: freezed == ringNumber
          ? _value.ringNumber
          : ringNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      speciesId: freezed == speciesId
          ? _value.speciesId
          : speciesId // ignore: cast_nullable_to_non_nullable
              as String?,
      colorId: freezed == colorId
          ? _value.colorId
          : colorId // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as Sex,
      fatherId: freezed == fatherId
          ? _value.fatherId
          : fatherId // ignore: cast_nullable_to_non_nullable
              as String?,
      motherId: freezed == motherId
          ? _value.motherId
          : motherId // ignore: cast_nullable_to_non_nullable
              as String?,
      cageId: freezed == cageId
          ? _value.cageId
          : cageId // ignore: cast_nullable_to_non_nullable
              as String?,
      broodId: freezed == broodId
          ? _value.broodId
          : broodId // ignore: cast_nullable_to_non_nullable
              as String?,
      laidAt: freezed == laidAt
          ? _value.laidAt
          : laidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hatchedAt: freezed == hatchedAt
          ? _value.hatchedAt
          : hatchedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fledgedAt: freezed == fledgedAt
          ? _value.fledgedAt
          : fledgedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      diedAt: freezed == diedAt
          ? _value.diedAt
          : diedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      saleStatus: null == saleStatus
          ? _value.saleStatus
          : saleStatus // ignore: cast_nullable_to_non_nullable
              as SaleStatus,
      listedAt: freezed == listedAt
          ? _value.listedAt
          : listedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      soldAt: freezed == soldAt
          ? _value.soldAt
          : soldAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      askingPrice: freezed == askingPrice
          ? _value.askingPrice
          : askingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      finalPrice: freezed == finalPrice
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      boughtAt: freezed == boughtAt
          ? _value.boughtAt
          : boughtAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      boughtPrice: freezed == boughtPrice
          ? _value.boughtPrice
          : boughtPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      boughtFromId: freezed == boughtFromId
          ? _value.boughtFromId
          : boughtFromId // ignore: cast_nullable_to_non_nullable
              as String?,
      soldToId: freezed == soldToId
          ? _value.soldToId
          : soldToId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BirdImpl implements _Bird {
  const _$BirdImpl(
      {required this.id,
      this.createdAt,
      this.updatedAt,
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
      this.notes});

  factory _$BirdImpl.fromJson(Map<String, dynamic> json) =>
      _$$BirdImplFromJson(json);

  @override
  final String id;
// Audit
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
// Identity
  @override
  final String? ringNumber;
  @override
  final String? speciesId;
  @override
  final String? colorId;
  @override
  final String? ownerId;
// Sex & parents
  @override
  @JsonKey()
  final Sex sex;
  @override
  final String? fatherId;
  @override
  final String? motherId;
// Housing & brood
  @override
  final String? cageId;
  @override
  final String? broodId;
// Lifecycle
  @override
  final DateTime? laidAt;
  @override
  final DateTime? hatchedAt;
  @override
  final DateTime? fledgedAt;
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
  final String? boughtFromId;
  @override
  final String? soldToId;
// Notes
  @override
  final String? notes;

  @override
  String toString() {
    return 'Bird(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, ringNumber: $ringNumber, speciesId: $speciesId, colorId: $colorId, ownerId: $ownerId, sex: $sex, fatherId: $fatherId, motherId: $motherId, cageId: $cageId, broodId: $broodId, laidAt: $laidAt, hatchedAt: $hatchedAt, fledgedAt: $fledgedAt, diedAt: $diedAt, saleStatus: $saleStatus, listedAt: $listedAt, soldAt: $soldAt, askingPrice: $askingPrice, finalPrice: $finalPrice, boughtAt: $boughtAt, boughtPrice: $boughtPrice, boughtFromId: $boughtFromId, soldToId: $soldToId, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
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
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        createdAt,
        updatedAt,
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
        notes
      ]);

  /// Create a copy of Bird
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdImplCopyWith<_$BirdImpl> get copyWith =>
      __$$BirdImplCopyWithImpl<_$BirdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BirdImplToJson(
      this,
    );
  }
}

abstract class _Bird implements Bird {
  const factory _Bird(
      {required final String id,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final String? ringNumber,
      final String? speciesId,
      final String? colorId,
      final String? ownerId,
      final Sex sex,
      final String? fatherId,
      final String? motherId,
      final String? cageId,
      final String? broodId,
      final DateTime? laidAt,
      final DateTime? hatchedAt,
      final DateTime? fledgedAt,
      final DateTime? diedAt,
      final SaleStatus saleStatus,
      final DateTime? listedAt,
      final DateTime? soldAt,
      final double? askingPrice,
      final double? finalPrice,
      final DateTime? boughtAt,
      final double? boughtPrice,
      final String? boughtFromId,
      final String? soldToId,
      final String? notes}) = _$BirdImpl;

  factory _Bird.fromJson(Map<String, dynamic> json) = _$BirdImpl.fromJson;

  @override
  String get id; // Audit
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt; // Identity
  @override
  String? get ringNumber;
  @override
  String? get speciesId;
  @override
  String? get colorId;
  @override
  String? get ownerId; // Sex & parents
  @override
  Sex get sex;
  @override
  String? get fatherId;
  @override
  String? get motherId; // Housing & brood
  @override
  String? get cageId;
  @override
  String? get broodId; // Lifecycle
  @override
  DateTime? get laidAt;
  @override
  DateTime? get hatchedAt;
  @override
  DateTime? get fledgedAt;
  @override
  DateTime? get diedAt; // Commerce
  @override
  SaleStatus get saleStatus;
  @override
  DateTime? get listedAt;
  @override
  DateTime? get soldAt;
  @override
  double? get askingPrice;
  @override
  double? get finalPrice;
  @override
  DateTime? get boughtAt;
  @override
  double? get boughtPrice;
  @override
  String? get boughtFromId;
  @override
  String? get soldToId; // Notes
  @override
  String? get notes;

  /// Create a copy of Bird
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BirdImplCopyWith<_$BirdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
