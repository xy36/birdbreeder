// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breeding_pair_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BreedingPairDto _$BreedingPairDtoFromJson(Map<String, dynamic> json) {
  return _BreedingPairDto.fromJson(json);
}

/// @nodoc
mixin _$BreedingPairDto {
  String get id => throw _privateConstructorUsedError;
  String? get collectionId => throw _privateConstructorUsedError;
  String? get collectionName => throw _privateConstructorUsedError;
  DateTime? get created => throw _privateConstructorUsedError;
  DateTime? get updated => throw _privateConstructorUsedError;
  @DateTimeNullEmptyConverter()
  DateTime? get start => throw _privateConstructorUsedError;
  @DateTimeNullEmptyConverter()
  DateTime? get end => throw _privateConstructorUsedError;
  @JsonKey(name: 'father')
  String get fatherId => throw _privateConstructorUsedError;
  @JsonKey(name: 'mother')
  String get motherId => throw _privateConstructorUsedError;
  @JsonKey(name: 'cage')
  String? get cageId => throw _privateConstructorUsedError;
  BreedingPairStatus get status => throw _privateConstructorUsedError;
  @StringNullEmptyConverter()
  String? get notes => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;

  /// Serializes this BreedingPairDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BreedingPairDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BreedingPairDtoCopyWith<BreedingPairDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedingPairDtoCopyWith<$Res> {
  factory $BreedingPairDtoCopyWith(
          BreedingPairDto value, $Res Function(BreedingPairDto) then) =
      _$BreedingPairDtoCopyWithImpl<$Res, BreedingPairDto>;
  @useResult
  $Res call(
      {String id,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated,
      @DateTimeNullEmptyConverter() DateTime? start,
      @DateTimeNullEmptyConverter() DateTime? end,
      @JsonKey(name: 'father') String fatherId,
      @JsonKey(name: 'mother') String motherId,
      @JsonKey(name: 'cage') String? cageId,
      BreedingPairStatus status,
      @StringNullEmptyConverter() String? notes,
      String? user});
}

/// @nodoc
class _$BreedingPairDtoCopyWithImpl<$Res, $Val extends BreedingPairDto>
    implements $BreedingPairDtoCopyWith<$Res> {
  _$BreedingPairDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BreedingPairDto
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
    Object? fatherId = null,
    Object? motherId = null,
    Object? cageId = freezed,
    Object? status = null,
    Object? notes = freezed,
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
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fatherId: null == fatherId
          ? _value.fatherId
          : fatherId // ignore: cast_nullable_to_non_nullable
              as String,
      motherId: null == motherId
          ? _value.motherId
          : motherId // ignore: cast_nullable_to_non_nullable
              as String,
      cageId: freezed == cageId
          ? _value.cageId
          : cageId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BreedingPairStatus,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BreedingPairDtoImplCopyWith<$Res>
    implements $BreedingPairDtoCopyWith<$Res> {
  factory _$$BreedingPairDtoImplCopyWith(_$BreedingPairDtoImpl value,
          $Res Function(_$BreedingPairDtoImpl) then) =
      __$$BreedingPairDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? collectionId,
      String? collectionName,
      DateTime? created,
      DateTime? updated,
      @DateTimeNullEmptyConverter() DateTime? start,
      @DateTimeNullEmptyConverter() DateTime? end,
      @JsonKey(name: 'father') String fatherId,
      @JsonKey(name: 'mother') String motherId,
      @JsonKey(name: 'cage') String? cageId,
      BreedingPairStatus status,
      @StringNullEmptyConverter() String? notes,
      String? user});
}

/// @nodoc
class __$$BreedingPairDtoImplCopyWithImpl<$Res>
    extends _$BreedingPairDtoCopyWithImpl<$Res, _$BreedingPairDtoImpl>
    implements _$$BreedingPairDtoImplCopyWith<$Res> {
  __$$BreedingPairDtoImplCopyWithImpl(
      _$BreedingPairDtoImpl _value, $Res Function(_$BreedingPairDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of BreedingPairDto
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
    Object? fatherId = null,
    Object? motherId = null,
    Object? cageId = freezed,
    Object? status = null,
    Object? notes = freezed,
    Object? user = freezed,
  }) {
    return _then(_$BreedingPairDtoImpl(
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
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fatherId: null == fatherId
          ? _value.fatherId
          : fatherId // ignore: cast_nullable_to_non_nullable
              as String,
      motherId: null == motherId
          ? _value.motherId
          : motherId // ignore: cast_nullable_to_non_nullable
              as String,
      cageId: freezed == cageId
          ? _value.cageId
          : cageId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BreedingPairStatus,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BreedingPairDtoImpl implements _BreedingPairDto {
  _$BreedingPairDtoImpl(
      {required this.id,
      this.collectionId,
      this.collectionName,
      this.created,
      this.updated,
      @DateTimeNullEmptyConverter() this.start,
      @DateTimeNullEmptyConverter() this.end,
      @JsonKey(name: 'father') required this.fatherId,
      @JsonKey(name: 'mother') required this.motherId,
      @JsonKey(name: 'cage') this.cageId,
      required this.status,
      @StringNullEmptyConverter() this.notes,
      this.user});

  factory _$BreedingPairDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreedingPairDtoImplFromJson(json);

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
  @DateTimeNullEmptyConverter()
  final DateTime? start;
  @override
  @DateTimeNullEmptyConverter()
  final DateTime? end;
  @override
  @JsonKey(name: 'father')
  final String fatherId;
  @override
  @JsonKey(name: 'mother')
  final String motherId;
  @override
  @JsonKey(name: 'cage')
  final String? cageId;
  @override
  final BreedingPairStatus status;
  @override
  @StringNullEmptyConverter()
  final String? notes;
  @override
  final String? user;

  @override
  String toString() {
    return 'BreedingPairDto(id: $id, collectionId: $collectionId, collectionName: $collectionName, created: $created, updated: $updated, start: $start, end: $end, fatherId: $fatherId, motherId: $motherId, cageId: $cageId, status: $status, notes: $notes, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreedingPairDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.fatherId, fatherId) ||
                other.fatherId == fatherId) &&
            (identical(other.motherId, motherId) ||
                other.motherId == motherId) &&
            (identical(other.cageId, cageId) || other.cageId == cageId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.user, user) || other.user == user));
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
      start,
      end,
      fatherId,
      motherId,
      cageId,
      status,
      notes,
      user);

  /// Create a copy of BreedingPairDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BreedingPairDtoImplCopyWith<_$BreedingPairDtoImpl> get copyWith =>
      __$$BreedingPairDtoImplCopyWithImpl<_$BreedingPairDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BreedingPairDtoImplToJson(
      this,
    );
  }
}

abstract class _BreedingPairDto implements BreedingPairDto {
  factory _BreedingPairDto(
      {required final String id,
      final String? collectionId,
      final String? collectionName,
      final DateTime? created,
      final DateTime? updated,
      @DateTimeNullEmptyConverter() final DateTime? start,
      @DateTimeNullEmptyConverter() final DateTime? end,
      @JsonKey(name: 'father') required final String fatherId,
      @JsonKey(name: 'mother') required final String motherId,
      @JsonKey(name: 'cage') final String? cageId,
      required final BreedingPairStatus status,
      @StringNullEmptyConverter() final String? notes,
      final String? user}) = _$BreedingPairDtoImpl;

  factory _BreedingPairDto.fromJson(Map<String, dynamic> json) =
      _$BreedingPairDtoImpl.fromJson;

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
  @DateTimeNullEmptyConverter()
  DateTime? get start;
  @override
  @DateTimeNullEmptyConverter()
  DateTime? get end;
  @override
  @JsonKey(name: 'father')
  String get fatherId;
  @override
  @JsonKey(name: 'mother')
  String get motherId;
  @override
  @JsonKey(name: 'cage')
  String? get cageId;
  @override
  BreedingPairStatus get status;
  @override
  @StringNullEmptyConverter()
  String? get notes;
  @override
  String? get user;

  /// Create a copy of BreedingPairDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BreedingPairDtoImplCopyWith<_$BreedingPairDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
