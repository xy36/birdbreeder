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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BirdColorDto _$BirdColorDtoFromJson(Map<String, dynamic> json) {
  return _BirdColorDto.fromJson(json);
}

/// @nodoc
mixin _$BirdColorDto {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;

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
  $Res call({String id, String? name, String? user});
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
    Object? id = null,
    Object? name = freezed,
    Object? user = freezed,
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
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BirdColorDtoImplCopyWith<$Res>
    implements $BirdColorDtoCopyWith<$Res> {
  factory _$$BirdColorDtoImplCopyWith(
          _$BirdColorDtoImpl value, $Res Function(_$BirdColorDtoImpl) then) =
      __$$BirdColorDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? name, String? user});
}

/// @nodoc
class __$$BirdColorDtoImplCopyWithImpl<$Res>
    extends _$BirdColorDtoCopyWithImpl<$Res, _$BirdColorDtoImpl>
    implements _$$BirdColorDtoImplCopyWith<$Res> {
  __$$BirdColorDtoImplCopyWithImpl(
      _$BirdColorDtoImpl _value, $Res Function(_$BirdColorDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? user = freezed,
  }) {
    return _then(_$BirdColorDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BirdColorDtoImpl implements _BirdColorDto {
  _$BirdColorDtoImpl({required this.id, this.name, this.user});

  factory _$BirdColorDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BirdColorDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String? name;
  @override
  final String? user;

  @override
  String toString() {
    return 'BirdColorDto(id: $id, name: $name, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BirdColorDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BirdColorDtoImplCopyWith<_$BirdColorDtoImpl> get copyWith =>
      __$$BirdColorDtoImplCopyWithImpl<_$BirdColorDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BirdColorDtoImplToJson(
      this,
    );
  }
}

abstract class _BirdColorDto implements BirdColorDto {
  factory _BirdColorDto(
      {required final String id,
      final String? name,
      final String? user}) = _$BirdColorDtoImpl;

  factory _BirdColorDto.fromJson(Map<String, dynamic> json) =
      _$BirdColorDtoImpl.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  String? get user;
  @override
  @JsonKey(ignore: true)
  _$$BirdColorDtoImplCopyWith<_$BirdColorDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
