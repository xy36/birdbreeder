// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'egg_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EggDto _$EggDtoFromJson(Map<String, dynamic> json) {
  return _EggDto.fromJson(json);
}

/// @nodoc
mixin _$EggDto {
  String get id => throw _privateConstructorUsedError;
  String? get collectionId => throw _privateConstructorUsedError;
  String? get collectionName => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;
  DateTime? get updated => throw _privateConstructorUsedError;
  @JsonKey(name: 'brood')
  String get broodId => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  DateTime get laidAt => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  DateTime? get hatchedAt => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  DateTime? get fledgedAt => throw _privateConstructorUsedError;
  EggStatus get status => throw _privateConstructorUsedError;
  @StringNullEmptyConverter()
  String? get ringnumber => throw _privateConstructorUsedError;
  @StringNullEmptyConverter()
  @JsonKey(name: 'color')
  String? get colorId => throw _privateConstructorUsedError;
  @StringNullEmptyConverter()
  @JsonKey(name: 'cage')
  String? get cageId => throw _privateConstructorUsedError;
  @StringNullEmptyConverter()
  @JsonKey(name: 'species')
  String? get speciesId => throw _privateConstructorUsedError;
  @StringNullEmptyConverter()
  String? get birdId => throw _privateConstructorUsedError;
  @StringNullEmptyConverter()
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this EggDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EggDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EggDtoCopyWith<EggDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EggDtoCopyWith<$Res> {
  factory $EggDtoCopyWith(EggDto value, $Res Function(EggDto) then) =
      _$EggDtoCopyWithImpl<$Res, EggDto>;
  @useResult
  $Res call(
      {String id,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated,
      @JsonKey(name: 'brood') String broodId,
      int number,
      DateTime laidAt,
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
class _$EggDtoCopyWithImpl<$Res, $Val extends EggDto>
    implements $EggDtoCopyWith<$Res> {
  _$EggDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EggDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? broodId = null,
    Object? number = null,
    Object? laidAt = null,
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
      broodId: null == broodId
          ? _value.broodId
          : broodId // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      laidAt: null == laidAt
          ? _value.laidAt
          : laidAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hatchedAt: freezed == hatchedAt
          ? _value.hatchedAt
          : hatchedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fledgedAt: freezed == fledgedAt
          ? _value.fledgedAt
          : fledgedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EggStatus,
      ringnumber: freezed == ringnumber
          ? _value.ringnumber
          : ringnumber // ignore: cast_nullable_to_non_nullable
              as String?,
      colorId: freezed == colorId
          ? _value.colorId
          : colorId // ignore: cast_nullable_to_non_nullable
              as String?,
      cageId: freezed == cageId
          ? _value.cageId
          : cageId // ignore: cast_nullable_to_non_nullable
              as String?,
      speciesId: freezed == speciesId
          ? _value.speciesId
          : speciesId // ignore: cast_nullable_to_non_nullable
              as String?,
      birdId: freezed == birdId
          ? _value.birdId
          : birdId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EggDtoImplCopyWith<$Res> implements $EggDtoCopyWith<$Res> {
  factory _$$EggDtoImplCopyWith(
          _$EggDtoImpl value, $Res Function(_$EggDtoImpl) then) =
      __$$EggDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated,
      @JsonKey(name: 'brood') String broodId,
      int number,
      DateTime laidAt,
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
class __$$EggDtoImplCopyWithImpl<$Res>
    extends _$EggDtoCopyWithImpl<$Res, _$EggDtoImpl>
    implements _$$EggDtoImplCopyWith<$Res> {
  __$$EggDtoImplCopyWithImpl(
      _$EggDtoImpl _value, $Res Function(_$EggDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of EggDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? created = freezed,
    Object? updated = freezed,
    Object? broodId = null,
    Object? number = null,
    Object? laidAt = null,
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
    return _then(_$EggDtoImpl(
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
      broodId: null == broodId
          ? _value.broodId
          : broodId // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      laidAt: null == laidAt
          ? _value.laidAt
          : laidAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      hatchedAt: freezed == hatchedAt
          ? _value.hatchedAt
          : hatchedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fledgedAt: freezed == fledgedAt
          ? _value.fledgedAt
          : fledgedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EggStatus,
      ringnumber: freezed == ringnumber
          ? _value.ringnumber
          : ringnumber // ignore: cast_nullable_to_non_nullable
              as String?,
      colorId: freezed == colorId
          ? _value.colorId
          : colorId // ignore: cast_nullable_to_non_nullable
              as String?,
      cageId: freezed == cageId
          ? _value.cageId
          : cageId // ignore: cast_nullable_to_non_nullable
              as String?,
      speciesId: freezed == speciesId
          ? _value.speciesId
          : speciesId // ignore: cast_nullable_to_non_nullable
              as String?,
      birdId: freezed == birdId
          ? _value.birdId
          : birdId // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EggDtoImpl implements _EggDto {
  const _$EggDtoImpl(
      {required this.id,
      this.collectionId,
      this.collectionName,
      this.created,
      this.updated,
      @JsonKey(name: 'brood') required this.broodId,
      required this.number,
      required this.laidAt,
      @UtcDateTimeConverter() this.hatchedAt,
      @UtcDateTimeConverter() this.fledgedAt,
      this.status = EggStatus.laid,
      @StringNullEmptyConverter() this.ringnumber,
      @StringNullEmptyConverter() @JsonKey(name: 'color') this.colorId,
      @StringNullEmptyConverter() @JsonKey(name: 'cage') this.cageId,
      @StringNullEmptyConverter() @JsonKey(name: 'species') this.speciesId,
      @StringNullEmptyConverter() this.birdId,
      @StringNullEmptyConverter() this.notes});

  factory _$EggDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EggDtoImplFromJson(json);

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
  @JsonKey(name: 'brood')
  final String broodId;
  @override
  final int number;
  @override
  final DateTime laidAt;
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

  @override
  String toString() {
    return 'EggDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, broodId: $broodId, number: $number, laidAt: $laidAt, hatchedAt: $hatchedAt, fledgedAt: $fledgedAt, status: $status, ringnumber: $ringnumber, colorId: $colorId, cageId: $cageId, speciesId: $speciesId, birdId: $birdId, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EggDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.broodId, broodId) || other.broodId == broodId) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.laidAt, laidAt) || other.laidAt == laidAt) &&
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
      collectionId,
      collectionName,
      created,
      updated,
      broodId,
      number,
      laidAt,
      hatchedAt,
      fledgedAt,
      status,
      ringnumber,
      colorId,
      cageId,
      speciesId,
      birdId,
      notes);

  /// Create a copy of EggDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EggDtoImplCopyWith<_$EggDtoImpl> get copyWith =>
      __$$EggDtoImplCopyWithImpl<_$EggDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EggDtoImplToJson(
      this,
    );
  }
}

abstract class _EggDto implements EggDto {
  const factory _EggDto(
      {required final String id,
      final String? collectionId,
      final String? collectionName,
      final DateTime? created,
      final DateTime? updated,
      @JsonKey(name: 'brood') required final String broodId,
      required final int number,
      required final DateTime laidAt,
      @UtcDateTimeConverter() final DateTime? hatchedAt,
      @UtcDateTimeConverter() final DateTime? fledgedAt,
      final EggStatus status,
      @StringNullEmptyConverter() final String? ringnumber,
      @StringNullEmptyConverter() @JsonKey(name: 'color') final String? colorId,
      @StringNullEmptyConverter() @JsonKey(name: 'cage') final String? cageId,
      @StringNullEmptyConverter()
      @JsonKey(name: 'species')
      final String? speciesId,
      @StringNullEmptyConverter() final String? birdId,
      @StringNullEmptyConverter() final String? notes}) = _$EggDtoImpl;

  factory _EggDto.fromJson(Map<String, dynamic> json) = _$EggDtoImpl.fromJson;

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
  @JsonKey(name: 'brood')
  String get broodId;
  @override
  int get number;
  @override
  DateTime get laidAt;
  @override
  @UtcDateTimeConverter()
  DateTime? get hatchedAt;
  @override
  @UtcDateTimeConverter()
  DateTime? get fledgedAt;
  @override
  EggStatus get status;
  @override
  @StringNullEmptyConverter()
  String? get ringnumber;
  @override
  @StringNullEmptyConverter()
  @JsonKey(name: 'color')
  String? get colorId;
  @override
  @StringNullEmptyConverter()
  @JsonKey(name: 'cage')
  String? get cageId;
  @override
  @StringNullEmptyConverter()
  @JsonKey(name: 'species')
  String? get speciesId;
  @override
  @StringNullEmptyConverter()
  String? get birdId;
  @override
  @StringNullEmptyConverter()
  String? get notes;

  /// Create a copy of EggDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EggDtoImplCopyWith<_$EggDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
