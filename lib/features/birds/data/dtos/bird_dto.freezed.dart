// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bird_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BirdDto _$BirdDtoFromJson(Map<String, dynamic> json) {
  return _BirdDto.fromJson(json);
}

/// @nodoc
mixin _$BirdDto {
  String get id => throw _privateConstructorUsedError;
  String? get collectionId => throw _privateConstructorUsedError;
  String? get collectionName => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;
  DateTime? get updated => throw _privateConstructorUsedError;
  @JsonKey(name: 'ringnumber')
  @StringNullEmptyConverter()
  String? get ringNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'species')
  @StringNullEmptyConverter()
  String? get speciesId => throw _privateConstructorUsedError;
  @JsonKey(name: 'color')
  @StringNullEmptyConverter()
  String? get colorId => throw _privateConstructorUsedError;
  Sex get sex => throw _privateConstructorUsedError;
  @JsonKey(name: 'father')
  @StringNullEmptyConverter()
  String? get fatherId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mother')
  @StringNullEmptyConverter()
  String? get motherId => throw _privateConstructorUsedError;
  @JsonKey(name: 'cage')
  @StringNullEmptyConverter()
  String? get cageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'brood')
  @StringNullEmptyConverter()
  String? get broodId => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  DateTime? get laidAt => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  DateTime? get hatchedAt => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  DateTime? get fledgedAt => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  DateTime? get bornAt => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  DateTime? get diedAt => throw _privateConstructorUsedError;
  SaleStatus get saleStatus => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  DateTime? get listedAt => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  DateTime? get soldAt => throw _privateConstructorUsedError;
  double? get askingPrice => throw _privateConstructorUsedError;
  double? get finalPrice => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  DateTime? get boughtAt => throw _privateConstructorUsedError;
  double? get boughtPrice => throw _privateConstructorUsedError;
  @StringNullEmptyConverter()
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'boughtFrom')
  @StringNullEmptyConverter()
  String? get boughtFromId => throw _privateConstructorUsedError;
  @JsonKey(name: 'soldTo')
  @StringNullEmptyConverter()
  String? get soldToId => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner')
  @StringNullEmptyConverter()
  String? get ownerId => throw _privateConstructorUsedError;
  bool? get unknownLifecycle => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;

  /// Serializes this BirdDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BirdDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BirdDtoCopyWith<BirdDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirdDtoCopyWith<$Res> {
  factory $BirdDtoCopyWith(BirdDto value, $Res Function(BirdDto) then) =
      _$BirdDtoCopyWithImpl<$Res, BirdDto>;
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
      String? boughtFromId,
      @JsonKey(name: 'soldTo') @StringNullEmptyConverter() String? soldToId,
      @JsonKey(name: 'owner') @StringNullEmptyConverter() String? ownerId,
      bool? unknownLifecycle,
      String? user});
}

/// @nodoc
class _$BirdDtoCopyWithImpl<$Res, $Val extends BirdDto>
    implements $BirdDtoCopyWith<$Res> {
  _$BirdDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
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
      bornAt: freezed == bornAt
          ? _value.bornAt
          : bornAt // ignore: cast_nullable_to_non_nullable
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
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      boughtFromId: freezed == boughtFromId
          ? _value.boughtFromId
          : boughtFromId // ignore: cast_nullable_to_non_nullable
              as String?,
      soldToId: freezed == soldToId
          ? _value.soldToId
          : soldToId // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      unknownLifecycle: freezed == unknownLifecycle
          ? _value.unknownLifecycle
          : unknownLifecycle // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BirdDtoImplCopyWith<$Res> implements $BirdDtoCopyWith<$Res> {
  factory _$$BirdDtoImplCopyWith(
          _$BirdDtoImpl value, $Res Function(_$BirdDtoImpl) then) =
      __$$BirdDtoImplCopyWithImpl<$Res>;
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
      String? boughtFromId,
      @JsonKey(name: 'soldTo') @StringNullEmptyConverter() String? soldToId,
      @JsonKey(name: 'owner') @StringNullEmptyConverter() String? ownerId,
      bool? unknownLifecycle,
      String? user});
}

/// @nodoc
class __$$BirdDtoImplCopyWithImpl<$Res>
    extends _$BirdDtoCopyWithImpl<$Res, _$BirdDtoImpl>
    implements _$$BirdDtoImplCopyWith<$Res> {
  __$$BirdDtoImplCopyWithImpl(
      _$BirdDtoImpl _value, $Res Function(_$BirdDtoImpl) _then)
      : super(_value, _then);

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
    return _then(_$BirdDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
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
      bornAt: freezed == bornAt
          ? _value.bornAt
          : bornAt // ignore: cast_nullable_to_non_nullable
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
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      boughtFromId: freezed == boughtFromId
          ? _value.boughtFromId
          : boughtFromId // ignore: cast_nullable_to_non_nullable
              as String?,
      soldToId: freezed == soldToId
          ? _value.soldToId
          : soldToId // ignore: cast_nullable_to_non_nullable
              as String?,
      ownerId: freezed == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String?,
      unknownLifecycle: freezed == unknownLifecycle
          ? _value.unknownLifecycle
          : unknownLifecycle // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BirdDtoImpl implements _BirdDto {
  _$BirdDtoImpl(
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

  factory _$BirdDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BirdDtoImplFromJson(json);

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
  final String? boughtFromId;
  @override
  @JsonKey(name: 'soldTo')
  @StringNullEmptyConverter()
  final String? soldToId;
  @override
  @JsonKey(name: 'owner')
  @StringNullEmptyConverter()
  final String? ownerId;
  @override
  final bool? unknownLifecycle;
  @override
  final String? user;

  @override
  String toString() {
    return 'BirdDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, ringNumber: $ringNumber, speciesId: $speciesId, colorId: $colorId, sex: $sex, fatherId: $fatherId, motherId: $motherId, cageId: $cageId, broodId: $broodId, laidAt: $laidAt, hatchedAt: $hatchedAt, fledgedAt: $fledgedAt, bornAt: $bornAt, diedAt: $diedAt, saleStatus: $saleStatus, listedAt: $listedAt, soldAt: $soldAt, askingPrice: $askingPrice, finalPrice: $finalPrice, boughtAt: $boughtAt, boughtPrice: $boughtPrice, notes: $notes, boughtFromId: $boughtFromId, soldToId: $soldToId, ownerId: $ownerId, unknownLifecycle: $unknownLifecycle, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdDtoImpl &&
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

  /// Create a copy of BirdDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdDtoImplCopyWith<_$BirdDtoImpl> get copyWith =>
      __$$BirdDtoImplCopyWithImpl<_$BirdDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BirdDtoImplToJson(
      this,
    );
  }
}

abstract class _BirdDto implements BirdDto {
  factory _BirdDto(
      {required final String id,
      final String? collectionId,
      final String? collectionName,
      final DateTime? created,
      final DateTime? updated,
      @JsonKey(name: 'ringnumber')
      @StringNullEmptyConverter()
      final String? ringNumber,
      @JsonKey(name: 'species')
      @StringNullEmptyConverter()
      final String? speciesId,
      @JsonKey(name: 'color') @StringNullEmptyConverter() final String? colorId,
      final Sex sex,
      @JsonKey(name: 'father')
      @StringNullEmptyConverter()
      final String? fatherId,
      @JsonKey(name: 'mother')
      @StringNullEmptyConverter()
      final String? motherId,
      @JsonKey(name: 'cage') @StringNullEmptyConverter() final String? cageId,
      @JsonKey(name: 'brood') @StringNullEmptyConverter() final String? broodId,
      @UtcDateTimeConverter() final DateTime? laidAt,
      @UtcDateTimeConverter() final DateTime? hatchedAt,
      @UtcDateTimeConverter() final DateTime? fledgedAt,
      @UtcDateTimeConverter() final DateTime? bornAt,
      @UtcDateTimeConverter() final DateTime? diedAt,
      final SaleStatus saleStatus,
      @UtcDateTimeConverter() final DateTime? listedAt,
      @UtcDateTimeConverter() final DateTime? soldAt,
      final double? askingPrice,
      final double? finalPrice,
      @UtcDateTimeConverter() final DateTime? boughtAt,
      final double? boughtPrice,
      @StringNullEmptyConverter() final String? notes,
      @JsonKey(name: 'boughtFrom')
      @StringNullEmptyConverter()
      final String? boughtFromId,
      @JsonKey(name: 'soldTo')
      @StringNullEmptyConverter()
      final String? soldToId,
      @JsonKey(name: 'owner') @StringNullEmptyConverter() final String? ownerId,
      final bool? unknownLifecycle,
      final String? user}) = _$BirdDtoImpl;

  factory _BirdDto.fromJson(Map<String, dynamic> json) = _$BirdDtoImpl.fromJson;

  @override
  String get id;
  @override
  String? get collectionId;
  @override
  String? get collectionName;
  @override
  DateTime? get created;
  @override
  DateTime? get updated;
  @override
  @JsonKey(name: 'ringnumber')
  @StringNullEmptyConverter()
  String? get ringNumber;
  @override
  @JsonKey(name: 'species')
  @StringNullEmptyConverter()
  String? get speciesId;
  @override
  @JsonKey(name: 'color')
  @StringNullEmptyConverter()
  String? get colorId;
  @override
  Sex get sex;
  @override
  @JsonKey(name: 'father')
  @StringNullEmptyConverter()
  String? get fatherId;
  @override
  @JsonKey(name: 'mother')
  @StringNullEmptyConverter()
  String? get motherId;
  @override
  @JsonKey(name: 'cage')
  @StringNullEmptyConverter()
  String? get cageId;
  @override
  @JsonKey(name: 'brood')
  @StringNullEmptyConverter()
  String? get broodId;
  @override
  @UtcDateTimeConverter()
  DateTime? get laidAt;
  @override
  @UtcDateTimeConverter()
  DateTime? get hatchedAt;
  @override
  @UtcDateTimeConverter()
  DateTime? get fledgedAt;
  @override
  @UtcDateTimeConverter()
  DateTime? get bornAt;
  @override
  @UtcDateTimeConverter()
  DateTime? get diedAt;
  @override
  SaleStatus get saleStatus;
  @override
  @UtcDateTimeConverter()
  DateTime? get listedAt;
  @override
  @UtcDateTimeConverter()
  DateTime? get soldAt;
  @override
  double? get askingPrice;
  @override
  double? get finalPrice;
  @override
  @UtcDateTimeConverter()
  DateTime? get boughtAt;
  @override
  double? get boughtPrice;
  @override
  @StringNullEmptyConverter()
  String? get notes;
  @override
  @JsonKey(name: 'boughtFrom')
  @StringNullEmptyConverter()
  String? get boughtFromId;
  @override
  @JsonKey(name: 'soldTo')
  @StringNullEmptyConverter()
  String? get soldToId;
  @override
  @JsonKey(name: 'owner')
  @StringNullEmptyConverter()
  String? get ownerId;
  @override
  bool? get unknownLifecycle;
  @override
  String? get user;

  /// Create a copy of BirdDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BirdDtoImplCopyWith<_$BirdDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
