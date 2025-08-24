// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brood.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Brood {
  String get id => throw _privateConstructorUsedError;
  DateTime? get start => throw _privateConstructorUsedError;
  DateTime? get end => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get cage => throw _privateConstructorUsedError;
  String? get breedingPair => throw _privateConstructorUsedError;

  /// Create a copy of Brood
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BroodCopyWith<Brood> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroodCopyWith<$Res> {
  factory $BroodCopyWith(Brood value, $Res Function(Brood) then) =
      _$BroodCopyWithImpl<$Res, Brood>;
  @useResult
  $Res call(
      {String id,
      DateTime? start,
      DateTime? end,
      String? notes,
      String? cage,
      String? breedingPair});
}

/// @nodoc
class _$BroodCopyWithImpl<$Res, $Val extends Brood>
    implements $BroodCopyWith<$Res> {
  _$BroodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Brood
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? start = freezed,
    Object? end = freezed,
    Object? notes = freezed,
    Object? cage = freezed,
    Object? breedingPair = freezed,
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
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      cage: freezed == cage
          ? _value.cage
          : cage // ignore: cast_nullable_to_non_nullable
              as String?,
      breedingPair: freezed == breedingPair
          ? _value.breedingPair
          : breedingPair // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BroodImplCopyWith<$Res> implements $BroodCopyWith<$Res> {
  factory _$$BroodImplCopyWith(
          _$BroodImpl value, $Res Function(_$BroodImpl) then) =
      __$$BroodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime? start,
      DateTime? end,
      String? notes,
      String? cage,
      String? breedingPair});
}

/// @nodoc
class __$$BroodImplCopyWithImpl<$Res>
    extends _$BroodCopyWithImpl<$Res, _$BroodImpl>
    implements _$$BroodImplCopyWith<$Res> {
  __$$BroodImplCopyWithImpl(
      _$BroodImpl _value, $Res Function(_$BroodImpl) _then)
      : super(_value, _then);

  /// Create a copy of Brood
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? start = freezed,
    Object? end = freezed,
    Object? notes = freezed,
    Object? cage = freezed,
    Object? breedingPair = freezed,
  }) {
    return _then(_$BroodImpl(
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
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      cage: freezed == cage
          ? _value.cage
          : cage // ignore: cast_nullable_to_non_nullable
              as String?,
      breedingPair: freezed == breedingPair
          ? _value.breedingPair
          : breedingPair // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BroodImpl implements _Brood {
  _$BroodImpl(
      {required this.id,
      required this.start,
      required this.end,
      required this.notes,
      required this.cage,
      required this.breedingPair});

  @override
  final String id;
  @override
  final DateTime? start;
  @override
  final DateTime? end;
  @override
  final String? notes;
  @override
  final String? cage;
  @override
  final String? breedingPair;

  @override
  String toString() {
    return 'Brood(id: $id, start: $start, end: $end, notes: $notes, cage: $cage, breedingPair: $breedingPair)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BroodImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.cage, cage) || other.cage == cage) &&
            (identical(other.breedingPair, breedingPair) ||
                other.breedingPair == breedingPair));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, start, end, notes, cage, breedingPair);

  /// Create a copy of Brood
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BroodImplCopyWith<_$BroodImpl> get copyWith =>
      __$$BroodImplCopyWithImpl<_$BroodImpl>(this, _$identity);
}

abstract class _Brood implements Brood {
  factory _Brood(
      {required final String id,
      required final DateTime? start,
      required final DateTime? end,
      required final String? notes,
      required final String? cage,
      required final String? breedingPair}) = _$BroodImpl;

  @override
  String get id;
  @override
  DateTime? get start;
  @override
  DateTime? get end;
  @override
  String? get notes;
  @override
  String? get cage;
  @override
  String? get breedingPair;

  /// Create a copy of Brood
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BroodImplCopyWith<_$BroodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
