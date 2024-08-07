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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpeciesDto _$SpeciesDtoFromJson(Map<String, dynamic> json) {
  return _SpeciesDto.fromJson(json);
}

/// @nodoc
mixin _$SpeciesDto {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get latName => throw _privateConstructorUsedError;

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
  $Res call({String id, String? name, String? latName});
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
    Object? id = null,
    Object? name = freezed,
    Object? latName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      latName: freezed == latName
          ? _value.latName
          : latName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpeciesDtoImplCopyWith<$Res>
    implements $SpeciesDtoCopyWith<$Res> {
  factory _$$SpeciesDtoImplCopyWith(
          _$SpeciesDtoImpl value, $Res Function(_$SpeciesDtoImpl) then) =
      __$$SpeciesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? name, String? latName});
}

/// @nodoc
class __$$SpeciesDtoImplCopyWithImpl<$Res>
    extends _$SpeciesDtoCopyWithImpl<$Res, _$SpeciesDtoImpl>
    implements _$$SpeciesDtoImplCopyWith<$Res> {
  __$$SpeciesDtoImplCopyWithImpl(
      _$SpeciesDtoImpl _value, $Res Function(_$SpeciesDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? latName = freezed,
  }) {
    return _then(_$SpeciesDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      latName: freezed == latName
          ? _value.latName
          : latName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpeciesDtoImpl implements _SpeciesDto {
  _$SpeciesDtoImpl({required this.id, this.name, this.latName});

  factory _$SpeciesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeciesDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String? name;
  @override
  final String? latName;

  @override
  String toString() {
    return 'SpeciesDto(id: $id, name: $name, latName: $latName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeciesDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latName, latName) || other.latName == latName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, latName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeciesDtoImplCopyWith<_$SpeciesDtoImpl> get copyWith =>
      __$$SpeciesDtoImplCopyWithImpl<_$SpeciesDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeciesDtoImplToJson(
      this,
    );
  }
}

abstract class _SpeciesDto implements SpeciesDto {
  factory _SpeciesDto(
      {required final String id,
      final String? name,
      final String? latName}) = _$SpeciesDtoImpl;

  factory _SpeciesDto.fromJson(Map<String, dynamic> json) =
      _$SpeciesDtoImpl.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  String? get latName;
  @override
  @JsonKey(ignore: true)
  _$$SpeciesDtoImplCopyWith<_$SpeciesDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
