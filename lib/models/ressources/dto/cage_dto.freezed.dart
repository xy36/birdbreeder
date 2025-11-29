// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cage_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CageDto {
  String get id;
  String? get name;
  String? get description;
  int? get width;
  int? get height;
  int? get depth;
  String? get user;

  /// Create a copy of CageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CageDtoCopyWith<CageDto> get copyWith =>
      _$CageDtoCopyWithImpl<CageDto>(this as CageDto, _$identity);

  /// Serializes this CageDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CageDto &&
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

  @override
  String toString() {
    return 'CageDto(id: $id, name: $name, description: $description, width: $width, height: $height, depth: $depth, user: $user)';
  }
}

/// @nodoc
abstract mixin class $CageDtoCopyWith<$Res> {
  factory $CageDtoCopyWith(CageDto value, $Res Function(CageDto) _then) =
      _$CageDtoCopyWithImpl;
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
class _$CageDtoCopyWithImpl<$Res> implements $CageDtoCopyWith<$Res> {
  _$CageDtoCopyWithImpl(this._self, this._then);

  final CageDto _self;
  final $Res Function(CageDto) _then;

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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      depth: freezed == depth
          ? _self.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [CageDto].
extension CageDtoPatterns on CageDto {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CageDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CageDto() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CageDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CageDto():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CageDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CageDto() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String? name, String? description, int? width,
            int? height, int? depth, String? user)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CageDto() when $default != null:
        return $default(_that.id, _that.name, _that.description, _that.width,
            _that.height, _that.depth, _that.user);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String? name, String? description, int? width,
            int? height, int? depth, String? user)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CageDto():
        return $default(_that.id, _that.name, _that.description, _that.width,
            _that.height, _that.depth, _that.user);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String? name, String? description, int? width,
            int? height, int? depth, String? user)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CageDto() when $default != null:
        return $default(_that.id, _that.name, _that.description, _that.width,
            _that.height, _that.depth, _that.user);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CageDto implements CageDto {
  _CageDto(
      {required this.id,
      this.name,
      this.description,
      this.width,
      this.height,
      this.depth,
      this.user});
  factory _CageDto.fromJson(Map<String, dynamic> json) =>
      _$CageDtoFromJson(json);

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

  /// Create a copy of CageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CageDtoCopyWith<_CageDto> get copyWith =>
      __$CageDtoCopyWithImpl<_CageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CageDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CageDto &&
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

  @override
  String toString() {
    return 'CageDto(id: $id, name: $name, description: $description, width: $width, height: $height, depth: $depth, user: $user)';
  }
}

/// @nodoc
abstract mixin class _$CageDtoCopyWith<$Res> implements $CageDtoCopyWith<$Res> {
  factory _$CageDtoCopyWith(_CageDto value, $Res Function(_CageDto) _then) =
      __$CageDtoCopyWithImpl;
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
class __$CageDtoCopyWithImpl<$Res> implements _$CageDtoCopyWith<$Res> {
  __$CageDtoCopyWithImpl(this._self, this._then);

  final _CageDto _self;
  final $Res Function(_CageDto) _then;

  /// Create a copy of CageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? depth = freezed,
    Object? user = freezed,
  }) {
    return _then(_CageDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _self.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      depth: freezed == depth
          ? _self.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
