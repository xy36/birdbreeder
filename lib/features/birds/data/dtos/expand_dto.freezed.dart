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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpandDtoCopyWith<ExpandDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpandDtoCopyWith<$Res> {
  factory $ExpandDtoCopyWith(ExpandDto value, $Res Function(ExpandDto) then) =
      _$ExpandDtoCopyWithImpl<$Res, ExpandDto>;
  @useResult
  $Res call({BirdColorDto? color, SpeciesDto? species, CageDto? cage});

  $BirdColorDtoCopyWith<$Res>? get color;
  $SpeciesDtoCopyWith<$Res>? get species;
  $CageDtoCopyWith<$Res>? get cage;
}

/// @nodoc
class _$ExpandDtoCopyWithImpl<$Res, $Val extends ExpandDto>
    implements $ExpandDtoCopyWith<$Res> {
  _$ExpandDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? species = freezed,
    Object? cage = freezed,
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
    ) as $Val);
  }

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
}

/// @nodoc
abstract class _$$ExpandDtoImplCopyWith<$Res>
    implements $ExpandDtoCopyWith<$Res> {
  factory _$$ExpandDtoImplCopyWith(
          _$ExpandDtoImpl value, $Res Function(_$ExpandDtoImpl) then) =
      __$$ExpandDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BirdColorDto? color, SpeciesDto? species, CageDto? cage});

  @override
  $BirdColorDtoCopyWith<$Res>? get color;
  @override
  $SpeciesDtoCopyWith<$Res>? get species;
  @override
  $CageDtoCopyWith<$Res>? get cage;
}

/// @nodoc
class __$$ExpandDtoImplCopyWithImpl<$Res>
    extends _$ExpandDtoCopyWithImpl<$Res, _$ExpandDtoImpl>
    implements _$$ExpandDtoImplCopyWith<$Res> {
  __$$ExpandDtoImplCopyWithImpl(
      _$ExpandDtoImpl _value, $Res Function(_$ExpandDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? species = freezed,
    Object? cage = freezed,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpandDtoImpl implements _ExpandDto {
  _$ExpandDtoImpl(
      {required this.color, required this.species, required this.cage});

  factory _$ExpandDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpandDtoImplFromJson(json);

  @override
  final BirdColorDto? color;
  @override
  final SpeciesDto? species;
  @override
  final CageDto? cage;

  @override
  String toString() {
    return 'ExpandDto(color: $color, species: $species, cage: $cage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpandDtoImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.cage, cage) || other.cage == cage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, color, species, cage);

  @JsonKey(ignore: true)
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
      required final CageDto? cage}) = _$ExpandDtoImpl;

  factory _ExpandDto.fromJson(Map<String, dynamic> json) =
      _$ExpandDtoImpl.fromJson;

  @override
  BirdColorDto? get color;
  @override
  SpeciesDto? get species;
  @override
  CageDto? get cage;
  @override
  @JsonKey(ignore: true)
  _$$ExpandDtoImplCopyWith<_$ExpandDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
