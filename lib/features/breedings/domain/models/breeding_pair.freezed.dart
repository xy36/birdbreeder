// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'breeding_pair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BreedingPair {
  String get id => throw _privateConstructorUsedError;
  DateTime? get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;
  String get fatherId => throw _privateConstructorUsedError;
  String get motherId => throw _privateConstructorUsedError;
  String? get cageId => throw _privateConstructorUsedError;
  BreedingPairStatus get status => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Create a copy of BreedingPair
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BreedingPairCopyWith<BreedingPair> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreedingPairCopyWith<$Res> {
  factory $BreedingPairCopyWith(
          BreedingPair value, $Res Function(BreedingPair) then) =
      _$BreedingPairCopyWithImpl<$Res, BreedingPair>;
  @useResult
  $Res call(
      {String id,
      DateTime? start,
      DateTime? end,
      String fatherId,
      String motherId,
      String? cageId,
      BreedingPairStatus status,
      String? notes});
}

/// @nodoc
class _$BreedingPairCopyWithImpl<$Res, $Val extends BreedingPair>
    implements $BreedingPairCopyWith<$Res> {
  _$BreedingPairCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BreedingPair
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? start = freezed,
    Object? end = freezed,
    Object? fatherId = null,
    Object? motherId = null,
    Object? cageId = freezed,
    Object? status = null,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BreedingPairImplCopyWith<$Res>
    implements $BreedingPairCopyWith<$Res> {
  factory _$$BreedingPairImplCopyWith(
          _$BreedingPairImpl value, $Res Function(_$BreedingPairImpl) then) =
      __$$BreedingPairImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime? start,
      DateTime? end,
      String fatherId,
      String motherId,
      String? cageId,
      BreedingPairStatus status,
      String? notes});
}

/// @nodoc
class __$$BreedingPairImplCopyWithImpl<$Res>
    extends _$BreedingPairCopyWithImpl<$Res, _$BreedingPairImpl>
    implements _$$BreedingPairImplCopyWith<$Res> {
  __$$BreedingPairImplCopyWithImpl(
      _$BreedingPairImpl _value, $Res Function(_$BreedingPairImpl) _then)
      : super(_value, _then);

  /// Create a copy of BreedingPair
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? start = freezed,
    Object? end = freezed,
    Object? fatherId = null,
    Object? motherId = null,
    Object? cageId = freezed,
    Object? status = null,
    Object? notes = freezed,
  }) {
    return _then(_$BreedingPairImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc

class _$BreedingPairImpl implements _BreedingPair {
  _$BreedingPairImpl(
      {required this.id,
      required this.start,
      required this.end,
      required this.fatherId,
      required this.motherId,
      required this.cageId,
      required this.status,
      required this.notes});

  @override
  final String id;
  @override
  final DateTime? start;
  @override
  final DateTime? end;
  @override
  final String fatherId;
  @override
  final String motherId;
  @override
  final String? cageId;
  @override
  final BreedingPairStatus status;
  @override
  final String? notes;

  @override
  String toString() {
    return 'BreedingPair(id: $id, start: $start, end: $end, fatherId: $fatherId, motherId: $motherId, cageId: $cageId, status: $status, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreedingPairImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.fatherId, fatherId) ||
                other.fatherId == fatherId) &&
            (identical(other.motherId, motherId) ||
                other.motherId == motherId) &&
            (identical(other.cageId, cageId) || other.cageId == cageId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, start, end, fatherId, motherId, cageId, status, notes);

  /// Create a copy of BreedingPair
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BreedingPairImplCopyWith<_$BreedingPairImpl> get copyWith =>
      __$$BreedingPairImplCopyWithImpl<_$BreedingPairImpl>(this, _$identity);
}

abstract class _BreedingPair implements BreedingPair {
  factory _BreedingPair(
      {required final String id,
      required final DateTime? start,
      required final DateTime? end,
      required final String fatherId,
      required final String motherId,
      required final String? cageId,
      required final BreedingPairStatus status,
      required final String? notes}) = _$BreedingPairImpl;

  @override
  String get id;
  @override
  DateTime? get start;
  @override
  DateTime? get end;
  @override
  String get fatherId;
  @override
  String get motherId;
  @override
  String? get cageId;
  @override
  BreedingPairStatus get status;
  @override
  String? get notes;

  /// Create a copy of BreedingPair
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BreedingPairImplCopyWith<_$BreedingPairImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
