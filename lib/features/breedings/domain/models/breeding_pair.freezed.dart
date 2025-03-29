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
  String? get father => throw _privateConstructorUsedError;
  String? get mother => throw _privateConstructorUsedError;
  List<String>? get broods => throw _privateConstructorUsedError;

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
      String? father,
      String? mother,
      List<String>? broods});
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
    Object? father = freezed,
    Object? mother = freezed,
    Object? broods = freezed,
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
      father: freezed == father
          ? _value.father
          : father // ignore: cast_nullable_to_non_nullable
              as String?,
      mother: freezed == mother
          ? _value.mother
          : mother // ignore: cast_nullable_to_non_nullable
              as String?,
      broods: freezed == broods
          ? _value.broods
          : broods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      String? father,
      String? mother,
      List<String>? broods});
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
    Object? father = freezed,
    Object? mother = freezed,
    Object? broods = freezed,
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
      father: freezed == father
          ? _value.father
          : father // ignore: cast_nullable_to_non_nullable
              as String?,
      mother: freezed == mother
          ? _value.mother
          : mother // ignore: cast_nullable_to_non_nullable
              as String?,
      broods: freezed == broods
          ? _value._broods
          : broods // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$BreedingPairImpl implements _BreedingPair {
  _$BreedingPairImpl(
      {required this.id,
      required this.start,
      required this.end,
      required this.father,
      required this.mother,
      required final List<String>? broods})
      : _broods = broods;

  @override
  final String id;
  @override
  final DateTime? start;
  @override
  final DateTime? end;
  @override
  final String? father;
  @override
  final String? mother;
  final List<String>? _broods;
  @override
  List<String>? get broods {
    final value = _broods;
    if (value == null) return null;
    if (_broods is EqualUnmodifiableListView) return _broods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BreedingPair(id: $id, start: $start, end: $end, father: $father, mother: $mother, broods: $broods)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreedingPairImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.father, father) || other.father == father) &&
            (identical(other.mother, mother) || other.mother == mother) &&
            const DeepCollectionEquality().equals(other._broods, _broods));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, start, end, father, mother,
      const DeepCollectionEquality().hash(_broods));

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
      required final String? father,
      required final String? mother,
      required final List<String>? broods}) = _$BreedingPairImpl;

  @override
  String get id;
  @override
  DateTime? get start;
  @override
  DateTime? get end;
  @override
  String? get father;
  @override
  String? get mother;
  @override
  List<String>? get broods;

  /// Create a copy of BreedingPair
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BreedingPairImplCopyWith<_$BreedingPairImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
