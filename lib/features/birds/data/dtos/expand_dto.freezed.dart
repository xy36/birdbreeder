// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expand_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ExpandDto _$ExpandDtoFromJson(Map<String, dynamic> json) {
  return _ExpandDto.fromJson(json);
}

/// @nodoc
mixin _$ExpandDto {
  BirdColorDto? get color => throw _privateConstructorUsedError;
  SpeciesDto? get species => throw _privateConstructorUsedError;
  CageDto? get cage => throw _privateConstructorUsedError;
  BirdDto? get father => throw _privateConstructorUsedError;
  BirdDto? get mother => throw _privateConstructorUsedError;

  /// Serializes this ExpandDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExpandDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExpandDtoCopyWith<ExpandDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpandDtoCopyWith<$Res> {
  factory $ExpandDtoCopyWith(ExpandDto value, $Res Function(ExpandDto) then) =
      _$ExpandDtoCopyWithImpl<$Res, ExpandDto>;
  @useResult
  $Res call(
      {BirdColorDto? color,
      SpeciesDto? species,
      CageDto? cage,
      BirdDto? father,
      BirdDto? mother});

  $BirdColorDtoCopyWith<$Res>? get color;
  $SpeciesDtoCopyWith<$Res>? get species;
  $CageDtoCopyWith<$Res>? get cage;
  $BirdDtoCopyWith<$Res>? get father;
  $BirdDtoCopyWith<$Res>? get mother;
}

/// @nodoc
class _$ExpandDtoCopyWithImpl<$Res, $Val extends ExpandDto>
    implements $ExpandDtoCopyWith<$Res> {
  _$ExpandDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExpandDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? species = freezed,
    Object? cage = freezed,
    Object? father = freezed,
    Object? mother = freezed,
  }) {
    return _then(_value.copyWith(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as BirdColorDto?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as SpeciesDto?,
      cage: freezed == cage
          ? _value.cage
          : cage // ignore: cast_nullable_to_non_nullable
              as CageDto?,
      father: freezed == father
          ? _value.father
          : father // ignore: cast_nullable_to_non_nullable
              as BirdDto?,
      mother: freezed == mother
          ? _value.mother
          : mother // ignore: cast_nullable_to_non_nullable
              as BirdDto?,
    ) as $Val);
  }

  /// Create a copy of ExpandDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BirdColorDtoCopyWith<$Res>? get color {
    if (_value.color == null) {
      return null;
    }

    return $BirdColorDtoCopyWith<$Res>(_value.color!, (value) {
      return _then(_value.copyWith(color: value) as $Val);
    });
  }

  /// Create a copy of ExpandDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SpeciesDtoCopyWith<$Res>? get species {
    if (_value.species == null) {
      return null;
    }

    return $SpeciesDtoCopyWith<$Res>(_value.species!, (value) {
      return _then(_value.copyWith(species: value) as $Val);
    });
  }

  /// Create a copy of ExpandDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CageDtoCopyWith<$Res>? get cage {
    if (_value.cage == null) {
      return null;
    }

    return $CageDtoCopyWith<$Res>(_value.cage!, (value) {
      return _then(_value.copyWith(cage: value) as $Val);
    });
  }

  /// Create a copy of ExpandDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BirdDtoCopyWith<$Res>? get father {
    if (_value.father == null) {
      return null;
    }

    return $BirdDtoCopyWith<$Res>(_value.father!, (value) {
      return _then(_value.copyWith(father: value) as $Val);
    });
  }

  /// Create a copy of ExpandDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BirdDtoCopyWith<$Res>? get mother {
    if (_value.mother == null) {
      return null;
    }

    return $BirdDtoCopyWith<$Res>(_value.mother!, (value) {
      return _then(_value.copyWith(mother: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExpandDtoImplCopyWith<$Res>
    implements $ExpandDtoCopyWith<$Res> {
  factory _$$ExpandDtoImplCopyWith(
          _$ExpandDtoImpl value, $Res Function(_$ExpandDtoImpl) then) =
      __$$ExpandDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BirdColorDto? color,
      SpeciesDto? species,
      CageDto? cage,
      BirdDto? father,
      BirdDto? mother});

  @override
  $BirdColorDtoCopyWith<$Res>? get color;
  @override
  $SpeciesDtoCopyWith<$Res>? get species;
  @override
  $CageDtoCopyWith<$Res>? get cage;
  @override
  $BirdDtoCopyWith<$Res>? get father;
  @override
  $BirdDtoCopyWith<$Res>? get mother;
}

/// @nodoc
class __$$ExpandDtoImplCopyWithImpl<$Res>
    extends _$ExpandDtoCopyWithImpl<$Res, _$ExpandDtoImpl>
    implements _$$ExpandDtoImplCopyWith<$Res> {
  __$$ExpandDtoImplCopyWithImpl(
      _$ExpandDtoImpl _value, $Res Function(_$ExpandDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpandDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? species = freezed,
    Object? cage = freezed,
    Object? father = freezed,
    Object? mother = freezed,
  }) {
    return _then(_$ExpandDtoImpl(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as BirdColorDto?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as SpeciesDto?,
      cage: freezed == cage
          ? _value.cage
          : cage // ignore: cast_nullable_to_non_nullable
              as CageDto?,
      father: freezed == father
          ? _value.father
          : father // ignore: cast_nullable_to_non_nullable
              as BirdDto?,
      mother: freezed == mother
          ? _value.mother
          : mother // ignore: cast_nullable_to_non_nullable
              as BirdDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpandDtoImpl implements _ExpandDto {
  _$ExpandDtoImpl(
      {required this.color,
      required this.species,
      required this.cage,
      required this.father,
      required this.mother});

  factory _$ExpandDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpandDtoImplFromJson(json);

  @override
  final BirdColorDto? color;
  @override
  final SpeciesDto? species;
  @override
  final CageDto? cage;
  @override
  final BirdDto? father;
  @override
  final BirdDto? mother;

  @override
  String toString() {
    return 'ExpandDto(color: $color, species: $species, cage: $cage, father: $father, mother: $mother)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpandDtoImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.cage, cage) || other.cage == cage) &&
            (identical(other.father, father) || other.father == father) &&
            (identical(other.mother, mother) || other.mother == mother));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, color, species, cage, father, mother);

  /// Create a copy of ExpandDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpandDtoImplCopyWith<_$ExpandDtoImpl> get copyWith =>
      __$$ExpandDtoImplCopyWithImpl<_$ExpandDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpandDtoImplToJson(
      this,
    );
  }
}

abstract class _ExpandDto implements ExpandDto {
  factory _ExpandDto(
      {required final BirdColorDto? color,
      required final SpeciesDto? species,
      required final CageDto? cage,
      required final BirdDto? father,
      required final BirdDto? mother}) = _$ExpandDtoImpl;

  factory _ExpandDto.fromJson(Map<String, dynamic> json) =
      _$ExpandDtoImpl.fromJson;

  @override
  BirdColorDto? get color;
  @override
  SpeciesDto? get species;
  @override
  CageDto? get cage;
  @override
  BirdDto? get father;
  @override
  BirdDto? get mother;

  /// Create a copy of ExpandDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExpandDtoImplCopyWith<_$ExpandDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
