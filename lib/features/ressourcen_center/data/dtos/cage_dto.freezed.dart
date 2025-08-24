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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CageDto _$CageDtoFromJson(Map<String, dynamic> json) {
  return _CageDto.fromJson(json);
}

/// @nodoc
mixin _$CageDto {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get depth => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;

  /// Serializes this CageDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CageDtoCopyWith<CageDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CageDtoCopyWith<$Res> {
  factory $CageDtoCopyWith(CageDto value, $Res Function(CageDto) then) =
      _$CageDtoCopyWithImpl<$Res, CageDto>;
  @useResult
  $Res call(
      {String id,
      String? name,
      String? description,
      int? width,
      int? height,
      int? depth,
      String? user});
}

/// @nodoc
class _$CageDtoCopyWithImpl<$Res, $Val extends CageDto>
    implements $CageDtoCopyWith<$Res> {
  _$CageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? depth = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CageDtoImplCopyWith<$Res> implements $CageDtoCopyWith<$Res> {
  factory _$$CageDtoImplCopyWith(
          _$CageDtoImpl value, $Res Function(_$CageDtoImpl) then) =
      __$$CageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? name,
      String? description,
      int? width,
      int? height,
      int? depth,
      String? user});
}

/// @nodoc
class __$$CageDtoImplCopyWithImpl<$Res>
    extends _$CageDtoCopyWithImpl<$Res, _$CageDtoImpl>
    implements _$$CageDtoImplCopyWith<$Res> {
  __$$CageDtoImplCopyWithImpl(
      _$CageDtoImpl _value, $Res Function(_$CageDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? depth = freezed,
    Object? user = freezed,
  }) {
    return _then(_$CageDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CageDtoImpl implements _CageDto {
  _$CageDtoImpl(
      {required this.id,
      this.name,
      this.description,
      this.width,
      this.height,
      this.depth,
      this.user});

  factory _$CageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CageDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final int? depth;
  @override
  final String? user;

  @override
  String toString() {
    return 'CageDto(id: $id, name: $name, description: $description, width: $width, height: $height, depth: $depth, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CageDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, width, height, depth, user);

  /// Create a copy of CageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CageDtoImplCopyWith<_$CageDtoImpl> get copyWith =>
      __$$CageDtoImplCopyWithImpl<_$CageDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CageDtoImplToJson(
      this,
    );
  }
}

abstract class _CageDto implements CageDto {
  factory _CageDto(
      {required final String id,
      final String? name,
      final String? description,
      final int? width,
      final int? height,
      final int? depth,
      final String? user}) = _$CageDtoImpl;

  factory _CageDto.fromJson(Map<String, dynamic> json) = _$CageDtoImpl.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  int? get width;
  @override
  int? get height;
  @override
  int? get depth;
  @override
  String? get user;

  /// Create a copy of CageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CageDtoImplCopyWith<_$CageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
