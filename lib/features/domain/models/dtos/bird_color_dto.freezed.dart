// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bird_color_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BirdColorDto _$BirdColorDtoFromJson(Map<String, dynamic> json) {
  return _BirdColorDto.fromJson(json);
}

/// @nodoc
mixin _$BirdColorDto {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BirdColorDtoCopyWith<BirdColorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirdColorDtoCopyWith<$Res> {
  factory $BirdColorDtoCopyWith(
          BirdColorDto value, $Res Function(BirdColorDto) then) =
      _$BirdColorDtoCopyWithImpl<$Res, BirdColorDto>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$BirdColorDtoCopyWithImpl<$Res, $Val extends BirdColorDto>
    implements $BirdColorDtoCopyWith<$Res> {
  _$BirdColorDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_BirdColorDtoCopyWith<$Res>
    implements $BirdColorDtoCopyWith<$Res> {
  factory _$$_BirdColorDtoCopyWith(
          _$_BirdColorDto value, $Res Function(_$_BirdColorDto) then) =
      __$$_BirdColorDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$_BirdColorDtoCopyWithImpl<$Res>
    extends _$BirdColorDtoCopyWithImpl<$Res, _$_BirdColorDto>
    implements _$$_BirdColorDtoCopyWith<$Res> {
  __$$_BirdColorDtoCopyWithImpl(
      _$_BirdColorDto _value, $Res Function(_$_BirdColorDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_BirdColorDto(
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
class _$_BirdColorDto implements _BirdColorDto {
  _$_BirdColorDto({this.id, this.name});

  factory _$_BirdColorDto.fromJson(Map<String, dynamic> json) =>
      _$$_BirdColorDtoFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'BirdColorDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BirdColorDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BirdColorDtoCopyWith<_$_BirdColorDto> get copyWith =>
      __$$_BirdColorDtoCopyWithImpl<_$_BirdColorDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BirdColorDtoToJson(
      this,
    );
  }
}

abstract class _BirdColorDto implements BirdColorDto {
  factory _BirdColorDto({final String? id, final String? name}) =
      _$_BirdColorDto;

  factory _BirdColorDto.fromJson(Map<String, dynamic> json) =
      _$_BirdColorDto.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_BirdColorDtoCopyWith<_$_BirdColorDto> get copyWith =>
      throw _privateConstructorUsedError;
}
