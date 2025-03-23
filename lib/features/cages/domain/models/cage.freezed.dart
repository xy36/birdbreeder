// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Cage {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get depth => throw _privateConstructorUsedError;

  /// Create a copy of Cage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CageCopyWith<Cage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CageCopyWith<$Res> {
  factory $CageCopyWith(Cage value, $Res Function(Cage) then) =
      _$CageCopyWithImpl<$Res, Cage>;
  @useResult
  $Res call(
      {String id,
      String? name,
      String? description,
      int? width,
      int? height,
      int? depth});
}

/// @nodoc
class _$CageCopyWithImpl<$Res, $Val extends Cage>
    implements $CageCopyWith<$Res> {
  _$CageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Cage
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CageImplCopyWith<$Res> implements $CageCopyWith<$Res> {
  factory _$$CageImplCopyWith(
          _$CageImpl value, $Res Function(_$CageImpl) then) =
      __$$CageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? name,
      String? description,
      int? width,
      int? height,
      int? depth});
}

/// @nodoc
class __$$CageImplCopyWithImpl<$Res>
    extends _$CageCopyWithImpl<$Res, _$CageImpl>
    implements _$$CageImplCopyWith<$Res> {
  __$$CageImplCopyWithImpl(_$CageImpl _value, $Res Function(_$CageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Cage
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
  }) {
    return _then(_$CageImpl(
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
    ));
  }
}

/// @nodoc

class _$CageImpl implements _Cage {
  _$CageImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.width,
      required this.height,
      required this.depth});

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
  String toString() {
    return 'Cage(id: $id, name: $name, description: $description, width: $width, height: $height, depth: $depth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.depth, depth) || other.depth == depth));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, width, height, depth);

  /// Create a copy of Cage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CageImplCopyWith<_$CageImpl> get copyWith =>
      __$$CageImplCopyWithImpl<_$CageImpl>(this, _$identity);
}

abstract class _Cage implements Cage {
  factory _Cage(
      {required final String id,
      required final String? name,
      required final String? description,
      required final int? width,
      required final int? height,
      required final int? depth}) = _$CageImpl;

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

  /// Create a copy of Cage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CageImplCopyWith<_$CageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
