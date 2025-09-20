// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'egg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Egg _$EggFromJson(Map<String, dynamic> json) {
  return _Egg.fromJson(json);
}

/// @nodoc
mixin _$Egg {
  String get id => throw _privateConstructorUsedError;
  String get broodId => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  DateTime get laidAt => throw _privateConstructorUsedError;
  DateTime? get hatchedAt => throw _privateConstructorUsedError;
  DateTime? get fledgedAt => throw _privateConstructorUsedError;
  EggStatus get status => throw _privateConstructorUsedError;
  String? get ringnumber => throw _privateConstructorUsedError;
  String? get colorId => throw _privateConstructorUsedError;
  String? get cageId => throw _privateConstructorUsedError;
  String? get speciesId => throw _privateConstructorUsedError;
  String? get birdId => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this Egg to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Egg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EggCopyWith<Egg> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EggCopyWith<$Res> {
  factory $EggCopyWith(Egg value, $Res Function(Egg) then) =
      _$EggCopyWithImpl<$Res, Egg>;
  @useResult
  $Res call(
      {String id,
      String broodId,
      int number,
      DateTime laidAt,
      DateTime? hatchedAt,
      DateTime? fledgedAt,
      EggStatus status,
      String? ringnumber,
      String? colorId,
      String? cageId,
      String? speciesId,
      String? birdId,
      String? notes});
}

/// @nodoc
class _$EggCopyWithImpl<$Res, $Val extends Egg> implements $EggCopyWith<$Res> {
  _$EggCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Egg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
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
abstract class _$$EggImplCopyWith<$Res> implements $EggCopyWith<$Res> {
  factory _$$EggImplCopyWith(_$EggImpl value, $Res Function(_$EggImpl) then) =
      __$$EggImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String broodId,
      int number,
      DateTime laidAt,
      DateTime? hatchedAt,
      DateTime? fledgedAt,
      EggStatus status,
      String? ringnumber,
      String? colorId,
      String? cageId,
      String? speciesId,
      String? birdId,
      String? notes});
}

/// @nodoc
class __$$EggImplCopyWithImpl<$Res> extends _$EggCopyWithImpl<$Res, _$EggImpl>
    implements _$$EggImplCopyWith<$Res> {
  __$$EggImplCopyWithImpl(_$EggImpl _value, $Res Function(_$EggImpl) _then)
      : super(_value, _then);

  /// Create a copy of Egg
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
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
    return _then(_$EggImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$EggImpl implements _Egg {
  const _$EggImpl(
      {required this.id,
      required this.broodId,
      required this.number,
      required this.laidAt,
      this.hatchedAt,
      this.fledgedAt,
      this.status = EggStatus.laid,
      this.ringnumber,
      this.colorId,
      this.cageId,
      this.speciesId,
      this.birdId,
      this.notes});

  factory _$EggImpl.fromJson(Map<String, dynamic> json) =>
      _$$EggImplFromJson(json);

  @override
  final String id;
  @override
  final String broodId;
  @override
  final int number;
  @override
  final DateTime laidAt;
  @override
  final DateTime? hatchedAt;
  @override
  final DateTime? fledgedAt;
  @override
  @JsonKey()
  final EggStatus status;
  @override
  final String? ringnumber;
  @override
  final String? colorId;
  @override
  final String? cageId;
  @override
  final String? speciesId;
  @override
  final String? birdId;
  @override
  final String? notes;

  @override
  String toString() {
    return 'Egg(id: $id, broodId: $broodId, number: $number, laidAt: $laidAt, hatchedAt: $hatchedAt, fledgedAt: $fledgedAt, status: $status, ringnumber: $ringnumber, colorId: $colorId, cageId: $cageId, speciesId: $speciesId, birdId: $birdId, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EggImpl &&
            (identical(other.id, id) || other.id == id) &&
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

  /// Create a copy of Egg
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EggImplCopyWith<_$EggImpl> get copyWith =>
      __$$EggImplCopyWithImpl<_$EggImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EggImplToJson(
      this,
    );
  }
}

abstract class _Egg implements Egg {
  const factory _Egg(
      {required final String id,
      required final String broodId,
      required final int number,
      required final DateTime laidAt,
      final DateTime? hatchedAt,
      final DateTime? fledgedAt,
      final EggStatus status,
      final String? ringnumber,
      final String? colorId,
      final String? cageId,
      final String? speciesId,
      final String? birdId,
      final String? notes}) = _$EggImpl;

  factory _Egg.fromJson(Map<String, dynamic> json) = _$EggImpl.fromJson;

  @override
  String get id;
  @override
  String get broodId;
  @override
  int get number;
  @override
  DateTime get laidAt;
  @override
  DateTime? get hatchedAt;
  @override
  DateTime? get fledgedAt;
  @override
  EggStatus get status;
  @override
  String? get ringnumber;
  @override
  String? get colorId;
  @override
  String? get cageId;
  @override
  String? get speciesId;
  @override
  String? get birdId;
  @override
  String? get notes;

  /// Create a copy of Egg
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EggImplCopyWith<_$EggImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
