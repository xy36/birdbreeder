// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'species_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpeciesDto _$SpeciesDtoFromJson(Map<String, dynamic> json) {
  return _SpeciesDto.fromJson(json);
}

/// @nodoc
mixin _$SpeciesDto {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeciesDtoCopyWith<SpeciesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeciesDtoCopyWith<$Res> {
  factory $SpeciesDtoCopyWith(
          SpeciesDto value, $Res Function(SpeciesDto) then) =
      _$SpeciesDtoCopyWithImpl<$Res, SpeciesDto>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$SpeciesDtoCopyWithImpl<$Res, $Val extends SpeciesDto>
    implements $SpeciesDtoCopyWith<$Res> {
  _$SpeciesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SpeciesDtoCopyWith<$Res>
    implements $SpeciesDtoCopyWith<$Res> {
  factory _$$_SpeciesDtoCopyWith(
          _$_SpeciesDto value, $Res Function(_$_SpeciesDto) then) =
      __$$_SpeciesDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$_SpeciesDtoCopyWithImpl<$Res>
    extends _$SpeciesDtoCopyWithImpl<$Res, _$_SpeciesDto>
    implements _$$_SpeciesDtoCopyWith<$Res> {
  __$$_SpeciesDtoCopyWithImpl(
      _$_SpeciesDto _value, $Res Function(_$_SpeciesDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_SpeciesDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpeciesDto implements _SpeciesDto {
  _$_SpeciesDto({required this.id, required this.name});

  factory _$_SpeciesDto.fromJson(Map<String, dynamic> json) =>
      _$$_SpeciesDtoFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'SpeciesDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpeciesDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SpeciesDtoCopyWith<_$_SpeciesDto> get copyWith =>
      __$$_SpeciesDtoCopyWithImpl<_$_SpeciesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpeciesDtoToJson(
      this,
    );
  }
}

abstract class _SpeciesDto implements SpeciesDto {
  factory _SpeciesDto(
      {required final String? id, required final String? name}) = _$_SpeciesDto;

  factory _SpeciesDto.fromJson(Map<String, dynamic> json) =
      _$_SpeciesDto.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_SpeciesDtoCopyWith<_$_SpeciesDto> get copyWith =>
      throw _privateConstructorUsedError;
}
