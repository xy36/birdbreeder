// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cage_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CageDto _$CageDtoFromJson(Map<String, dynamic> json) {
  return _CageDto.fromJson(json);
}

/// @nodoc
mixin _$CageDto {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CageDtoCopyWith<CageDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CageDtoCopyWith<$Res> {
  factory $CageDtoCopyWith(CageDto value, $Res Function(CageDto) then) =
      _$CageDtoCopyWithImpl<$Res, CageDto>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$CageDtoCopyWithImpl<$Res, $Val extends CageDto>
    implements $CageDtoCopyWith<$Res> {
  _$CageDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_CageDtoCopyWith<$Res> implements $CageDtoCopyWith<$Res> {
  factory _$$_CageDtoCopyWith(
          _$_CageDto value, $Res Function(_$_CageDto) then) =
      __$$_CageDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$_CageDtoCopyWithImpl<$Res>
    extends _$CageDtoCopyWithImpl<$Res, _$_CageDto>
    implements _$$_CageDtoCopyWith<$Res> {
  __$$_CageDtoCopyWithImpl(_$_CageDto _value, $Res Function(_$_CageDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_CageDto(
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
class _$_CageDto implements _CageDto {
  _$_CageDto({required this.id, required this.name});

  factory _$_CageDto.fromJson(Map<String, dynamic> json) =>
      _$$_CageDtoFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'CageDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CageDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CageDtoCopyWith<_$_CageDto> get copyWith =>
      __$$_CageDtoCopyWithImpl<_$_CageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CageDtoToJson(
      this,
    );
  }
}

abstract class _CageDto implements CageDto {
  factory _CageDto({required final String? id, required final String? name}) =
      _$_CageDto;

  factory _CageDto.fromJson(Map<String, dynamic> json) = _$_CageDto.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_CageDtoCopyWith<_$_CageDto> get copyWith =>
      throw _privateConstructorUsedError;
}
